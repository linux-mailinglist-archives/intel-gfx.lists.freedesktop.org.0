Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D70A972A92
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 09:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C416D10E6E5;
	Tue, 10 Sep 2024 07:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LeLQ5Sip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5864F10E6E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 07:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725953055; x=1757489055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=69pPzp+mmdbHpD7y7gRru/LhKm8+qDskPxber2gdVuY=;
 b=LeLQ5SipxeG2PV1Wi6W1eDNfaZUPa1V3z+S7GQVkHbW/Wa6bXptL4Cpg
 1Lt8aa20IXa2JF/US+S7grYG4Nkcty/DXRd666yWm2+P8/Xm16UNYWiq6
 rLoNSH9aggCizMt5Y0cbHVcSTYn94fh3Q8mO+mNLMgKeQ4qP0jhjvxOUP
 ygqaMdgcRVSav3/RvaIMyeEGLkFV52TeVFiUh0y1wFIpcRPKsPTciypp1
 ApCaxnVFB2ORmiqDfV8SABsQw9fnM9ySaj1GoW1jY8EI4A7MxiQV0F6hX
 fs7GTGlmjh+VzIOFfPXMQQuN+Zc7KHbSKCVbdK3H6cjvqY+6aAdxN/jjx Q==;
X-CSE-ConnectionGUID: MzJz3OCjTHalRyPLyoymrg==
X-CSE-MsgGUID: E6F85vGwQXucQyIbMeDn1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="36063632"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="36063632"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 00:24:15 -0700
X-CSE-ConnectionGUID: 49b3YQ5QR6G8Lbzm3pQYOw==
X-CSE-MsgGUID: JX7bAtaxQAaq6G+FNC2PtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71718567"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 00:24:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 00:24:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 00:24:14 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 00:24:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CQUWlFyEebfxCzJfCQtfvXqfKPdVRyz2/nlCLGJvkw3+Dl0Hi4qSzHs9me1MYgD75VnpsUHePlieeHD1paEv2tEkZBFp4ZikZl6ApP34RAZbn1RXGStgOMM52CmFIi8hghZE6gtlvv6G0vI5AMiomU5f8kuMNOb2LQrO7tP2lFVeL7GM2takpZIcZFvUp76+5JJhffoH77tEDkQ0m7/b70NCrnSrNskdfyUTRHnBqGTwLypgkkUkVNfvVAc3MSONpR/4JpfPjB3DfkxGpMx1WgMZu3reuJe6Ktkjdd8UP1zf/hPSC3WCK0X2Ic3d9+hAkw6whUmQU+HWaeJ5wvGwbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=69pPzp+mmdbHpD7y7gRru/LhKm8+qDskPxber2gdVuY=;
 b=jR4WZycis0gRlWKH87kazvGeDdy++OuM66sghM7v0F59pUnUCqmmj1cR48lE/czwA2QnT/deh13jwlfJ+EAekTuhy15Pl8CnKwoFtmQ+F6pMq5GqusSKJ7GAIc8/73pdDCL0FcNnyFbR7BxZJf/vXjlXCOeBUOiaOvrXQfumaIPa9uhkRTqA2Ekpw/cr6ROWhRIOLdHDWg96XE+7aIOchtBfhNaCPKM0jeUzPf3f8W8XLGNZKjxBmDuUNvBF9BhN7PiA6ai2kpaUy04sDGknJ5KRFMBQeCkLEs3iHf9JeHSsuCCK1fnKvNCWrXveliitds77+yT0TB0IVa6w20bsSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB5926.namprd11.prod.outlook.com (2603:10b6:510:14d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 10 Sep
 2024 07:24:06 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 07:24:06 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915/psr: Do not wait for PSR being idle on on
 Panel Replay
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Do not wait for PSR being idle on
 on Panel Replay
Thread-Index: AQHbACqlyxtFhu2Ixk6LVF3EGMMXGrJQpBlw
Date: Tue, 10 Sep 2024 07:24:06 +0000
Message-ID: <PH7PR11MB5981F64004B891921C01FBE1F99A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
 <20240906070033.289015-5-jouni.hogander@intel.com>
In-Reply-To: <20240906070033.289015-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB5926:EE_
x-ms-office365-filtering-correlation-id: b450254e-05fd-465d-d201-08dcd1698e3d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ekh1b3NVNWttZ0dEcnp1eExUSVJPK1ZHd1JnUFlvWVkwV1VVWGZ0N3Rxazdp?=
 =?utf-8?B?SDRHSUlkVTVESDBvNW1SeXp6bkFnZTMwS2JUSlJkVWZwRHVRRklUTFVkUHJM?=
 =?utf-8?B?RVk5NFY3YnR3bWJqQW9KekFrUWlNalFmTHRaL0ozSGQyWUJFWjMzSTN3K1Vi?=
 =?utf-8?B?TUIxSlVzdWdsZ2F2WUxiN3dWMkpSU011aDNQRnBhVDdTZGE3eDBiOGZwT3U1?=
 =?utf-8?B?aWxvUFZIcU9TY2JQRVZBQUxJbXNNaVhrYlJScWJaRFlPUFZHVWNMb1RPZnBt?=
 =?utf-8?B?bUQ0NG1iM09zZG1URDVjM1oraVdFTnNmcUU1Qkh1d3lkcXpXSU1sM0xCVGVv?=
 =?utf-8?B?VDJ3Q1EzY1NSdi9NZnBYNFBScTQ1aTBkZTBQMFVzMUcwVVU4aVRwaDRzaUpN?=
 =?utf-8?B?eG4wdXpMc255cDArMVJJUDY4STVzTjIxTUZydktoMW9vYmJ2WGozOVEyTkt2?=
 =?utf-8?B?U1QzbjdtdFVIQnNYS0VnNm5DcU1MWlBXVTVBOHpuZFdpNHlWbWlUclcvRGto?=
 =?utf-8?B?VCszOURMOEFyMDIwT3Fmbm5BWlZGU296N2xlbFZoeTJaaS9mUm8xcUdrWFRW?=
 =?utf-8?B?U0JTOXpXcVoyT0xZdXpmczZZUmYxSTExUkhDL1dDUFVDNFdBVWZkUTFJVkhz?=
 =?utf-8?B?amJkbDg5YjMvelZKN2U1WW42T2ZWaENKRHg3S2ovdmZCVGJIWVFJN3FjWjFS?=
 =?utf-8?B?cCtvS0JEMG5hZ1I0M3ZucThZU3RMNldqejVLdnBEL1ZKejFyQi94QUFPNlZv?=
 =?utf-8?B?QnZhZVIxSjFRNGJLMW9NNkNBRVVzU2xOaG9IdTdDZi9nZ2xGbDdtd29vZm5M?=
 =?utf-8?B?SlRzZ0Z0WC9lamlFeEF3Zzk3VmJIQUxUQ2wvbjNvc3ViMW5waFRtNHU2VlhP?=
 =?utf-8?B?eTAzWVB1TW1Qc0FGUCtUcUQ0MnhrczZjMThoUmNZVEl0R1lMRDNuU0FqcTl4?=
 =?utf-8?B?ckVRajJhZy9zeEx0UFBBVGxSNzI4OVVKZDJNc1JwcVFFZnFQcEZHbEpFNGJl?=
 =?utf-8?B?UDZKcEhweTJEMk5RaU0yMGZFUWF1UlB2QjRCN0UrMEpTaGNUSnIyMXBDdk5k?=
 =?utf-8?B?dFloWmVrWXJ1SWxFc3g1RVFnWWJpV0JZeGpZN3JqUU9iR3lVL0ZHZ1F3cU40?=
 =?utf-8?B?TFUvYzlvd0JlWlF5cjZrNWtRVVhRalkzUXEvMnU2WTJxZUJ0TmFJcGFYdUZE?=
 =?utf-8?B?cVFlNjJiWStNZUdkYnRXUWUrTzZQN0oydDR3UkY5L3Y0Z1pwMmcxNUFnNUZC?=
 =?utf-8?B?ZmRjZkJNVk9mRGtEcWxvSTZaMmt6RjUvL1VDU1YyZzlUNnlpcDYzS1dDVTlN?=
 =?utf-8?B?cVZQczJQc1k3d1dZdHAxYUFHUWxiQlVyQ0JjaGU0NktXNUVpZVA0TkdZM0hj?=
 =?utf-8?B?eXhLOTQwbThGSklUam1VQmlYZlJ4cHc0eVBZN2tkVjJyU1MwNW5naW5MN1U4?=
 =?utf-8?B?dGMwMzh2bE5wTVdvUkFhUXVaRDVmei9wSVg3UXlSejg2aWxLLzlGbzFnSnVY?=
 =?utf-8?B?akRNWGtBSUFuaHBNZ0E5N1NwTi9EV2dSM2tBZ1FReEpLZFRzTE5KejNKa3hM?=
 =?utf-8?B?QTFWUnF0ZGEwa1RFUDRKU3BSRHhxNllONmphS29ZQU5WOENyaVNHTlV5NjZw?=
 =?utf-8?B?bWdZem9ITm9QT1h3NFZVWWs4U0h1T0FHa1NEdUZSZ0lGVEJoTlM0VEp0YllK?=
 =?utf-8?B?b2pSZ3ZtS0RhZW0vYzNXMlJnby96aWNUVXhKYW5wUFpRQzFHQlUxbktsV3Rk?=
 =?utf-8?B?TERGc1pqcFIwMDlLT2R0Q1pVTTNmcURpT0kvamNZTTFWV24zWCtPSHYrMDVV?=
 =?utf-8?B?eis1NUtGWlhGUnpROWVCYXhGdlRBZVY1Q0ZJQ09MU2t6djEyY2NhcjZZVjQz?=
 =?utf-8?B?NFU5LzBpMDJxRFRNakQvSStEZStSOGgyenhzQ1FBZjlOQ2c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFNZL1ZMemtZQjZhMmExa3FySjNTa2lFWVNsdHR2cGFnZjBTRWlVdDRhT3dj?=
 =?utf-8?B?U0UwQWV2SFdoOE5qL0gxcUhKSzc2TU5NM0FBWGJXaW1pWFE2cWNZQUhhS2hK?=
 =?utf-8?B?Nk5MME5YcUZ6UVNneCtWbk1SM1ZkOWxoVVowSjcrMGVWRkFFbUJjK3d4Q1V2?=
 =?utf-8?B?RG1nR1JuRzFxMnlqM2tRU1RkelM3aUpOeGxpSGpvWHNpaWozR3IveTZlaldw?=
 =?utf-8?B?RmJJSnhWYkZsVXVNWDg2ZEpxODJzYWlibU9BWnJsYng4dHp2Y2tZUkMwUmZz?=
 =?utf-8?B?VlNTM05BbjRncFRNWEJ0UzdFeUJHR0hpaWo0bjcvSmFhV1VSc1B1em9jSzZy?=
 =?utf-8?B?UDU0Y04rZ0NNTkxIK1hKeUxFczNNVHJVRGVmUzJMWExuSzdvVGJ3b0xZMS9m?=
 =?utf-8?B?Z1VCd3F5cUlnR00rMjVXb2MzZnhLS3FxMkdJSzRlV05PYUxzQlh1cXVWUC9Y?=
 =?utf-8?B?U1psbWV0alpIbTlWMUFLV0lBcE92S0E5NllFbG9OK1Q4WkJQaEsvLy9TKzg3?=
 =?utf-8?B?Y0lvaXpmRmZTZ3VYbzgzNDZDdlRmeUZ0OFV5RHg1V3BtM0lYc3ZwdGd4VXhL?=
 =?utf-8?B?eDd1bkFyNGR3MU9sVHljZE5CZ3pvMlcvUkVxRzhCdGRlbjNJMGFXSXV1SGFZ?=
 =?utf-8?B?WExRTnlsOStyTVJ0MjgycXFEa2l4RzlENTJIUmd6WFppNjRLcWpZMjhwYnZn?=
 =?utf-8?B?NXVSem1rdVljSkVONkZGZExiT01uZk9PS2JzdGZGTEFTZkZ3eEUybFpva0d4?=
 =?utf-8?B?bmVnMTAzT0pZY3MvK1FuRTAwSDF3by9KUzRWRFZSa1FWeG0rQ0RmNUNIdUxy?=
 =?utf-8?B?VERuV3A4c3l3aDM3OXE2enJkN0pQM2FwOWtkMk0zNHVpNnBTNGI4MUhwaURE?=
 =?utf-8?B?eWNlUUxGS3VIVE5NNlB3QU5YUUlXaHhOYXVYcFNVdXkzRHJ1TFVUOWVwdFVZ?=
 =?utf-8?B?SEZSaDdNdnB4NS9SWFN2VU5JODluaFNtTGFLcXluazhNL2hlWjFFWVMvbzQ1?=
 =?utf-8?B?aDJmVFhNZitOTGcwYmtCVmJLU0l2MXpCcm01QXFnU090U3RTUVpLSXpFa0xl?=
 =?utf-8?B?Z0R3UStudGdqY25zRlpvVGtPTng2b3hzMXdnQ2FzSDg4YlhXOVlkOVNhdTN3?=
 =?utf-8?B?YXJlUU96QUd3SUo1UFg3MEtzeHl0TGhhTFlLSFFFOEgwbDBEWjJDLzArUWVu?=
 =?utf-8?B?K00wU3E4dWI1Z0JUL2JzTkgwcHBsTjduQ0Mwb0dXdzlxUjBSbHZRcnppTHB2?=
 =?utf-8?B?WTRPdG1MTS9RUUFTbW5wYjBrRERwT1JkRUFOUXdDVUlKS2d2QXdaWjZYL25O?=
 =?utf-8?B?RGkrVlY0NDZqQU02b3BDeHVTSkF0Yml3UDJPNkZnNUE2S1FtOVpUSENIMHY3?=
 =?utf-8?B?OGd6TlNMRUFDRE9oL0JtSGJ6RTZwT2hIdjRHekwxR1B6dXJrRWg3L3krYmgz?=
 =?utf-8?B?a1Fpc2pFb3FOK1Q1NWJtdXgyamYzWm9NNERvTTdjejFXTU1OZ0I5WnRYV2pU?=
 =?utf-8?B?UXdSeXVBbGpra3ZRS2dRRERTaGxKY1hsSkE0dE5SK2Rpa2NnNVlOWGpyUm1P?=
 =?utf-8?B?S29FZWt1c2dmaGFDVGYrcUJZWi94RGk0SG5iNlUrK3FPd09vaVg4T0lkZWVY?=
 =?utf-8?B?TTYzTEwwRjFQdDlKcVNsQVdGYUZyNUdWRUZxeUpra1NGd3VoR2NHQnQ5SmFW?=
 =?utf-8?B?dTNPSnVUd2p3Z3A2bW8zalZBQk5zRmNCemZRcTJ5SlhkWjFrbWlVbFdFd3Np?=
 =?utf-8?B?WTNvM3VDdzZFYUtNZkFSMTBtYVU2bGhIL2d2Q3A5S29ZeDdyZjcwTWxmRURz?=
 =?utf-8?B?Qy9IWlpBeG1udHNoR1d2dzNQekpNKzJFK28zWTRXWVYwV1NEVXZSQzczSlk3?=
 =?utf-8?B?WVBpeGZYWUoyR0hiSEZQNG1KOWZRYnUvQVdqN0RseEVKTzRScHpBMkpGNHVr?=
 =?utf-8?B?R0hjOXQ0ekpibUQ0VC81U2tWQitacU9tZXkyQWdHMjdaYTYvMEkrZTUySk1r?=
 =?utf-8?B?dnBta3JzY0ZyYXMzWW1JeGtQSURabm92Q2RlaEE5RE15eFlGR3VxaEpKMGda?=
 =?utf-8?B?cHo0RWUrR3ZrUTRETldTUGhQdGt0MU9VYmpPeThlZ2J2YWJ5VFRqMDRQck53?=
 =?utf-8?Q?2RPhpQywhd32GRE9Ev/tlcDVw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b450254e-05fd-465d-d201-08dcd1698e3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 07:24:06.7558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2KtPU2I78QLhU3O6eSvs2ld1VzuEyLIcHPDUw9hGQ9GLLAJeDSlwvN9ZCUgje/rBQBw8EywcV/4ZxfYgqOhTXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5926
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDYs
IDIwMjQgMTI6MzEgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+OyBNYW5uYSwgQW5pbWVzaA0KPiA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYyIDQvNF0gZHJtL2k5MTUvcHNyOiBE
byBub3Qgd2FpdCBmb3IgUFNSIGJlaW5nIGlkbGUgb24gb24NCj4gUGFuZWwgUmVwbGF5DQo+IA0K
PiBXZSBkbyBub3QgaGF2ZSBBTFBNIG9uIERQIFBhbmVsIFJlcGxheS4gRHVlIHRvIHRoaXMgU1JE
X1NUQVRVU1tTUkQNCj4gU3RhdGVdIGRvZXNuJ3QgY2hhbmdlIGZyb20gU1JERU5UX09OIGFmdGVy
IFBhbmVsIFJlcGxheSBpcyBlbmFibGVkIHVudGlsIGl0DQo+IGdldHMgZGlzYWJsZWQuDQo+IA0K
PiBPbiBlRFAgUGFuZWwgUmVwbGF5IERFRVBfU0xFRVAgaXMgbm90IHJlYWNoZWQuDQo+IF9wc3Iy
X3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQgaXMgd2FpdGluZyBERUVQX1NMRUVQIGJpdCBn
ZXR0aW5nDQo+IHJlc2V0Lg0KPiANCj4gVGFrZSB0aGVzZSBpbnRvIGFjY291bnQgaW4gUGFuZWwg
UmVwbGF5IGNvZGUgYnkgbm90IHdhaXRpbmcgUFNSIGdldHRpbmcgaWRsZQ0KPiBhZnRlciBlbmFi
bGluZyBWQkkuDQo+IA0KPiBGaXhlczogMjlmYjU5NWQ0ODc1ICgiZHJtL2k5MTUvcHNyOiBQYW5l
bCByZXBsYXkgdXNlcyBTUkRfU1RBVFVTIHRvIHRyYWNrDQo+IGl0J3Mgc3RhdHVzIikNCj4gQ2M6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KTEdUTS4NClJl
dmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMyArKy0t
LS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBpbmRleCA1ODFjNDA5Y2U3MzA5Li4xYTRlZjIzMWE1M2NhIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTI3ODYsMTMgKzI3ODYsNiBAQCBz
dGF0aWMgaW50DQo+IF9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIAkJCQkgICAgICAgRURQX1BTUl9TVEFUVVNfU1RBVEVfTUFT
SywgNTApOyAgfQ0KPiANCj4gLXN0YXRpYyBpbnQgX3BhbmVsX3JlcGxheV9yZWFkeV9mb3JfcGlw
ZV91cGRhdGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApIC17DQo+IC0JcmV0
dXJuIGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgPw0KPiAtCQlfcHNyMl9yZWFkeV9mb3JfcGlw
ZV91cGRhdGVfbG9ja2VkKGludGVsX2RwKSA6DQo+IC0JCV9wc3IxX3JlYWR5X2Zvcl9waXBlX3Vw
ZGF0ZV9sb2NrZWQoaW50ZWxfZHApOw0KPiAtfQ0KPiAtDQo+ICAvKioNCj4gICAqIGludGVsX3Bz
cl93YWl0X2Zvcl9pZGxlX2xvY2tlZCAtIHdhaXQgZm9yIFBTUiBiZSByZWFkeSBmb3IgYSBwaXBl
IHVwZGF0ZQ0KPiAgICogQG5ld19jcnRjX3N0YXRlOiBuZXcgQ1JUQyBzdGF0ZQ0KPiBAQCAtMjgx
NSwxMiArMjgwOCwxMCBAQCB2b2lkIGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZChjb25z
dCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdA0KPiANCj4gIAkJbG9j
a2RlcF9hc3NlcnRfaGVsZCgmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gDQo+IC0JCWlmICghaW50
ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiArCQlpZiAoIWludGVsX2RwLT5wc3IuZW5hYmxlZCB8fCBp
bnRlbF9kcC0NCj4gPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gIAkJCWNvbnRpbnVlOw0K
PiANCj4gLQkJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+IC0JCQly
ZXQgPQ0KPiBfcGFuZWxfcmVwbGF5X3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoaW50ZWxf
ZHApOw0KPiAtCQllbHNlIGlmIChpbnRlbF9kcC0+cHNyLnNlbF91cGRhdGVfZW5hYmxlZCkNCj4g
KwkJaWYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKQ0KPiAgCQkJcmV0ID0NCj4g
X3BzcjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChpbnRlbF9kcCk7DQo+ICAJCWVsc2UN
Cj4gIAkJCXJldCA9DQo+IF9wc3IxX3JlYWR5X2Zvcl9waXBlX3VwZGF0ZV9sb2NrZWQoaW50ZWxf
ZHApOw0KPiAtLQ0KPiAyLjM0LjENCg0K
