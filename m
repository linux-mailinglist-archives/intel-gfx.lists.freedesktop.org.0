Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B74F5AD7035
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C5A10E827;
	Thu, 12 Jun 2025 12:24:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dBxOAjIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F3410E820;
 Thu, 12 Jun 2025 12:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749731047; x=1781267047;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=/zFu/h/yY3wptgrTw/X6p12PKb/JkouEw7wjjjhFaU0=;
 b=dBxOAjIn/dIjvcRzDG71sVqEn2KjYKhNAgnfrEovAy0XK5vxtTAEmnRy
 1lOk+vkruopfpc1UDVbjK2tnp10RMoIch/MFfun5qLjlvZz95+GQcl+Ck
 I5JX386xNbOLbIIWFxeQMHP3rIaaFPbqJ5Z7r/DmDfceQDWHBTm6qkc+7
 TMruXn1zlfXAmbTtcTMfldT770lncDOqRpEtp9B/thQ1Uk+f9i7/FDyKb
 WR0zU/dhITA3gfr1BgvMlSPENt6G3lwLhTLGVSYAh9lTkPpolJprcHRFp
 k44htg3lfx9qZ87yUBrF/ZtHubFINF0bZXGlaWEoL1/XWpZmSB5phBrKJ Q==;
X-CSE-ConnectionGUID: Y6nJ2HWeQzadN81kozALEA==
X-CSE-MsgGUID: FQ0ae0SaSDutvYTCybzWdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55709884"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="55709884"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:24:07 -0700
X-CSE-ConnectionGUID: ZBtuqI6FRJqjHXV6IuDJPw==
X-CSE-MsgGUID: 8dMa30LESce1nuPj8C/MSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="147354480"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:24:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:24:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 05:24:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.73) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 05:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ntqjAaHe+e4ltCk2VetzXJIZskipHR3mAMMD9xSnRBDLVoxEHPtg1+tqMs4aQD6YDsZk/ec9RtDV5BTLuzN9liRKtwSVqnAXhWQd0aCvKOSmEtPcyVZDq3WEtQS2aJYew0dj3jw/aRH1yzmr6dSTKFDlvFZvb6Ou6268WQXkyNs9zVHUoi4uTPm6G1ChXGfdDA7I64ttnrbjpSBMeVqlt0JNPA6NJK6LIGR9n/yM4pJ65ntwVbg/WG8aY0AEw4ALfevagUSCxapHOa/Pbgh5gjilGS7QRPDhweBT3ZWaboLi7Pt9t+wWG/d21y5RJgCO5gTAALrkzyTu4a22bz0ABQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8G/TqJH1YBCFnoE1IRv1vZw7M3qToHJwRznYQPwd25E=;
 b=Hb6mLwgo8UZNGfw0hBEmblueKi2KR8k+3Poqw2qrViQzvTaJNaCm9E2M8W3r+F4tKyWacPg3n8x+ZAHuCiFaOnoz5NpNEB5t7G+zBzTaMMqxmw1HDSSe7A6gwaytS7YDmj8Nu4OtcnxaYIl5L8/O88b/97SgsJp330FlYgCRPnhXUtrDQh7uxYCntZH+yBxSvALuJhRyoXQ3CExqGXlTOvt2GioTRBlEhIZnE/buLKBQwS0QU7CZ2TGV/aOiMQNn5fZbjaQm2R41mQh0Bspgj9X1RZ+/I89BQ8l1+HWeciTQfYKDHOKhtXLntFw+xb0nXDvnWk3NY4XsMVnU3DrLlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Thu, 12 Jun
 2025 12:24:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 12:24:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <140b888883c04a1b12bc573045fc22100267eb5a.1749728173.git.jani.nikula@intel.com>
References: <cover.1749728173.git.jani.nikula@intel.com>
 <140b888883c04a1b12bc573045fc22100267eb5a.1749728173.git.jani.nikula@intel.com>
Subject: Re: [RESEND 4/5] drm/i915/plane: rename intel_atomic_check_planes()
 to intel_plane_atomic_check()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Date: Thu, 12 Jun 2025 09:23:56 -0300
