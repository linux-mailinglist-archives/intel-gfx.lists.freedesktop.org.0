Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBA8C84164
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 09:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD71710E38C;
	Tue, 25 Nov 2025 08:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="af+5byiq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F1510E38B;
 Tue, 25 Nov 2025 08:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764060991; x=1795596991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3YSTpoiF/sOpOG4Vz3a6Gsyf3QXfkDf0gvsIe91OGVc=;
 b=af+5byiqEN1pDZHPBdjHXUVHZMrIB4ggb6CrCeTnou5IJlYq9bbD2l83
 zBF40w6vAiazQHkEjaYaYIoIBCdGAKoaE29srbeTCs6/CGo54KK9TtyEs
 A6zcx+EmET68Z+Y7IpEc7nswJGiuHVDC2l/cTr7YZVYixEz4D+4k+czNT
 f4EWc6QcSgbTFzYuvtZYQSXAk0IFuVbxhZYhaqN/1cCtXZWtjzGF8HeTa
 BkJfdYba5NtZw6fB85MxvnTzpZLA2FcwfOx7D6SoqLycMFoLkKYy5f7BK
 Mkob3cZuUPmoLZ5F06BfAKXsbQrRk1YXjCput6wFkEJnROFijqUwD/5X1 g==;
X-CSE-ConnectionGUID: TkaY4KAoShCAWaoa/WqrNA==
X-CSE-MsgGUID: lg9xb0JhQ2OtRNtLlEAguQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77550046"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="77550046"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:56:31 -0800
X-CSE-ConnectionGUID: ihfutEP+TEeFsVtg3NdDwA==
X-CSE-MsgGUID: w9eBQdKmQiKrdE6X98UFaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="196753222"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:56:30 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 00:56:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 00:56:29 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 00:56:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kb4g9g5aXmfickW0Ru/Bvgs92CgN/6L+y7JQrW/Lv9QxjgIWXbN3M/wOEJkxWLmTb1rftYusOtBOhEUwhTywtwx1GjoNG7ojJ449FgEs6VRyBUZbPhCjpi287jjpB6CgP7dMUMN98Pl7Ee1R5Eec7p5bBFw5J9UMCX/RJ3+SE0p17FBRsHC5e3oSSmMI/JkdB+IXHDnbk6nSiNPTNncTrkwpH9ELJ+9elfb0pCIyMqnC5+g+LGQJTmv+ywwrIBYQfYCcf7qqt/ARdYoLL+A8Oc+7SSZX/YnZp0Ac7qxK+rHo1IZfBo0+tyzN4WpzFaDyWxakdQPx+lSDhC+tNCC5Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3YSTpoiF/sOpOG4Vz3a6Gsyf3QXfkDf0gvsIe91OGVc=;
 b=O1bmK8u3yi8zlopZa7VxFBrLaS3whzFcG+XOy4lRW55xs9BPLNnpvuZaXOmrSXy9o0TjEY0dtB+79iZ+Ma8WewjwmlsMqFLoNiPUksu31sO7obIsd+H7Y9Onl4Yikk6A5l5e3yv5iwaqLSRZyOeeeEcyz+WaSWb5Sl9T6NyK5yiIi41CjPqNAluBpjl4r8IRZKYlMgxMK27DtmZbj663Y9Tvug0gMmA2dXTlb+ZmOopFe+4lwTIqQKHb9C3RJwtn9gIm1FdVoI6Ok+L2D8ET5I9lN3al7dDT44y+hc0YdivnH5LPT9NqZyd4H+MOhuR0q/M2pzw73ztlgOtm4GloJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ2PR11MB7716.namprd11.prod.outlook.com (2603:10b6:a03:4f2::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Tue, 25 Nov
 2025 08:56:22 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 08:56:22 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
Thread-Topic: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
Thread-Index: AQHcXJKhnzjHcMg2xE+6VW0Qp+8wf7UCBNEAgAEUxoA=
Date: Tue, 25 Nov 2025 08:56:22 +0000
Message-ID: <7210f811ede22c67bb0e88f1f4580f899aa345b5.camel@intel.com>
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
 <20251123160127.142599-3-vinod.govindapillai@intel.com>
 <e397113073a89536b28e57f44313eff247bf1fb9@intel.com>
In-Reply-To: <e397113073a89536b28e57f44313eff247bf1fb9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ2PR11MB7716:EE_
x-ms-office365-filtering-correlation-id: 7e4f9c75-6b93-4eef-64c4-08de2c00821f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cEkyajd1bVZSRUh3bHYzVEdneEdReVZCTXRjVkprUVV0L2pGVEZ2MldQWTNN?=
 =?utf-8?B?Ym5USU1ocUtzdU94djQ2RjBqbEszODNlTzdoRnNmZ1NZM1lzeERFdkJ1MWp6?=
 =?utf-8?B?Zld2MHdRbHJoM2pmUHBzWm5ySHFITFozamtuZm1PN1VqeGpLRGFsMjA2dUVS?=
 =?utf-8?B?cVJhVjRBYXp4Qk1vdm5VNXFmbnoxK0c3Q0lmNTcyUkhibFhnRnZ3NGk3ZnF2?=
 =?utf-8?B?ZFNydjRCMWQyOFhIL1hZVWN3cVdzRDRWMkRNakFNaTR4QVdIN05SKzFObG9r?=
 =?utf-8?B?Y0tVVCtwTDIwTk9PZkhGQSs1UUE2aSs5VTUwTmdxMFlTUmQxNHo5NjV6Z0NL?=
 =?utf-8?B?MWxFMkZVUndMTnB0Q1EvQ05YQTZ5RVVRZWFRNHJUU0xaeGJmN2p2eE9QWGVD?=
 =?utf-8?B?ckRkYzhkdWFoOE9VSndZZ3ZvWVFRQTI1SHNlRGFENzI2eDlleUczbE1HSUk4?=
 =?utf-8?B?QVBSZHNyQ3Znc2ZOcVhFYnA4MXpJVDdXMjhibVN6OFViS0hGOWxaSzBUNGFZ?=
 =?utf-8?B?YjRXSUphMnBSdkNhSzZVekRxeFZITlRLQWhZMkpWek9NVUxaNFhSSnBsbCti?=
 =?utf-8?B?UHdOamViUHk1NUhSZkxPajBUZStMc3FrYi9xM010TzJJcUxQL1hqZ3duazlV?=
 =?utf-8?B?dHdPR1p0c21ZZjJKUFpjMWhWMitadGxQK09BNHljK0kvQ2lVYnRlSEhXWWVP?=
 =?utf-8?B?NmNXay9wY0JCM2U4RTZ4R3pzcG1DZWRJL1VsZ3VITDZmcDN4c2tEYlVCTlhY?=
 =?utf-8?B?WGhUM0RuT2RCa0RSVzRpY3NJd2wxUEVzRWdmYUlHSGgwaGxLbjFRR29UNVhI?=
 =?utf-8?B?NjFXN0RPVGFIajFERTBlMUxLd3dmY1pnRU9kdTAwUDZiU2VoQzZNMjBiMkUw?=
 =?utf-8?B?Q3cvRG9wTU1YSytzVGRzT1puUFBmcThzcFQ5bGpYdU5mR0h1aVdGUFEyQllF?=
 =?utf-8?B?YTVjRkFnK2lGTjB0RXFQYlJyZEFIQTI1dEVha3VkQzRBWVNwSmwwUGY4dUx1?=
 =?utf-8?B?S29uK1Q4Nnk4b1MxV2plM09MZXpRRDVmQmJCK0QzOUxhL01TT3NWR1hVMkdC?=
 =?utf-8?B?ejBzd1Q5cTJpZzZzbExCYVpHS2xDcFNQdjF0UGEvTTh3TUc5a0QyTkxOQndK?=
 =?utf-8?B?bmJWeVN1c0pFQnZMZUFqLy9VS2JZUTlzdzdSZExEdnVpeWFYSnZIdzgvTEtk?=
 =?utf-8?B?THhaTnJSQnI0Rmk3SWxWQUJwcXYxM0ozSUQ2Tmk4WjBKdk1PaFpGKzN2Yk5Z?=
 =?utf-8?B?dGtpRW5GQTdkNzFwWWdLWDZISlh0aWNtZWVqT1pLeHE0bnVJcG5Zdkd5TFZV?=
 =?utf-8?B?NU8xdXhEbTFsTE4vVVlsUlJKRHRSRlkxUjNEeUx5SzR3Mzl3bmpuTTBDbkti?=
 =?utf-8?B?Z3gxc3Y0aDhNdHJFa3A5WlA3RElMTS9Xa2hJc1RML3Rvc3RDNWNDWUJtNnZl?=
 =?utf-8?B?bTdYd3NhUGE3ekRTQWQzaGZ6QmRvTFdsRnQrRDRsRkJZbEdEQ3N2TEtkWm0x?=
 =?utf-8?B?bEo4cndkb2RjSHVmcm5aMUxOaXhydTVtWEw2dENCOXpHc25NWTRzY0g2ZlYw?=
 =?utf-8?B?V2JEbDhMcGdGYkRvT0xyMS9aYXhSMGU2eVkrQjJxc3daL3pQR0p5QVhwN2tS?=
 =?utf-8?B?S2s0NGN5eFU0dm1zbG9tN3NSWHdEUUZQbjZ0YjlxdDZMQjNoTWRBNTlCVnRo?=
 =?utf-8?B?YXpwcUl5U24vMzV0b29BeXJaYlVVZzBjUVBPOC9Hd2JwREQ1OGdYWHJwVVkv?=
 =?utf-8?B?L3lVcnYrOGNpT2FNcHVlbVYyK09UTE04N2dMVk9xOG41dk9vYzd5dVlTd1g1?=
 =?utf-8?B?cDYzY0grLzNVRUtac09nRSt1S0hyVzV4NGZVT0UzeEc3d0NUL1JQd3d4SUU4?=
 =?utf-8?B?MjB5eExxQ0QyZlc2RDdyQnVGRFdxUzNGTkxYQkxvekpkSmxiN0NoUXNjTXhr?=
 =?utf-8?B?SG9VVzZ6ZTRLdDN3R1BiRGNrdmFiMUJ3TnM5bTJNQW1SZnpJelo5eVlCYkgz?=
 =?utf-8?B?K1k5azFVNWIzZ0lTTkc4TFpoOUlJajJ5bk8vYmwzYmhvVHN4Qk9WbThCMXox?=
 =?utf-8?Q?BDcAW8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDF5Q0d4QkE1TTVCZlN2eXMyR3I4ekhGODE1Z29iUzVuQUZSb0NvME9rWE5I?=
 =?utf-8?B?dmE4QmkyQ3ZDTmlxUFlQM1Q3MVV3cER3bGxZb3k3OW5vRWQ3dnBDQXZZcmtu?=
 =?utf-8?B?bC93YXFPVmlDL0tYVWJDb21IZzlqNXQ3ellQSzVQVlk1bFl0K3NUUXozU2Zj?=
 =?utf-8?B?OWoweEc4ZXFBQjJXakYwejRBMExUWVJZajJjVDF2RzExYUFjckcwa0o1ZnQ2?=
 =?utf-8?B?VUFLdnBiNHZNQ3NYNXIvRUN5b2ozWDdTdXE4dCthY0ZsQzlEUEFDbU5tcmJC?=
 =?utf-8?B?UkYvL2xWOXVLa3JERWNRTjFVSzlIU2EvdFhCcGZCbXBaeFR2bXZybjduTEpL?=
 =?utf-8?B?aEZKMWlmZnJXckVuSC9LWGdadEl3REp0cnJ1Um12c1RHclFsam9XMjRzOU9X?=
 =?utf-8?B?cU9qQktVemVlYjVsR0xkd05TUDFPNCt0RS9ZRmJTcHZpNTF4djNYUTdnUVNr?=
 =?utf-8?B?d09sU3FuTEl6NkdUcjdIR0hyVWQvcURFUm13ZnBzcnhuekpsTFJTOVlpRGJL?=
 =?utf-8?B?bVFpSWdTa1FxQU1tSDgrREwxWE0rVmd3VDlkMmZETDZlT2NBQUgrc2hoQ0VF?=
 =?utf-8?B?Umwxc0ZmNFhTWXhVcE1ZdzhWNVpUOTkxamRGVktIYXBMREc0ZmJZMDBoeFpV?=
 =?utf-8?B?eW4yN3hLRnhOaENGd2VRbE5SdlBYbThXM3dUaE8vRUQycGdnYnRXUFR1WEVC?=
 =?utf-8?B?NzV6cWpvaU5pdlhRZGtYZ0hFSEJINkI1aVhaZ3B2bjNoejgyZ1RnZHgyR2d5?=
 =?utf-8?B?dS9ZaGUvNDRaNUJpTm9CamM5M0hXVFo4TzlSVDlYV2daM3ZnbmJFeVBQVjRF?=
 =?utf-8?B?dFZ4T0pFN2RYV1RrWE1jU2FxWm9TK09FR21vQ044YklqdDhDdmpoQkNGQnJm?=
 =?utf-8?B?OFdPcktyVVZBQ1pKc0d3NDQ1TUVNaitTR2JHQXRycUt3SExlVnVlbUJXdW5p?=
 =?utf-8?B?ZVZJKzBybmxmSklvNDZuWWF3QmNoamgxRGdRcUZCREhYZzJYcFpreGFZNGdI?=
 =?utf-8?B?TDhUL0Y4ZzhqdmtOTUFtVTJzSDlpc1RoM0VsRHYwYmRtWDZSVjFuQkVKMVZs?=
 =?utf-8?B?V3lkRHFjZm12ZHJma1JySTlnQ0RwY29Xdk5MckFsUnpUY0JBUzNWRk0yQ0h6?=
 =?utf-8?B?Q3NuR0RWZFBKQXhvdzI2OGtPYi9xajhoOUExUFFheGFUcjJpcnZKRGFoU09p?=
 =?utf-8?B?R3RtWkJCNlhvdzZ2QVNRZEFwQXR0ZW50ZjRwckJNSXUxL1d4aUZvb2s4QVRm?=
 =?utf-8?B?dlhKWk1aUkFxcHNGK252cHBzNVBydWZ3TDlSeWQxUVB2eENjTE1FWVBBNzRp?=
 =?utf-8?B?UWpPU1JoZE4yS3pEQnhlbEU5ejZaRVFab3lLKzZnaWQvYkJtdzZjTStKRVBP?=
 =?utf-8?B?NXpPUGtDZUEzRjBNaWNCZldsa2pSVFJoYWhWcFFKRnpieWNSRk5qQVpoa0lm?=
 =?utf-8?B?elJzc2k0blovSEVKUWJSZ0UwbHRNU3ZTekx2bkRYVkl6OFEvb2tWd2c3NUZD?=
 =?utf-8?B?eEhlb1V2ZHNXTGYwODNONzFjbWk0RGJWSGk3SERSUTVQZUw1MkFtZkxJOG1p?=
 =?utf-8?B?ajhub0FWTWdPNi9PUWVTb0s4aU1NZkI4VUFmQ3VRclliQWlqMUUyUWozSXF5?=
 =?utf-8?B?bE4vVmt5RXJkUUFBQVFYa1Vna05BaDJXZ0kzVjNINlRSWUQwTjErTkhpS0JY?=
 =?utf-8?B?NFFPRFdEa1JucjdGWHV6ZCtpU1FNbTVIMWV3a29zUW9FVzNRMU43TFNBL2Y1?=
 =?utf-8?B?ZXd2UmF5Y2dYZ3QxLytjVzdZL2R2TENCZFdSRGNYYW5MR2VTbGI2Q3JXbjFL?=
 =?utf-8?B?WWdBbXlKcFpiMTFBdHZiRWlaN2IrOEtCT2plSmtkbG1vWGQrTURWY3lzVldI?=
 =?utf-8?B?cVI0MitFajY2UGFhUVpZUW1vMHM1c0ZibXJxTFV6ZWVnMVlQdWpsUitmdXJB?=
 =?utf-8?B?KzZTemtUQjVDTE90QVZRcVh5MHlKYmpyOEFGdmtvd1FHT0FFbXdvMkdRMk1h?=
 =?utf-8?B?U0pXMGFISENCV09yM00ra0xaMDlrUHAza29uelhCbXd3R1M2UVBLd0ROdXlh?=
 =?utf-8?B?VFBJaUxqa2MwYXpvVk55TGxVY3Y1a3hHMjI3L2Nyak10K000bmg2bFIxL2Vm?=
 =?utf-8?B?SUZqaWtMa2hOdkNVY25LcldsbC9pMklPd0VRdUhPeEhkNlFUNlFmdzVURytr?=
 =?utf-8?B?SjFvcFZ4RjJQV0l4eC81eDFxeEpiaGljMGJBVk9aMTNzbXdjWlErRTdiejBx?=
 =?utf-8?Q?PTZF31bKDTKY/OWdp34rYC429ip6+SePtihnuW1b1g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DFC8A1BDD943D34191066FE80164CC32@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e4f9c75-6b93-4eef-64c4-08de2c00821f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 08:56:22.7522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 18cVnHKNv2wAZIpk09mejflfk4N8kQynWSSFOiXMpMwJ9T9INA+pZEGyH8t3MUMKZ0NI1gDXWiTSsZDkFBfXeK4Cpp3NC5fwEnj797FfTOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7716
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

T24gTW9uLCAyMDI1LTExLTI0IGF0IDE4OjI1ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gU3VuLCAyMyBOb3YgMjAyNSwgVmlub2QgR292aW5kYXBpbGxhaQ0KPiA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9uZSBvZiB0aGUgRkJDIGluc3RhbmNlcyBj
YW4gdXRpbGl6ZSB0aGUgcmVzZXJ2ZWQgYXJlYSBvZiBTb0MNCj4gPiBsZXZlbCBjYWNoZSBmb3Ig
dGhlIGZiYyB0cmFuc2FjdGlvbnMgdG8gYmVuZWZpdCByZWR1Y2VkIG1lbW9yeQ0KPiA+IHN5c3Rl
bSBwb3dlciBlc3BlY2lhbGx5IGluIGlkbGUgc2NlbmFyaW9zLiBSZXNlcnZlZCBhcmVhIG9mIHRo
ZQ0KPiA+IHN5c3RlbSBjYWNoZSBjYW4gYmUgYXNzaWduZWQgdG8gYW4gZmJjIGluc3RhbmNlIGJ5
IGNvbmZpZ3VyaW5nDQo+ID4gdGhlIGNhY2hlYWJpbGl0eSBjb25maWd1cmF0aW9uIHJlZ2lzdGVy
IHdpdGggb2Zmc2V0IG9mIHRoZQ0KPiA+IGNvbXByZXNzZWQgZnJhbWUgYnVmZmVyIGluIHN0b2xl
biBtZW1vdHkgb2YgdGhhdCBmYmMuIFRoZXJlIGlzDQo+ID4gYSBsaW1pdCB0byB0aGlzIHJlc2Vy
dmVkIGFyZWEgd2hpY2ggaXMgcHJvZ3JhbW1hYmxlIGFuZCBmb3INCj4gPiB4ZTNwX2xwZCB0aGUg
bGltaXQgaXMgZGVmaW5lZCBhcyAyTUIuDQo+ID4gDQo+ID4gdjI6IC0gYmV0dGVyIHRvIHRyYWNr
IGZiYyBzeXMgY2FjaGUgdXNhZ2UgZnJvbSBpbnRlbF9kaXNwbGF5IGxldmVsLA0KPiA+IMKgwqDC
oMKgwqAgc2FuaXRpemUgdGhlIGNhY2hlYWJpbGl0eSBjb25maWcgcmVnaXN0ZXIgb24gcHJvYmUg
KE1hdHQpDQo+ID4gwqDCoMKgIC0gbGltaXQgdGhpcyBmb3IgaW50ZWdyYXRlZCBncmFwaGljcyBz
b2x1dGlvbnMsIGNvbmZpcm1lZCB0aGF0DQo+ID4gwqDCoMKgwqDCoCBubyBkZWZhdWx0IHZhbHVl
IHNldCBmb3IgY2FjaGUgcmFuZ2UgYnkgaHcgKEd1c3Rhdm8pDQo+ID4gDQo+ID4gdjM6IC0gY2hh
bmdlcyByZWxhdGVkIHRvIHRoZSB1c2Ugb2YgZmJjIHN1YnN0cnVjdCBpbiBpbnRlbF9kaXNwbGF5
DQo+ID4gwqDCoMKgIC0gdXNlIGludGVsX2RlX3dyaXRlKCkgaW5zdGVhZCBvZiBpbnRlbF9ybXco
KSBieSBoYXJkY29kaW5nIHRoZQ0KPiA+IMKgwqDCoMKgwqAgZGVmYXVsdCB2YWx1ZSBmaWVsZHMN
Cj4gDQo+IE92ZXJhbGwgaXNzdWU6IFRoZSBmYmMgbXV0ZXhlcyBhcmUgcGVyIGZiYyBpbnN0YW5j
ZSwgYnV0IG5vdGhpbmcNCj4gcHJvdGVjdHMgZGlzcGxheS0+ZmJjLnN5c19jYWNoZV9pZC4NCg0K
VGhlIHBsYWNlcyB3aGVyZSB0aGlzIHN5c19jYWNoZV9pZCBjYW4gYmUgY2hhbmdlZCB0byBhIHZh
bGlkIGZiYw0KaW5zdGFuY2UgaWQgKyBmYmMgY2ZiIG9mZnNldCBhcmUgcHJvdGVjdGVkIGJ5IHRo
ZSBmYmMgbXV0ZXggYXMgcGFydCBvZg0KaW50ZWxfZmJjX2VuYWJsZSBhbmQgaW50ZWxfZmJjX2Rp
c2FibGUuIFRoYXQncyBpcyB3aGF0IEkgd2FzIG1lbnRpb25pbmcNCmluIG15IHByZXYgcmVwbHku
IEFuZCB0aGUgcGxhY2VzIHdoZXJlIHRoaXMgc3lzIGNhY2hlIHVzYWdlIHJlZ2lzdGVyDQpyZXNl
dCBoYXBwZW5zIGlzIG91dHNpZGUgdGhlIGZiYyBjb250ZXh0IC0gd2hlcmUgc2FuaXRpemUgYW5k
IHJlbW92ZQ0KbW9kdWxlIGdldHMgY2FsbGVkLiBJIGRvbid0IHNlZSBhIG5lZWQgdG8gdXBkYXRl
IHRoZSBmYmMuc3lzX2NhY2hlX2lkDQpmcm9tIGFueXdoZXJlIGVsc2UuDQoNCkJSDQpWaW5vZA0K
DQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KDQo=
