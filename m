Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12910CEB48D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 06:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E140A10E977;
	Wed, 31 Dec 2025 05:11:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOQ84WjZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B9510E770;
 Wed, 31 Dec 2025 05:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767157869; x=1798693869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hhOsmbrgXoVkrDcOlO4gH2gXF595fjxtErJQz3cBEfI=;
 b=HOQ84WjZXKaCqPORUbcxGp34zlsUFXBJSKdXV9gZIYdgi3VeQpfa4z3D
 tV4EtUUqVnI7lZgAhPeJ3+sNt19i4KYExrpKvstvjQXkTzDa2E8KvN0uz
 HwIiTrEnYR1BCmirO+54k1guFK1TpdM6onYlx7DKTv+rUKo41z2soj5tr
 p4U5t9Wp24iGkPiKgsXteHdMPB/ncco9QY/9i3rjVjofGG5iG6qtBpk3y
 3W4eBGyzfGa5QQademCRZ0FVqKvHLgfWvQdYC3w09/THsw1fWhsvli1mk
 EX4Z4WED7Wag4IA4vvvBSBVVcOtkzDbDZKpVhjLgTPZS9vfzdMSCKTcbF Q==;
X-CSE-ConnectionGUID: oYnNB4QdQx+qPOWkL5Ir6Q==
X-CSE-MsgGUID: dmof6x5/TKuAY8R7LkjVAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="72352872"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="72352872"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 21:11:08 -0800
X-CSE-ConnectionGUID: 7PWq+ztTSPCXx88Y5C2EIw==
X-CSE-MsgGUID: Qe+W4uXZSM2f1deT7rCKhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="201610752"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 21:11:07 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 21:11:06 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 30 Dec 2025 21:11:06 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 21:11:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X6NbbWRjYd2q1nlYH5qoLdKMjV+eQk7veWPDPXoh9fIGOcaGpoKoadQjM9vUVQtS58NF3+61ZYN2QTHWmbnnQwXkjrBrb8NydJWUv7ctLblL+fLx1l6subBV3YHJtaJsA+kVCY8RIpQ8sGcpSxVoyCiB107HEfeI4Z6EAn0WYGMqYzpuNaGzW47bxy8heD+VkmzcX2qQhoGtiT12fDttDcwuYBeQ9VwI1XgV+egRaq1cw/Cp9l7Wa1eBKbKPuNd+XYv/GNdoEhgoXm9nTtAu2mu7BNAJV7ARX2cs9ktQA9RUOmYbratVFzxAooRJonricCpQcUYoVohjpMKk8nCZZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hhOsmbrgXoVkrDcOlO4gH2gXF595fjxtErJQz3cBEfI=;
 b=FeD8GPV9g/7UJJrjGOS87fprR3wDYCx3usAQ5z7ygAds3jJTFCNTB71GarQWGzaeWmVoPXEXMuueKtDSRzBNZPXLBcIIAi84gWjqmXFWRAVgv826pQoB46dVg/hzynoC1ntzxG2fcGuR+eM9SOFF8vT2D8nqcKFDk9rVkhwRHcB07S9rTOMXo9gEOBrpLxwJQvk9pAUsyhk5KLwzm1qIwgD9gOOu9AtzwDMIzcMro+3SrpGmKmwW/SHpESjSVNu9JefTz0x3YljZ+6xTzMUpO/QpVTaloD3H6BZ2u9HCdes8tQGEcDydUhVpuqyQ/ZQuU+zlm8A4zSBCYgEXQDghhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB5948.namprd11.prod.outlook.com
 (2603:10b6:806:23c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Wed, 31 Dec
 2025 05:10:59 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9478.004; Wed, 31 Dec 2025
 05:10:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
Thread-Topic: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
Thread-Index: AQHceWbF4oo2i3tJO02PD5RPqJa9fLU6TXwAgADmk7A=
Date: Wed, 31 Dec 2025 05:10:59 +0000
Message-ID: <DM3PPF208195D8DF5E9FF8C552BD4B63CDBE3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-3-suraj.kandpal@intel.com>
 <176710816443.18661.15779385817780893127@intel.com>
In-Reply-To: <176710816443.18661.15779385817780893127@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB5948:EE_
x-ms-office365-filtering-correlation-id: 70cac984-7bd0-4c50-c8bd-08de482afc80
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?N0RkL2ZJU3doMHV3UFpMWGtSbHdRdStSY1V5UWFONm9JeHdPY0RiMzRWSVVH?=
 =?utf-8?B?dDBuRmpBa2I3Q2VCdjN3TTU5WHBYV1NnT1lITXJWK3U0TVA2eGh6cnZ0RUVt?=
 =?utf-8?B?ajdmd0NjdXNTVldCS05HM1cvK2VMcW5sY1dvbnVySVlkb0tCOTVWd05rTlZM?=
 =?utf-8?B?WUhsN1Z3OVdaZGNTNDRPL0RBWUUvRGYwRnlPVU1aWk9XaEE3Q0pHQUc5OGJq?=
 =?utf-8?B?bjVBVkRsTXNWMWdXSzF5TXU5TUFhbGZuMGJtRVlyZjNZbjhSdCt3N09hbll5?=
 =?utf-8?B?V0NrWEpTRjM3WmxESEQwdVVzSGhtNEZycnRxUVZ5UDRYQVBOMjdsMTRENnk0?=
 =?utf-8?B?anl2Z2p3anNHRzVidGpRUTRZWUh5RW9jekk5N0l3UlQwMFdkc0Zjakt6NkZW?=
 =?utf-8?B?bVNYMHpvK1pHY3BEMXdkVmhXWGVMSkhPdXc0dVJ4U2FpaHluWG1ZZGFGajRy?=
 =?utf-8?B?MHBzSERoTW16YnZaa0RJcTZjS1UrS2Nodnh5TW5NMFM0WWthL1ZuNldTNksr?=
 =?utf-8?B?K09XUm5DRE9uNHBoWUg3Z2RUazVEcjcyTytHMlhHV0hnRlBQQ3pBNUd1SzZq?=
 =?utf-8?B?SkNtVUI5bGtPcE5ZV3lQajlTQmhFbm9TMjFGMHZ1RlJKa3docTVmUVFEYnNr?=
 =?utf-8?B?SzdESGFTTFppbkppVXUwYzl0dmNSNzVob0tJWWtwMlFmNnY4aVRFYWhFYUcy?=
 =?utf-8?B?aGJkQ0xROWhXY2F4Z01hZnB1Z3RobHNBQm9ZY3paWU5UNFVoUGRJTkFPbURp?=
 =?utf-8?B?L3dQdW1UTkp2QnNRY042VmhKemJhSWE3MTNRck5oQ24vc3JvbEVUZEdGSmE1?=
 =?utf-8?B?WTlta3FMUS9mTGtUVUtIUnhYTFN0YUNWbHl4U0xNYWRqbks3Q0FJeDlzZlQw?=
 =?utf-8?B?aEE3T0sxa0kzVVl2MU9ZUWlWMDNPQUZqdXp6dFNueFUxcklDa09OV1ZSblYz?=
 =?utf-8?B?S3NtcXA4UGZqNFJMWEdOMjhVYXk0WGFyeXR1Ynk4VTJkMHl6MzR5anozQThi?=
 =?utf-8?B?djcvdXVpb3lONFh6cFlsc1oyU2NQREk5cVM1cWpNUHp1VDFVcHBQQmpaeGcz?=
 =?utf-8?B?UmRMRTV3V2NVZ05QN29hd2d0MnAzVkt3R3VJZVJnZkNhd3h3Y0QwTkhTNXRP?=
 =?utf-8?B?eFVBeXdQTzFmd0V4Z3gyYWZOOWhjM21PVldERHVjdzV1RHhGbFIxUzhiZWFW?=
 =?utf-8?B?NDVIalZpeWNybVlNMWltV0NtQU5qVlZKejNoVmoyUFcrdFlMTzl4Rkl3dVVK?=
 =?utf-8?B?dzhNYnBuWk45d3JjZWJrYlFyYlQ4Wjh4VnNqSFl3RjA4ckU5Z1gwdElEbzFC?=
 =?utf-8?B?QlI1My9qM0RKNGlzWXBhdVIrQkRMa3NTTGFjWllMRktXekFHUnZxRGtqSjdE?=
 =?utf-8?B?TEVPSFp6TEtQdUZRSkhTajJuOGJGUTJURktCTWNBYmxiV2tLeHp2bjR4WTJR?=
 =?utf-8?B?c2dKdlZKa1c4Q2JNRVNSQ3FFazV5VHdpengyajB1U1l3eTBYTlRLdkIzLzBH?=
 =?utf-8?B?czFFVUxaTlFlRCtwZ2o0RDQ3UFpCRHh1REtWR1pjS00rWWNsR2dzK2tuckZy?=
 =?utf-8?B?c0ozM0JaR0xjMDJiN2RpSHkwb3Erc25CeU9qQWJXaEhZSkRiZGc4cWZ0RStS?=
 =?utf-8?B?bWRWZTJpbmk3WnhSdWVvdVlPSDc5VW45RThGUUJRMVptcWt4eVVyeE9aQXpV?=
 =?utf-8?B?cFdGbFVxNGM0NDdqYVRWQlhJbTJoQk00bHBCeHUvTGU4MXlieEY1dkpkOGMz?=
 =?utf-8?B?NnRGNTR2eSs5TTVSeEpCOWF3RHNOVDBCbml0M055Mi92RWtHdjFyUWRhdEtO?=
 =?utf-8?B?TnMzdTl3M2FDK1dVTFVKTStob2Z3THpEbjZzSm5TTkJTSmowMnYyMnc1TEpI?=
 =?utf-8?B?b3dWdW9IMitzaWliYlRqZHJiNkpIWG5yeERGMFJnbmRtb0RCWDREZjRZVW0z?=
 =?utf-8?B?bGJvdVhGRmtYWVB1SEtUT2NjckFhaWp3WW5qancvTFZYczFiajJRSVhobEZ2?=
 =?utf-8?B?YWtqcjRzcnFTWjF4R3BSTnNuU3RQUEI0bDZtV1dHYWt2L3N0NGpteDlpenRV?=
 =?utf-8?Q?n2ZLuV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzIrZXRENzVlV0tSN1U5YUd4RUJMNk9kT3VpUDFBWkxJMlVwWERRQ3Y2QTE1?=
 =?utf-8?B?bVErMFE2OUw5dC8xdnRqUCt6T2dPUzJXRUU0YjA2enlZK29qaHhBWGE0OEQ5?=
 =?utf-8?B?Uk5WcjdPY3JqaFFKYTFNNWNYRERhNVh2dzBQenpqTDNwQm9aZ3d5cUJjOEhs?=
 =?utf-8?B?cC9VakpRMTV5WWl2SjJxRkIwNHNLZmloRmxiT1QzOHpHZkIzTjVVbFlRdS9y?=
 =?utf-8?B?b2wzdnE1dkp6cE9jWDJ0STZoVUpTdnphS2N3YmdhY0h1Sk5jQ2llYlozOUpp?=
 =?utf-8?B?NFlCWW52d3JsZUdpNFFCL0NFa1lWT2dha3FyRUwvWjBJTEt6NUdxKzRRYno0?=
 =?utf-8?B?dy9YbVMwblJKS1FvbnZ1MzlrOTgxeWhnOFU1UHRKVWdOcGI1d29mMEh2ajJh?=
 =?utf-8?B?UlBuNlh6TDE1aDFsYk0vMUQwdXZENVRHUVk3KzdITGFuNSt0QkdWUmYvWklm?=
 =?utf-8?B?QmJEdVhGTGxiTWxWV0pxc3plWGU0WGw4SjBlU3hJV0Y1czZYbVlHcUtEMXFE?=
 =?utf-8?B?elZjb0FKVy9BTjhBNDE5SWZ0UFVxUGg5RW94NFlRN1hQOE53TVpUelFhQnk3?=
 =?utf-8?B?SXdORzYwVXZ3TkhKeEMvWmhWaGIzV0VJZjBlL0RHdVBLVTNzWlFZUURyV2dr?=
 =?utf-8?B?c2ZGNzZSTkVVYnVwdUpmM0Z0dHBGNXRIQld2Rm9oZlBsNklKOFkwWW5oOFNh?=
 =?utf-8?B?Sm5mdEEyMXhtSVFuZ1NXYjZaeElqc2RBZjJUaEwvRzRiQ0Q3djFVWXJaUHNu?=
 =?utf-8?B?S25abnUyTlZQaTVLRUwvQ2NsQS92cVFiaXU3TkJlUzkrYnV2YWFORkl3N0ZI?=
 =?utf-8?B?M0hyWUVoNUZGZUhEVUNLVVlUdHMvMUxsNkVGbHpPdHk3NU5yaWhOOWErVi9H?=
 =?utf-8?B?OWpmZGJVTmRkUzJxNHY2eVBpMEpjQ3FYK1BCN2JZU212NXR5VXhGZHg3d2tr?=
 =?utf-8?B?cDBud0FPaGFLUCtkbDVWaHFudTZsanRoZ0ZucjZwVWt0UktZaGpmdWNCaU91?=
 =?utf-8?B?OFBJU3dUZWtYeWNiUjVjb0VWb29yK3VpUEdBdTUzbUZaQ3o0Q1dHQVVmZy9n?=
 =?utf-8?B?UEtpeDI2ZE9HM2Qyb0JUNzFUcW9qeFVQS2RZQ0JtVEIwT05oOXV1cHA5OVpl?=
 =?utf-8?B?a2plR20rekhWVkcyM1J0M1hZSGJaZ1R1N2ZNNHcvd0VORG9UaXZTb1pDaFh1?=
 =?utf-8?B?NEpKb3E0ZityVEVBWTBDOUlUTzdBZURwaDRweVRWRUd5YXRzQ3RiQ3luajJI?=
 =?utf-8?B?cklyNjlQYXJSNmlTVUNWbUgvdGRXY3kzUFhLbUNmdlBlSklHZnlZbU5xQjEw?=
 =?utf-8?B?Sk1LcFR6K28zRUxLeE5LV1kyVWlZTlpEL0hsUjllbnpNWW1qVjJaVHpZQTN0?=
 =?utf-8?B?dUwvSVk4Y1hGOWhROFFsazI1VjZhUGY0YnFVaHhxdk9QYVJEZ0JGbW9sQ2Iz?=
 =?utf-8?B?VEV5VEZaUTlOR3RQNWVISFA4MVdUWGVPVVJ2Yys1d1d5SklkQ1o3OE82TDhI?=
 =?utf-8?B?d1ZRYUdzeVZtd01HdWlzT0sxdEorVzBqdDM4ei9BSHdqL21FVURYNStlaDBw?=
 =?utf-8?B?Y0NRaURRbTRCZ3A2SFdhemQybE14SFhocGd6TGFGQjFRcWt2ODFKbWNvN204?=
 =?utf-8?B?RDhpL2xlSEkxc1FyZno0dVpXbEtEck5Hdlh3dS9JZU5IRFo5UjdLeWxrZ2dQ?=
 =?utf-8?B?aTVYdHVOQ0lyRlN3MnJxR0RUZGdJVHNVNm9ZSlc4UUVPdXNLUmZUcDRoR3RG?=
 =?utf-8?B?RW9kN29TVVdGdC9rWGxlVmlVcktta09hbjFJdGp1WUtzWUR2eUt0MTZ0RXRy?=
 =?utf-8?B?NVVJVTFIb2NHZUk5dXloZXdEWkFMODRsUDROVy9uWnljRHNHQUZ6TnRNSlVW?=
 =?utf-8?B?Y3ZYQ2NsZVZRQk1OOUVFYmZsOWxTYnBLR3lzWkFmUDNFYk5RVGszUDRGNmYv?=
 =?utf-8?B?Y0JQOUErWnZKSldnNU1lRjJBd25vcVJZRlFHMXpYcFVYTXk0SCtteDE0Uzk4?=
 =?utf-8?B?dTJnNlRENzM2VGtQa3Y4ZHY5QkJnOHVuMnZSdUFiS0c4YjBrYUowWWV0dFVJ?=
 =?utf-8?B?ZVZ5ZFAwc1VmdlppZzFsbEZNdUJ5K2svd2RjOU5MYStQN0h6bUFaTmV4aWFv?=
 =?utf-8?B?STh5dm1nYmVTSmNmNGtCckx3eEF5SSsxdG5PTDBmOC9YZGhBUEhnWnlwd0Z4?=
 =?utf-8?B?SXNybjNSazRFQ2lxckNabGxseGtDVnpGYTd4SUtJRVBuOWRKaThwM3ZDYTkw?=
 =?utf-8?B?bTg2V3ZSS0ZzVGlYVDBJb2t0V044L3dTcnQ2ekVrR1ZNamIxYndHaU1BOEpB?=
 =?utf-8?B?TVlFRG1NK1owNHBCRzJHM1Q5SVJmT29kcWZXR2xXZnJKb3VFSVM2Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70cac984-7bd0-4c50-c8bd-08de482afc80
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2025 05:10:59.4777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWjZbqUTl3RwDrA9jX9VS8f4f/sKP9XbkQ0qhEoKH3Eczwv6gvllHm3BevlH0Djd57QTd7DsOqL+p0gutGqLfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
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

PiANCj4gUXVvdGluZyBTdXJhaiBLYW5kcGFsICgyMDI1LTEyLTMwIDA1OjMxOjQxLTAzOjAwKQ0K
PiA+TW92ZSB0aGUgc3RlcCB0byB0b2dnbGUgcG93ZXJkb3duIHNlcXVlbmNlIGNoYW5nZSBmb3Ig
SERNSSB0byBlbmFibGUNCj4gPmNsb2NrIGhvb2sgd2hlcmUgaXQgYmVsb25ncyBhY2NvcmRpbmcg
dG8gaXRzIHNlcXVlbmNlLg0KPiA+RG8gdGhlIHJlcXVpcmVkIGNoYW5nZXMgdG8gbWFrZSB0aGF0
IHdvcmsuDQo+IA0KPiBUaGlzIHNob3VsZCBwcm9iYWJseSBiZSBhIHNxdWFzaCBpbnRvIHRoZSBw
cmV2aW91cyBwYXRjaD8NCg0KU28gcmVhc29uIGZvciBzZXBhcmF0ZSBwYXRjaCBpcyB0aGF0IHRo
aXMgcmVxdWlyZXMgbWUgY2hhbmdpbmcgdGhlIGFyZ3VtZW50IG9mDQpjbG9jayBlbmFibGUgd2hp
Y2ggaXMgbm90IGJlY2F1c2Ugb2YgdGhlIHNhbWUgbG9naWNhbCByZWFzb24gdGhhdCBjaGFuZ2Vz
IGFyZSBiZWluZyBkb25lIGluIHBhdGNoIDEsDQpoZW5jZSBhIHNlcGFyYXRlIHBhdGNoIGZvciBj
aGFuZ2VzIHRoYXQgd2VyZSBicm91Z2h0IGFib3V0IGR1ZSB0byBhbm90aGVyIHJlYXNvbi4gSGFk
IHRoaXMgYmVlbiBqdXN0IG1vdmVtZW50DQpvZiBzdGVwIDEyIHRoZW4gSSB3b3VsZCBoYXZlIHNx
dWFzaGVkIHRoZW0uDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gDQo+IC0tDQo+IEd1
c3Rhdm8gU291c2ENCj4gDQo+ID4NCj4gPlNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1
cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+LS0tDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAzNyArKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+IDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
DQo+ID5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID5p
bmRleCBmM2JhYmEyNjRlODguLjVlZGQyOTNiNTMzYiAxMDA2NDQNCj4gPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4rKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+QEAgLTMyODEsMjEgKzMyODEs
NiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jeDBwbGxfZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiA+ICAgICAgICAgICovDQo+ID4gICAgICAgICBpbnRlbF9kZV93cml0
ZShkaXNwbGF5LCBERElfQ0xLX1ZBTEZSRVEoZW5jb2Rlci0+cG9ydCksDQo+ID5wb3J0X2Nsb2Nr
KTsNCj4gPg0KPiA+LSAgICAgICAgLyoNCj4gPi0gICAgICAgICAqIDEyLiBUb2dnbGUgcG93ZXJk
b3duIGlmIEhETUkgaXMgZW5hYmxlZCBvbiBDMTAgUEhZLg0KPiA+LSAgICAgICAgICoNCj4gPi0g
ICAgICAgICAqIFdhXzEzMDEzNTAyNjQ2Og0KPiA+LSAgICAgICAgICogRml4ZXM6IEhETUkgbGFu
ZSB0byBsYW5lIHNrZXcgdmlvbGF0aW9ucyBvbiBDMTAgZGlzcGxheSBQSFlzLg0KPiA+LSAgICAg
ICAgICogV29ya2Fyb3VuZDogVG9nZ2xlIHBvd2VyZG93biB2YWx1ZSBieSBzZXR0aW5nIGZpcnN0
IHRvIFAwIGFuZCB0aGVuDQo+IHRvIFAyLCBmb3IgYm90aA0KPiA+LSAgICAgICAgICogUEhZIGxh
bmVzLg0KPiA+LSAgICAgICAgICovDQo+ID4tICAgICAgICBpZiAoIWN4MHBsbF9zdGF0ZV9pc19k
cChwbGxfc3RhdGUpICYmIHBsbF9zdGF0ZS0+dXNlX2MxMCkgew0KPiA+LSAgICAgICAgICAgICAg
ICBpbnRlbF9jeDBfcG93ZXJkb3duX2NoYW5nZV9zZXF1ZW5jZShlbmNvZGVyLA0KPiBJTlRFTF9D
WDBfQk9USF9MQU5FUywNCj4gPi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgWEVMUERQX1AwX1NUQVRFX0FDVElWRSk7DQo+ID4tICAgICAgICAgICAg
ICAgIGludGVsX2N4MF9wb3dlcmRvd25fY2hhbmdlX3NlcXVlbmNlKGVuY29kZXIsDQo+IElOVEVM
X0NYMF9CT1RIX0xBTkVTLA0KPiA+LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBYRUxQRFBfUDJfU1RBVEVfUkVBRFkpOw0KPiA+LSAgICAgICAgfQ0K
PiA+LQ0KPiA+ICAgICAgICAgaW50ZWxfY3gwX3BoeV90cmFuc2FjdGlvbl9lbmQoZW5jb2Rlciwg
d2FrZXJlZik7ICB9DQo+ID4NCj4gPkBAIC0zMzc5LDcgKzMzNjQsOCBAQCBzdGF0aWMgaW50IGlu
dGVsX210bF90YnRfY2xvY2tfc2VsZWN0KHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiA+ICAgICAgICAgfQ0KPiA+IH0NCj4gPg0KPiA+LXN0YXRpYyB2b2lkIGludGVsX2N4MHBs
bF9lbmFibGVfY2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4rc3RhdGlj
IHZvaWQgaW50ZWxfY3gwcGxsX2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwNCj4gPisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jeDBwbGxfc3RhdGUNCj4gPisqcGxsX3N0YXRlKQ0KPiA+IHsNCj4gPiAgICAg
ICAgIHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNv
ZGVyKTsNCj4gPiAgICAgICAgIGVudW0gcGh5IHBoeSA9IGludGVsX2VuY29kZXJfdG9fcGh5KGVu
Y29kZXIpOyBAQCAtMzQxMiw2DQo+ID4rMzM5OCwyMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jeDBw
bGxfZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyKQ0KPiA+ICAg
ICAgICAgICogRnJlcXVlbmN5IENoYW5nZS4gV2UgaGFuZGxlIHRoaXMgc3RlcCBpbiBieHRfc2V0
X2NkY2xrKCkuDQo+ID4gICAgICAgICAgKi8NCj4gPg0KPiA+KyAgICAgICAgLyoNCj4gPisgICAg
ICAgICAqIDEyLiBUb2dnbGUgcG93ZXJkb3duIGlmIEhETUkgaXMgZW5hYmxlZCBvbiBDMTAgUEhZ
Lg0KPiA+KyAgICAgICAgICoNCj4gPisgICAgICAgICAqIFdhXzEzMDEzNTAyNjQ2Og0KPiA+KyAg
ICAgICAgICogRml4ZXM6IEhETUkgbGFuZSB0byBsYW5lIHNrZXcgdmlvbGF0aW9ucyBvbiBDMTAg
ZGlzcGxheSBQSFlzLg0KPiA+KyAgICAgICAgICogV29ya2Fyb3VuZDogVG9nZ2xlIHBvd2VyZG93
biB2YWx1ZSBieSBzZXR0aW5nIGZpcnN0IHRvIFAwIGFuZCB0aGVuDQo+IHRvIFAyLCBmb3IgYm90
aA0KPiA+KyAgICAgICAgICogUEhZIGxhbmVzLg0KPiA+KyAgICAgICAgICovDQo+ID4rICAgICAg
ICBpZiAoIWN4MHBsbF9zdGF0ZV9pc19kcChwbGxfc3RhdGUpICYmIHBsbF9zdGF0ZS0+dXNlX2Mx
MCkgew0KPiA+KyAgICAgICAgICAgICAgICBpbnRlbF9jeDBfcG93ZXJkb3duX2NoYW5nZV9zZXF1
ZW5jZShlbmNvZGVyLA0KPiBJTlRFTF9DWDBfQk9USF9MQU5FUywNCj4gPisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1AwX1NUQVRFX0FD
VElWRSk7DQo+ID4rICAgICAgICAgICAgICAgIGludGVsX2N4MF9wb3dlcmRvd25fY2hhbmdlX3Nl
cXVlbmNlKGVuY29kZXIsDQo+IElOVEVMX0NYMF9CT1RIX0xBTkVTLA0KPiA+KyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBYRUxQRFBfUDJfU1RBVEVf
UkVBRFkpOw0KPiA+KyAgICAgICAgfQ0KPiA+Kw0KPiA+ICAgICAgICAgaW50ZWxfY3gwX3BoeV90
cmFuc2FjdGlvbl9lbmQoZW5jb2Rlciwgd2FrZXJlZik7IH0NCj4gPg0KPiA+QEAgLTM0ODUsNyAr
MzQ4Niw3IEBAIHZvaWQgaW50ZWxfbXRsX3BsbF9lbmFibGVfY2xvY2soc3RydWN0DQo+IGludGVs
X2VuY29kZXIgKmVuY29kZXIsDQo+ID4gICAgICAgICBpZiAoaW50ZWxfdGNfcG9ydF9pbl90YnRf
YWx0X21vZGUoZGlnX3BvcnQpKQ0KPiA+ICAgICAgICAgICAgICAgICBpbnRlbF9tdGxfdGJ0X3Bs
bF9lbmFibGVfY2xvY2soZW5jb2RlciwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayk7DQo+ID4gICAg
ICAgICBlbHNlDQo+ID4tICAgICAgICAgICAgICAgIGludGVsX2N4MHBsbF9lbmFibGVfY2xvY2so
ZW5jb2Rlcik7DQo+ID4rICAgICAgICAgICAgICAgIGludGVsX2N4MHBsbF9lbmFibGVfY2xvY2so
ZW5jb2RlciwNCj4gPisgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUuY3gwcGxsKTsNCj4gPiB9
DQo+ID4NCj4gPiAvKg0KPiA+QEAgLTM4MDgsNyArMzgwOSw3IEBAIHZvaWQgaW50ZWxfY3gwX3Bs
bF9wb3dlcl9zYXZlX3dhKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBlbmNvZGVyLT5iYXNlLmJhc2UuaWQsDQo+ID5lbmNv
ZGVyLT5iYXNlLm5hbWUpOw0KPiA+DQo+ID4gICAgICAgICAgICAgICAgIGludGVsX2N4MHBsbF9l
bmFibGUoZW5jb2RlciwgJnBsbF9zdGF0ZSk7DQo+ID4tICAgICAgICAgICAgICAgIGludGVsX2N4
MHBsbF9lbmFibGVfY2xvY2soZW5jb2Rlcik7DQo+ID4rICAgICAgICAgICAgICAgIGludGVsX2N4
MHBsbF9lbmFibGVfY2xvY2soZW5jb2RlciwgJnBsbF9zdGF0ZSk7DQo+ID4gICAgICAgICAgICAg
ICAgIGludGVsX2N4MHBsbF9kaXNhYmxlKGVuY29kZXIpOw0KPiA+ICAgICAgICAgICAgICAgICBp
bnRlbF9jeDBwbGxfZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsNCj4gPiAgICAgICAgIH0NCj4gPi0t
DQo+ID4yLjM0LjENCj4gPg0K
