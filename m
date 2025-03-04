Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB12A4DFA1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 14:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A84B10E277;
	Tue,  4 Mar 2025 13:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eZWvjuhl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3426710E277
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 13:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741096147; x=1772632147;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=C9KpxIonJattQ/KhQxCIX9wx5s4ZyMnYaHxbGt8fsBo=;
 b=eZWvjuhl8ULd7plm5yaHKDec+kfIPZybXraG3qs58GwNWmtg/6qvyzL4
 +XVVA1RT631OS3yTZvIAM7P+iRH0T8BeGCRYLagjpJAWqJv6z114w2S66
 h8YMzU33a1/YQ2S8izedj2m0+s3+MRwE4vGyIG3j5SUlS5M4xFLVA0It5
 NkKHRnRLqpGjK8Gi+71lCoxDU/mPXHVi2n7+gNH9PG4ZdvJ7KYxth8bDD
 YSqMJQEapdGTiJF/iZVGwl6drlS2t+BCVRVW88zRDRZBOxlqKctbS07se
 S2QaqQ2ceFZ30c/nhTliGGX72JU6d+/otj/ckL+tXOHt8kFsLssPiey9e A==;
X-CSE-ConnectionGUID: uJhIWzRqRomsVUvUY7euSg==
X-CSE-MsgGUID: MJyEE/FhSlyDBHwIp+7AMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="53416013"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="53416013"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:49:07 -0800
X-CSE-ConnectionGUID: OHCBWj33RDaJNSVRiexZNw==
X-CSE-MsgGUID: jU7Ei47/SIujTxQj7ckmTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="122992269"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:49:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 05:49:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 05:49:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 05:49:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lAcQb+wQZ/FPVUuugzy3eGPlv5WQjdCeIrtPvky5s+i+Cc3ViDT6dlOIwrr409yNZaqEc2ZA2G/HxfGxjD7ejBJwlt3ow8ne/qOm3PDdtTHhyLQlM0Bt4rs5GFbeyTaQN8xwFLrrdysbyCFEcVxetrcmpNIgc4fuB6VQ66O6gxM7xmlHv0wiDdX+s2b3CAnxg9AgbV2URubNDTEbJT2qurpIPubZty2P/+x+PiPcFHuKLQHkWJxSf05g9AfSnWDQi3P6FFiP71qBcP9hjIL2PUnyK310683XRR+k4U22mbYZp9SchTmcdHHc0kmO/J5nbaUT5pCn045R26PQNMNQyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C9KpxIonJattQ/KhQxCIX9wx5s4ZyMnYaHxbGt8fsBo=;
 b=HCbDlE4VEpTo0ksV/iRMoWtURQ93Ew1mFtxl0gCb5DcUAVWWiy5URV/6yR81tHBb7WNg4r3yAt/uoURqG5dpW4IKNuqP5PsnEPjK0Ie1Ivuev4c+gN4SyJzmdiewyiunZ+/A9yKOcw3x8t9eOGqnWS1OEvdbV70bC6rNw0boPuY1wYmzR2n1LjOB9JOIl928BeOf5UqQr9grqEF8Ea8TMX9ye6dJzr/c5XTxrTiQz7VPW8RuOnxH5+yg2IwHccmufRcIDaFzj2715ZW86r/l9jywKvD8FFP4GTg7D2FMoLI+6Tp2+U0TijUytmuqomL06CIy5XSW594+nB5Z8G7Idw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA1PR11MB7823.namprd11.prod.outlook.com (2603:10b6:208:3f3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 13:49:03 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 13:49:03 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/19] drm/i915: Extract intel_bw_crtc_disable_noatomic()