Message-ID: <174973103611.14553.608536162458328926@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0179.namprd03.prod.outlook.com
 (2603:10b6:303:8d::34) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: b920ce2b-2635-459c-f582-08dda9ac02f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eTZ0MkZIczc4VlNSSnZPQTUxRkZGNSt1Skh4aEkzUnVucEpQbzFpV0g2cmp0?=
 =?utf-8?B?bWpmWVNIbmc0ZnNWK2dvUmtaM2NWMTd5OTl0KzFzbTEwYlVGRmdYaG44ZTM3?=
 =?utf-8?B?YjhoUEgxSlg1OUJKaDN2RHFIVlM0Q29PUTFqam9FSjROU0lKRk1IaVNNNmR2?=
 =?utf-8?B?MUdNYTBteHJSNGx2aXJzK2tDdi9UWUdTa2Y4eFpNSlN4aG1PSU9yUDhnaXM3?=
 =?utf-8?B?U0VqOForSnpNZVBMYUdWMkVxQmVJNi9rQ1REZjRLZVVMQTRyNmlSamZub0VX?=
 =?utf-8?B?NHJpVFhUU05hMWxudlJlb3dsMnBzTzdydmRZMUx0cUlJVSszZzUvT252ZThF?=
 =?utf-8?B?U0xZbkZlQmNoMFFqZjg5UkNFL0MvN2U2WmRKeUVLYkFiem8yYlFwZGdqejU3?=
 =?utf-8?B?R1Q1OUZlS3lwSEE1ZGs5cDJtVEpCc1VpZEhadS9BcmtlajhFR29KTTRLQ2J2?=
 =?utf-8?B?NjBXVHIxODN6MUR0OVp5R0hxaUw1WnJ3MGVxR2VNcnFDVWtkcU1OTVorSDlN?=
 =?utf-8?B?ckd1cjQ3RDhVUnUvNnRLSWp4L3V4dHd6RlRSNlFKKzZmdkpCUVk5R0tUdi9o?=
 =?utf-8?B?TWd5S2YxaENFWHNyenFxa2I4ZlRLdm82VkdKaU1TeFNiOWJBd3EyWDhIZjJX?=
 =?utf-8?B?YzE3L1hKTGRZMG1jVFlhTXdlcWFlMUdVMXZSTlVuTTI2aHlHekRDbzFudGRl?=
 =?utf-8?B?bXR4VjRFTy9aakRHMTFWVWlhc2dCTUZWNXM5K2Rqc3FhK1FiQ0M4YUlabnpq?=
 =?utf-8?B?WlZVRUM2NTIrMkQ2S2N3VUxyYzhDSWF0alZESXpmc0Nlc0tmY0VhM1RvTE5Q?=
 =?utf-8?B?Tkd6bTNNZjNHODM2bjgxTE13RkZmUW4xeFNVMXM0UGkxaUc0UEI3Tm5lVGlR?=
 =?utf-8?B?VHc1SGRPUlRvUUhmS0lhNDQ2RXZzUDdFWEpYRVBmc0NvSHJKOHdYd1B5TVRH?=
 =?utf-8?B?ekRRWHJtdHdZOUhsdlFBaHpvaTVJaUVrVXJYcUlsTHhyTkhhaXVBMVJnQUN3?=
 =?utf-8?B?ZnFoMnNqbVBHRDIrQzJQclh6L3hyYy9iTTNHQlJMbFVXa3FyOFZielhNQUhC?=
 =?utf-8?B?Y1l2STJvMlhoMnpXMGtnMnNSbUhCZW50RVgxZndYa2VScXJzQ21PWWhub2Vw?=
 =?utf-8?B?YVBxaHJKZFBVUGFwbW9jUEpaWjZVTFV5NSs5NThDZThzeTlZU1hSSE5VdWpM?=
 =?utf-8?B?Q25yN0Mrd05QT3hrVzFaNDY1NFc3NVpjaVlMWHdpVTBwNE9GOGpxcTlIeHgw?=
 =?utf-8?B?bHh5L3M4YnBJdVFzRDBCZGM0TFZMc2xIZnpPR0lZSmlKVjc1RFd3QkFKUnRz?=
 =?utf-8?B?czd4QmQ1bEFWeUtUMEw1OGdUbGhKeUpseWpJckF3VzBsSnlxdnRSYTduWmZW?=
 =?utf-8?B?emNCWWYxbFA1eXYvR3RrYUMzdTNYS0RkbXg3YzZZN0s0Q215YlNIVkM5dno4?=
 =?utf-8?B?WHdjbnZIWFJoekZzMDNFaTVqejhYcFJqMUw5aDBQWHVYQ3NHc09ZTnduSmhN?=
 =?utf-8?B?NUhFS2IwSWtQRGhodFpjNm5TODhQcy82YnJ0aVBmNUIxR1JuNTJIWTVUOW9x?=
 =?utf-8?B?UzdKNnI4Uk04V1Q2cHZFOEJDeGZtbVgzbWNsUG8wV2VrWlNNK1RzUXBpaUp2?=
 =?utf-8?B?MktoZHZTMzVRcjlKK2k2UU1aWWlDTlN4aUJzenJQOXIrKzllT3JrQnMrS3VB?=
 =?utf-8?B?Qkl3MnpTLzliblFpTFFUV01PTW5XOGxKVklkTHp6S2dST2hpRmhMUWxqcVJL?=
 =?utf-8?B?Z2dXOFBLeTY0Mnpaa1FtanBqS0tPNURWNXAwN2hWQk1vVXpXUisrcnBnTkph?=
 =?utf-8?B?QmM0SDRjNWJtOFFxTUp3SDJFN0xYV0RGSWVPY3RFdHlST2gxODgxd0lXVjlo?=
 =?utf-8?B?RVY3a255bWFLMTJpekhsL1N0UjZJU05hUzNpTkEzV1FzOUFkTkg2Q2NCZ1Vq?=
 =?utf-8?Q?YUAN3YBW9xQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEJxUXpqbDV2cGhNWmIvVkhSRWQzdSswRVpTdkFXdkdFeEdmUmliYXlDeW1B?=
 =?utf-8?B?N3pEVjRXaWtPK1FXYkhHdXRvcm5aOXRvZ2lGVW9iSnBlZTVRaldBaGg5RlNS?=
 =?utf-8?B?ckhtMlhzc0VoSnlueXRiMjlyZDdxMW1Nc3NDNTlRa05OWVNQQStjc0N0dDRZ?=
 =?utf-8?B?Y2IyTk5GWi9yKzhENzFGTWZpeExlZGk5c0xnbTJ1TWQ0Nm9ROUZEMkV6UkM3?=
 =?utf-8?B?SHJhTkFkRTNFWU5yNFB6akU3bmg2QVZiYWk3aS9xajEvR2xidlVubG9yNXVo?=
 =?utf-8?B?WkEzbk5NdkhwQnZUQ2dzMFdnU1Y1dDNjdExmVGw0ZlFFSTcvQ29LbnpqVldk?=
 =?utf-8?B?S0JyQlJoc2ZOK0I3amMrN2wxTWhaU2tUMnRBVjVSSTEvbXZNSCswSk5mVDUx?=
 =?utf-8?B?ZWVGeGExQ1c5aW5rUlZoZWs3bkJ3cGd3dVhHdlc1aG55SmRqcnFRbUlmVXd0?=
 =?utf-8?B?WUp3V2ZlOC9kQVNON0NhVFQ1aE5WTDdtaFdZRGQwcUlxYXZyZ1QrZzZ4cHhB?=
 =?utf-8?B?Tzd0eWNmY0VPNEhHa3JQMytDWlpqd0x1RXNKcUppMU9HMFpqUTdhSVgrNExP?=
 =?utf-8?B?Y2ZudGJXZ0k2ZExkTnlFSFl4cTRKUmZlZlFRV1RoSk1reVhmZkxxSnlDVklN?=
 =?utf-8?B?a0NlcHFhNFBFYUVkMXYwL0txQkdmYXZwNFFQNjZZY2d1bmhGMERkVkhJdWlT?=
 =?utf-8?B?RGJPek1oN0ZHLzQyejFPNyt6eUkwV1VYN2I0aHVRclJyYjV0U2N4V0QrMklm?=
 =?utf-8?B?aVVDTytSRktCdDh3Wk9RcUx4L3lsOUZlRWt5L1FjNXU4aUlOdDNVTWlXbmlG?=
 =?utf-8?B?TUNnVDY5RmVVM0NLWHhJdVl0ZG5QbDZFclVaeU9FSTlVdnhOdWFtN21sUW5w?=
 =?utf-8?B?VDhNdTAzaXpzOExkVGNkdFlpNVM5bnRBSGoxTkdjbSs5WldQNFNMVEdLY0hq?=
 =?utf-8?B?RFBzM2pzS0lCVEFRb2RiQlYwc1Ric2QxekJJZmRnWllmbDdvWW0vc241d2hD?=
 =?utf-8?B?ZndxVXdOMEdranhHOE1aL2YxbExlVkE1MnR4SStqd2ZxSUJsajg3dlpkajl3?=
 =?utf-8?B?RzBBWFhEM040Vy9oMTY5VHZkNlZMc0h1TitFTWw3ZGlRalNYUGdhMlNrTkJI?=
 =?utf-8?B?eWp4bUF5THNZYWF2NHYvY24yZEdlNDFPQ3p0dmE5MHZBOWxXMTA5NDdQMk1H?=
 =?utf-8?B?UjFhWUdtRGkwZm8xVG1SRXlkRlBMMWxsMCsybmhKYWc5d1VvMmVmQUJjSVRV?=
 =?utf-8?B?bGJZcmZsUC9iMEZrQTVXOWE4UlQrNDJKbzF6TEVlQkZ4ZTNnRkh4R2lDanNw?=
 =?utf-8?B?KzlJYnQ5WkNLaE5iVU1FcVV3WE5raDFBcnRibDNVNUJhUFIwZ1BTUGtFYndp?=
 =?utf-8?B?Q3NZRmVHTDBjM1hGdERmNG5nS1hVNmdxc21DMGt5NGI5SzRERjJGVDVkb3A3?=
 =?utf-8?B?Tk9aSUEzdlpoTlZCMk1kd1NCVWtLY2h2OHBXcWt6aTZNc0FWQlN0eWZucENq?=
 =?utf-8?B?S3dmNzJ1K1dZN2ZJZHo0bkxRUHpwSm8yajY5aHA3T1djVnRPNUkzL3BRL041?=
 =?utf-8?B?YmZIcFNpbnAvUGliWGs3TTV1MHV3QWJ1Y2lSaEJyNWpmVnpJMnpMS2xmaXlT?=
 =?utf-8?B?MnRDRUV1TmczbHlrNjdrRDNnWkVsNFFOckljdlZsL05BVXV3dXZ0V1owQjRX?=
 =?utf-8?B?UU56MmI3ZUR2Q1M4S0lOZmpCVDk2SU1rbHZLOG9DT2pUb2FhQVZCQ01JRGRr?=
 =?utf-8?B?TWs0QklnNWZDRVJFbElHNVpVN05SOFVhdndhbkY1cUVSbU1vYjVxaHhNMkQz?=
 =?utf-8?B?SXUzckhCeFpRN2JDUUVlWmVDdUxCTXZPUmFzVTB1dVdMelNxL3JHVFJ3RzFw?=
 =?utf-8?B?WVQzYmpCMGtwdUFqdGdocTc1Z0hSRVh5NTNiM0JxZnhuYXI3V21WWUs4R3VX?=
 =?utf-8?B?OUZqMXA0c2QvY3QvZ1JoNCtUcmQxbCtHdzlxSFpNODllUk84ZFljK3JpNzll?=
 =?utf-8?B?NzBQd1hXWjgxbjY1clRoZTAvMmdTNWhPVEJLTi9pSnhYOHNQcElOSjJRZGFp?=
 =?utf-8?B?MW12M2xYd0lmWnVOc0JRdEN4RFJoakxzM2sxRmlHci9CRk9neTlkdlgzSjFO?=
 =?utf-8?B?Yjd4MW5UOXhuaHRFZG9RdnJyRGpqR0w0eE9vTTJ5KzRBUGFtNnIrdjlLdTBz?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b920ce2b-2635-459c-f582-08dda9ac02f4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 12:24:00.7651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vdvmACeq0w+EAN+yWySpbvwCBCJtDY/bec4ePKsktdI11DIksuUo2m0vgXEZnQg0rTsjdRpNrK1exGpV0plVVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2025-06-12 08:37:10-03:00)
>Align with all the other atomic check functions.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> drivers/gpu/drm/i915/display/intel_plane.c   | 2 +-
> drivers/gpu/drm/i915/display/intel_plane.h   | 2 +-
> 3 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index acc03b4c9e89..bd81ff9e3854 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -6447,7 +6447,7 @@ int intel_atomic_check(struct drm_device *dev,
>                 goto fail;
>         }
>=20
>-        ret =3D intel_atomic_check_planes(state);
>+        ret =3D intel_plane_atomic_check(state);
>         if (ret)
>                 goto fail;
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/=
i915/display/intel_plane.c
>index fbbe957d3f04..2ac7a4e655f5 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.c
>+++ b/drivers/gpu/drm/i915/display/intel_plane.c
>@@ -1528,7 +1528,7 @@ static int intel_add_affected_planes(struct intel_at=
omic_state *state)
>         return 0;
> }
>=20
>-int intel_atomic_check_planes(struct intel_atomic_state *state)
>+int intel_plane_atomic_check(struct intel_atomic_state *state)
> {
>         struct intel_display *display =3D to_intel_display(state);
>         struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/=
i915/display/intel_plane.h
>index 4d69a868265c..5cb995b2940f 100644
>--- a/drivers/gpu/drm/i915/display/intel_plane.h
>+++ b/drivers/gpu/drm/i915/display/intel_plane.h
>@@ -85,7 +85,7 @@ void intel_plane_init_cursor_vblank_work(struct intel_pl=
ane_state *old_plane_sta
>                                          struct intel_plane_state *new_pl=
ane_state);
> int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>                                      struct intel_crtc *crtc);
>-int intel_atomic_check_planes(struct intel_atomic_state *state);
>+int intel_plane_atomic_check(struct intel_atomic_state *state);
>=20
> u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
> bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
>--=20
>2.39.5
>