Thread-Topic: [PATCH 09/19] drm/i915: Extract intel_bw_crtc_disable_noatomic()
Thread-Index: AQHbgkrw8ahLM1X4HEiXuCOQaWFrxLNjE8iA
Date: Tue, 4 Mar 2025 13:49:03 +0000
Message-ID: <d60a97969599e3a12b2718686f630b55229ecbbb.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA1PR11MB7823:EE_
x-ms-office365-filtering-correlation-id: 7013561b-d345-43a1-732b-08dd5b235338
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OC9IeFlnTFJEUUdkYkgxVlpUQ3pMdWtkSlMycGNKb0tqb0pNc3hINmNvT2VY?=
 =?utf-8?B?WEhVM2dVWmtxOG5VUko3Vk1OaitpaHFCdnlsYkszdXYwUnFPYmpvNzJRYVdX?=
 =?utf-8?B?T09nbUdSWERQRjVPZFFmUm9waHhWZU1PNUlHU2FZN2FwRE1aQWF4bitSeVc4?=
 =?utf-8?B?ZWtEM2JKaTFBRms4aXcxZFE3c01JcEJGckRZb2QzdUhQT09RQ3pkUC9qMSsw?=
 =?utf-8?B?czlCNDBjNWlSd0JuSFNHSVpjTkNkQTZNTnNiaHBqL2Z6d0RPYXdEZTlJaUxS?=
 =?utf-8?B?WHlpMlR3UzlOemxSODRoQlpIY3c1M2dtTVIvTHRGdXErM3pwYjBXL1E4czNm?=
 =?utf-8?B?NHVDSHAyTW9EaE0zUlJEZ29tS3k0bGFlVGNhRDlXMTZRN0tFNTlLNXcrRDZZ?=
 =?utf-8?B?MFdsb3JmVmdzWXJCVG9OQ3NCMzRXY2NuL1NmcUF3KzdxK1R3T1crQmtCZUE0?=
 =?utf-8?B?d1NUOXNCVFppaWhWTUp3aUtnMDlyRW5vdEM3SzhBa1lhMng4STNHK3daWlBV?=
 =?utf-8?B?TGtyeXovNFJPYUgrd0NWRWVnM01OaGJJUkU0WTBZTjlnQlRUckN6azdxcHVy?=
 =?utf-8?B?WHBkOXZxbWwyb0ZuZ3FQaUlnSkNLUjR6UHhBc055WERVQUpTSUtWUUhJT0dn?=
 =?utf-8?B?blh2cW9rbkRZb2xLT1lIY3dsaElKTzdTL2h3bmd4cUdGTURFbytYTnRwNFFr?=
 =?utf-8?B?N1UvNW5RTWt6NXNrVXVWejVCMElBSzcxdTBjbmxXVE5uMnFjcU1Zd3ZKRDJD?=
 =?utf-8?B?TmYrckc2ZXIyZGNzbE9ONVRnU1R6K3Vwb3IzUXQ1ckRBMVZEVkFSZE9MeHZW?=
 =?utf-8?B?NW41VDBwbHl4M254Z3ZiQVJ2Vk1vcEgxTDd2NVRvRW10NE5ib04vNndHcU1N?=
 =?utf-8?B?a1hpeStZYXNUT1ZyZkpmZTY5Z0w5RmlxQXZ4MStyaWRpUytDZVFGOEtQNjNS?=
 =?utf-8?B?ZnBMQXFGM3M0a1M3UzR6eDNHenhvejB4bGdZaU5SODI1U2JjV0lkd3U0Vy96?=
 =?utf-8?B?dzd5cGNIV2syTGU1Zk5xTXp3OUV3aEdFb0ZmV1NtUXBZWDZwVlhpRm9lb25G?=
 =?utf-8?B?cXpGa1hzZmY0MUZjcWxIRTg3YVBqMXhBZzRLMzAxaVEzSHY3WWwxQTVQMUhK?=
 =?utf-8?B?SmNabVB0emtjeExTMHlvdnF3NEozMU9wakgzTFErcDRQWlNLRXUwWTlibTV3?=
 =?utf-8?B?TEs3WktybkpGam9CYzdyaGhjSlRGNWNsZlMwL0FGOXBYS3FJYUdBNzdGd212?=
 =?utf-8?B?SHRjeHIrandjWUdBbzl5Y25GL0N4V1FCNXpvL3FWOUtNSnpUNnZmR3h1aG4y?=
 =?utf-8?B?N3hqY09DUFIySjB4dURiTEdjL2lPODZEUjBUVEtGM1VkN2VuTDFjMXlXWHNF?=
 =?utf-8?B?SFFLSGI4WHhyVzdVMFNpTzhBYUxTa0lLVlJhRHpiSW92WnJtOTVvTDN6MkQy?=
 =?utf-8?B?dTJJSnNVdTA0UEFLVm5saUpzYzBoUmhTM2JlUmhkY0xicGdyY3pmOGZ5KytZ?=
 =?utf-8?B?TGRWYWdjQ09wWCtTRGIyT3dFTk82OFpOWmJza3g1ckg2eStBMUVFUHFvaFZZ?=
 =?utf-8?B?aWkvSzU3ZDVtK2hTSVNSRWE1blZxU1NuazlGc1ZiN1FweFo1M3NIMGcrU3Iy?=
 =?utf-8?B?U1RqMmNpUFJXYTRGMkxvMU1aSVNxd3NDck4xQ01kcWFhZldacmRjalc0OXRH?=
 =?utf-8?B?WWptRE9ZdjZWVWQ4YkZ2d0xaVWkzUjNBTStXb2czZ1pvTS9PMlpobXlMNm5w?=
 =?utf-8?B?eWVMNTZNa3kxTHh5a3JUSUxSQVNjYllSMzM4K05wWkxUVU1nY0hYWjEwQjQ5?=
 =?utf-8?B?U1NxaEszdGd4RUZkc1lseE4wT1FsSHdWVXB2UklDR294OUdscmtqbjFmSEZn?=
 =?utf-8?B?QWw5QmtTZ25vODhzb0NWL2NDY0E2eDRDaEVLaTlmOEU0MEIwbnN4R3dEZm8r?=
 =?utf-8?Q?Sx3JHRUH0eWteOyyu6hRssWATjBh9cs9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkY0UmdxVWhMaTNLZitHbExYOUJncnFRTjZwODF1a1MyaTUwcHE5SjN1eHRo?=
 =?utf-8?B?dTZzMllMMU93TmRxd2Q4YlZZQXJRdFl3TnQ1RVpNZEdJZDZRTWdrWnY3dmdj?=
 =?utf-8?B?ckV3TG9QWlY3T0tNY0xaSFlUQWNmZDdUZmxudjB2b3I0YVQ4Q292WjIxaEJQ?=
 =?utf-8?B?RDhFN1FBYlRibDk2bGxLb2lTc1FmQnZGWUR4aXVWN2NLOGtaNjJ1WEZ5cmFa?=
 =?utf-8?B?UnVpUk1jbnd4c2llczNoenZGSWVnSndHdW53OXhIbjlRWW9CeHlrWDBHUnRp?=
 =?utf-8?B?MFdWYWF2MkZyU1gxU3BJYU95WlcrYXN4cHFFaVZ4dG5MRS9WTS9CWGZ0akU3?=
 =?utf-8?B?d3hoVUx1ak0zV1dXMmxoRTlrU3VFaVkrOUx5bzJXQjYxQnZPOXR6MkpjMmMz?=
 =?utf-8?B?cS8vZVllNXU3VXI0TVBvN2RESm90RDRFWEhtUklaOFBSNmt1cTF6dytuR2Fo?=
 =?utf-8?B?S2xLV1IrcDJ5VmNrWDhsUmJpbElsaU40QWRUOS8xQnpwTzJxbVpkMEczT0NR?=
 =?utf-8?B?MzBVYno2YVl4SnZHY3dHbTUwU3o0RDFsZ1VxNG1VSWl5U09RWjlZdWhwUUVj?=
 =?utf-8?B?c0NGejdzRzZ6cmp3ZmhQY2hmSnQrU3dVZDR5bFVuTXp1K2JuNk1sbXU2UTZ3?=
 =?utf-8?B?WGxkaUk5OTB4blB3RzZHSlNRa2drYlhubHZTSzBmU3hRNEFobUhiTFAyV0s0?=
 =?utf-8?B?eUEvSEt3UVpPeThwSUhSakZ1dExUUUhDUE9veFdWYnpxU2FBZmZVVWJFTDc0?=
 =?utf-8?B?UVlSTnllbjhndXFrajF1TVpYTWd2Zis1V0hhQ2lpRlZSc25yaXY2SHBmMWsz?=
 =?utf-8?B?Q0JVamVudXlNTXh3K3VadVNMVXhlaVB5ZnlmVWd4aGVzdUMxUUhheitOVWNU?=
 =?utf-8?B?TSt2UjI0RE5oemswcTAzb0dGamdsMVJNTmtZNjN4elo3azVhNkdiaE43T1Rq?=
 =?utf-8?B?ZVpNV3E5dUtTNEJ4ZmJ0cjlSbVV1SStQWjVlSlJCdXY0c1YyeXM0YWtOYU1F?=
 =?utf-8?B?Mk9OUGJ0dXJlN0xPKzVlYUtQcmZSeWRxR3lsc1U0bFo2R0hkVVMrUklyOTdj?=
 =?utf-8?B?QTl2OTBERE9NYXNOdE94UzJNd3lpN3l6aFNBVnc3bTRyV0tKR1drZE1tYWEv?=
 =?utf-8?B?NEdOYytJaDNlSVc4dUFpVTNiZHFjUnp0Sm9Jc3JoNUJQK3B1QThXb1dyQlN3?=
 =?utf-8?B?R2NLeDZTM1F4cEI4QmhROHhZaFdvQjNrTWQyQlhEeDVNdGhsdXVETjFZNEV4?=
 =?utf-8?B?bGJiUmMyekNweml3dWFudFBPZmxFVkQvdkp3WEhobFdqd2h0Y2lwYXJHVElE?=
 =?utf-8?B?Sm4vblJlc2JVNWEzSmVXZnRGejNqWkRFWVRHVEVjdFNKMFUweXFBbTR0Q1la?=
 =?utf-8?B?WGlWb0lPUlViQi9ta3dMdjJyVVJzbkxZWlhtbXJmdnNpRDBtd3FaY2pEK3dJ?=
 =?utf-8?B?cEhyMk9qb3VwTjdTbTdaMlFnNzlNTE5PRkdRSk5qbFp5ZndpR1NmZ2hoYVly?=
 =?utf-8?B?L0hyMEhOTGtkanpQTnMzd1RhOWFxeHhxZzlxQUdnUGFnZHRqY3NYd3NoYWZt?=
 =?utf-8?B?NzdQMTVIdnNRTHNBSXArTFRVS2ZCa1R4anY1VEdEa1BmUWM5cHNXVEFoczlT?=
 =?utf-8?B?ZEhwamV0aWtIRG9yUERLUlgrbVdTM0NJVmN0RkYvc3cyNjZTeHpRMFRZZGl0?=
 =?utf-8?B?WmdWZDA2QTN6TGhqS2ZmbW5scnh3cTN4M05kcUNHZnIvRTFZYndyaXVLUVRX?=
 =?utf-8?B?T0FPSnI3L0J4MFp5dVpvS3RiL2U5R0Rja2tGSytjVWRhY2lqbSt5SlpTU3RX?=
 =?utf-8?B?VHJYWXdXWjFOZHNSVmMzdmwvRERZOGpKL08rdWV5RHQ3SU5LODZzZGwreG03?=
 =?utf-8?B?WVh6NTc1REtIU2phQnhGTkZtcTZ2dGpZRjF5N1ZQOG9pVWRUd1BRekZQYXBi?=
 =?utf-8?B?V21Ua0JKbDFKaWhtRmE1S3lBVnRrUVBHenRSUnQwVStNbW1BYWp1YWlHUXlz?=
 =?utf-8?B?ZzlYV3o3OWNldzdGUHZTTzI2cGZvZXVWTHE1ZEV6N2RQMlFaZTIwWnJ0OEcw?=
 =?utf-8?B?cTBNV3U4eUF2S3B2Y0UyQUV2NS9OK1RjZXdHZVY2WUJCa3JDMTc0QklDSHlo?=
 =?utf-8?B?UzlEM1lubXdvUVhsdWVBR0JCVDg3K2tZVVkxTWdpQTJtUm1tTS9lY2xyejk4?=
 =?utf-8?Q?h8j8x3OOIWF6oKeRRI6fkOA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C7B111943B57724EA2091FE37AC6EB22@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7013561b-d345-43a1-732b-08dd5b235338
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 13:49:03.4187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mHwcnb/1DL3m8bpKgFAzp46fb4E98jbGJn2JILwGNCedM+g6pwKcrrF6yUuJssGi9uYoCDszb4m/64OeGfZzL8dfTbuF5TjIu07BIxCjT3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7823
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSG9pc3QgdGhlIGJ3IHN0dWZmIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiBmcm9tDQo+
IGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pY19jb21wbGV0ZSgpIHNvIHRoYXQgdGhlIGRldGFp
bHMNCj4gYXJlIGJldHRlciBoaWRkZW4gaW5zaWRlIGludGVsX2J3LmMuDQo+IA0KPiBXZSBjYW4g
YWxzbyBza2lwIHRoZSB3aG9sZSB0aGluZyBvbiBwcmUtc2tsIHNpbmNlIHRoZSBkYnVmIHN0YXRl
DQo+IGlzbid0IGFjdHVhbGx5IHVzZWQgb24gdGhvc2UgcGxhdGZvcm1zLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8IDE0ICsrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArKw0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jIHzC
oCA2ICstLS0tLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5n
b3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jDQo+IGluZGV4IDIzZWRjODE3NDFkZS4uNDE3ZDJkNTI3YWU0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC0xNDIyLDYgKzE0MjIs
MjAgQEAgaW50IGludGVsX2J3X2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkNCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0KPiDCoA0KPiArdm9pZCBpbnRlbF9id19j
cnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICt7DQo+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMpOw0K
PiArCXN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUgPQ0KPiArCQl0b19pbnRlbF9id19z
dGF0ZShkaXNwbGF5LT5idy5vYmouc3RhdGUpOw0KPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+
cGlwZTsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDkpDQo+ICsJCXJldHVy
bjsNCj4gKw0KPiArCWJ3X3N0YXRlLT5kYXRhX3JhdGVbcGlwZV0gPSAwOw0KPiArCWJ3X3N0YXRl
LT5udW1fYWN0aXZlX3BsYW5lc1twaXBlXSA9IDA7DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMgc3Ry
dWN0IGludGVsX2dsb2JhbF9zdGF0ZSAqDQo+IMKgaW50ZWxfYndfZHVwbGljYXRlX3N0YXRlKHN0
cnVjdCBpbnRlbF9nbG9iYWxfb2JqICpvYmopDQo+IMKgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5oDQo+IGluZGV4IDE2MTgxM2NjYTQ3My4uYmQ5NGRkZTIwN2VlIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oDQo+IEBAIC0xNCw2
ICsxNCw3IEBADQo+IMKgDQo+IMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7DQo+IMKgc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZTsNCj4gK3N0cnVjdCBpbnRlbF9jcnRjOw0KPiDCoHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlOw0KPiDCoA0KPiDCoHN0cnVjdCBpbnRlbF9kYnVmX2J3IHsNCj4gQEAg
LTgxLDUgKzgyLDYgQEAgaW50IGludGVsX2J3X2NhbGNfbWluX2NkY2xrKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAkJCcKgwqDCoCBib29sICpuZWVkX2NkY2xrX2NhbGMp
Ow0KPiDCoGludCBpbnRlbF9id19taW5fY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsDQo+IMKgCQnCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2J3X3N0YXRlICpid19z
dGF0ZSk7DQo+ICt2b2lkIGludGVsX2J3X2NydGNfZGlzYWJsZV9ub2F0b21pYyhzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0Yyk7DQo+IMKgDQo+IMKgI2VuZGlmIC8qIF9fSU5URUxfQldfSF9fICovDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRf
c2V0dXAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9z
ZXR1cC5jDQo+IGluZGV4IDEwYTI0MjFmN2M1MC4uZTliMDUzMzUyNmY2IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0K
PiBAQCAtMTU2LDggKzE1Niw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfZGlzYWJsZV9ub2F0
b21pY19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gwqB7DQo+IMKgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjKTsNCj4gwqAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRlID0NCj4gLQkJdG9faW50ZWxfYndf
c3RhdGUoaTkxNS0+ZGlzcGxheS5idy5vYmouc3RhdGUpOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfcG1k
ZW1hbmRfc3RhdGUgKnBtZGVtYW5kX3N0YXRlID0NCj4gwqAJCXRvX2ludGVsX3BtZGVtYW5kX3N0
YXRlKGk5MTUtPmRpc3BsYXkucG1kZW1hbmQub2JqLnN0YXRlKTsNCj4gwqAJc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiBAQCAtMTc3LDkgKzE3NSw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pY19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykNCj4gwqANCj4gwqAJaW50ZWxfY2RjbGtfY3J0Y19kaXNhYmxlX25vYXRvbWljKGNy
dGMpOw0KPiDCoAlza2xfd21fY3J0Y19kaXNhYmxlX25vYXRvbWljKGNydGMpOw0KPiAtDQo+IC0J
Yndfc3RhdGUtPmRhdGFfcmF0ZVtwaXBlXSA9IDA7DQo+IC0JYndfc3RhdGUtPm51bV9hY3RpdmVf
cGxhbmVzW3BpcGVdID0gMDsNCj4gKwlpbnRlbF9id19jcnRjX2Rpc2FibGVfbm9hdG9taWMoY3J0
Yyk7DQo+IMKgDQo+IMKgCWludGVsX3BtZGVtYW5kX3VwZGF0ZV9wb3J0X2Nsb2NrKGRpc3BsYXks
IHBtZGVtYW5kX3N0YXRlLCBwaXBlLCAwKTsNCj4gwqB9DQoNCg==
