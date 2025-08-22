Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE47B31CB0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 16:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D0CF10EB3F;
	Fri, 22 Aug 2025 14:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="chyr2Xcz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3527510EB3E;
 Fri, 22 Aug 2025 14:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755874281; x=1787410281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WW3dCN2mLzU722+NVhQcONOesp21wmeXrzfZfjpHCLo=;
 b=chyr2XczZKuSYRDcl2eF8dT0G9VIbbU4jyCxgRXCkSLAPaUjmyUG/doZ
 vK9bKhTzLynhHaSn/CLJYQbD28k5ukTcFlImGHjsam/CgRrDBTFhe+Gyi
 /d/SAikF+1O0CIabxnW8jJulGdYiMM8Syfx8sYJi2VlyJJpHtPDXyguxx
 PpMZuOZWbnmKhlAtqiEBTQpc4O4pnNCUo0BeB/efEd6vlWOPnak/idNtT
 GpODIAumHPZBK1RG6wSFkuaR2/j85QkffiXlXPXDkodFdB+75lzXXznFn
 X+hkgdfVLTHpHWZMzPfWtGoAd+Dpzzt/xMPEdAQIbK/KacURO86OkyvzU w==;
X-CSE-ConnectionGUID: xL/21dKNQRGZoDIdMFFO9Q==
X-CSE-MsgGUID: I87HsJziQGGj4F3tJZQZ2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58109167"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="58109167"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 07:51:19 -0700
X-CSE-ConnectionGUID: 9KE/NfFQQiiPO/+U1Lmj7w==
X-CSE-MsgGUID: 0bvYo8cSRdWeZVs/4XoaOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="173137482"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 07:51:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 07:51:05 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 07:51:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.49)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 07:51:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FqQelNzIY/AdDt9LPxx6Rn0wGvEc7R/4dvOBhj00W6BcfDVDVR0c/P7pOzojYe6X/F3l0r5GdVaKLD1uTAgfWrNPYM9Eje3Rk2jCZwlUMSLWW8e4rTumzGWrpHvVnaIdvkyUKab0wyULsXeQm80NafOhYN46/yYqDVUGPNmBr+9POIqq/MVB3MxBrv/wbwRgzKs3B2K4oAOFx58GORFFcryOOMCKJH37x0fMUDkvFTI2yZmgqqFHsGfpByK0yQ1UTwWj0D4kRORxivRhvnRqAcBXifDP09Rrz2yY7V9VqWtj811KmxIYT56q19mQP5F0qvUn53peloAotJAd8nbniA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WW3dCN2mLzU722+NVhQcONOesp21wmeXrzfZfjpHCLo=;
 b=JW+IIZH++i5aWEuLJ+XEGbf2UuRr6OB9woJhViwBUSjlXFXDpoaY8KsAgV2B6ckK9No7G7SDxLlzT0+5USKC8LyfeBCW8/NHbXRjuJbMYbmn0ZE+HLWSkASRPQM2uehWN0UfSiHBGbWHQQDS0E+C3/tKd/GpqeZEa9DM1bOPs4xOUCjvxLoKKw8xo2fWsXm9ol2TMb0jm2j/MpcCVQL1QBpqxZEDG09awysI2bJjgkoOX3MUPmQy43YqDm4eft2KW6VLJ3exVQHirkGdUbYgoc1HbXANzbJTLIHLlZlQlFrQVw1xkmnMubPlLR1FIXBDMItYP0nkkrZv9VstRpIjcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5246.namprd11.prod.outlook.com (2603:10b6:5:389::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.19; Fri, 22 Aug 2025 14:51:02 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9052.014; Fri, 22 Aug 2025
 14:51:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: check drm_mode_vrefresh return value
Thread-Index: AQHcElht53yquVJ40ki83z3ASStRc7RtFVsAgAELNoCAAJhTAIAACsWA
Date: Fri, 22 Aug 2025 14:51:02 +0000
Message-ID: <0f3a7f6e90f05972e058e03e00ebec84b759979f.camel@intel.com>
References: <20250821045918.17757-1-jouni.hogander@intel.com>
 <20250821045918.17757-2-jouni.hogander@intel.com>
 <aKca3nYynsprAZU1@intel.com>
 <377b98dfb05d9c4a9ffd0c64c4e8b9fea98913c0.camel@intel.com>
 <aKh6zC3Tc74TcGWG@intel.com>
In-Reply-To: <aKh6zC3Tc74TcGWG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5246:EE_
x-ms-office365-filtering-correlation-id: 2ff9ee18-e786-481f-f45b-08dde18b5081
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?V2FWcktDcWRNWXgrYjRmZGVFQ055cVQxVXhMTWg3aVFXYlJPMlZFRTBSUjFR?=
 =?utf-8?B?ZHJJak1DOFRwQUlSRytKQ3hUVmVXNVF2U284NVRHdG5XdlRIWU9WZmIycEhq?=
 =?utf-8?B?SmRNc1dEUnFYc0Vpb1REV1prMjFFQjdnS3ZiTEJmK1crRnZ5RXgwYVNXTjRO?=
 =?utf-8?B?RXdkdW91NVZZeTFDWW90eVNwRUxvMDRXNmk3MjNxTFV5dmxOd01GbzgvYzcw?=
 =?utf-8?B?U0JFenFmdkcwQmRmQ05SdVVoeXZQeDRNbXZJUnVoeHBaWEp0QTgxSHdvTzNO?=
 =?utf-8?B?MnhCWC84STFHN3ErWlNVNXNtUVhEMUVCMVVuZEc0Z1Rud3doYnBGenEvNEFH?=
 =?utf-8?B?elF0VW0rYkI4am1vWkk4RXZDMHA4UTd4b2o1c2RPTkNYTTRmQ1hXdzA2SVpN?=
 =?utf-8?B?eUpxbFBxM1NyOXk4ODdJOG5LQWxiZTNOcnYyOURWZGV6dUJJUFJOcHVUZVpG?=
 =?utf-8?B?RUpCeTRYa2JMdzdtU3VvUXRyS2o4Z2JDUWJoMlI5ME5kWk5PaWxwbWF1cHdh?=
 =?utf-8?B?WHgzejIwUVppOUdyRUx4OEpLcmo1V0VlSDk3anpJdW1zWm5IQXowVDdvT1Fs?=
 =?utf-8?B?d3dFUnJuN1BMaWdKTVRGbUVGemxqQ2NrK01VRGNja2xkWks0Ty9nc3BMbzNY?=
 =?utf-8?B?Ykxwd3JoUElkWktzYjNlSDc5QUEvNmRaak1yRGZEcWQ5c1FhMStha2YvVnhF?=
 =?utf-8?B?YlU4WnB6bmpJYnByNm5Kb1l3MzNUMXlJTksrYjBNNUJVd0hTRlU2eVZkMnQx?=
 =?utf-8?B?ZCt1Mkd1UUR3REZFN09XOE9QZWJIQ0tPMUYvQi8rMlJia0I5QjRYQ282aHBa?=
 =?utf-8?B?VmRibWRreVdsWVlYSFkxQUthWGhUT1FTTC9aVVozVkJBL0pUMlR6eEM1WkZS?=
 =?utf-8?B?a0ZMbmZvK2UvVTZpTk9zMGpGVXA3UkQwa004VFFJd0hiMHFnWmgrMWI2MjdZ?=
 =?utf-8?B?VTBBSXFLbHU3aHlsVzlqeGdtMGtRZS9kN1hCc3BKL2tYM0NpNUNlMXJkNU5V?=
 =?utf-8?B?RjZSUnZtSU1KOVZZa0M4Z2xVT3N2dFk5ZFpONGEzWDl1Y2l6WUIwZk00UjVS?=
 =?utf-8?B?a0dqd2krZkZ1UUhqTmk3dEF5NUlWMy9ZSWs1dFF2WWw3cjloVjFqUzZ1TXA4?=
 =?utf-8?B?RHRaM0t4T0JTNnI2VlVTWm5JMCtuT0NUc3FuMmxCb3ZCeE4xMXVkald3eXBZ?=
 =?utf-8?B?Y1RuUUFWUnNxNEdQK0lSRVZsc242VVNxaFcyRTR3d2ZxaHFtQ2tmZkVPQ3Ra?=
 =?utf-8?B?S0twenFnSG9CTDNIYmZzQ3I4MjhhSFRCckJkS0NxcGJmaGNXZDVwVmlpVlVp?=
 =?utf-8?B?R2cyUmJQclFuU0Rjam5zbm0va0sxRWlJRTVjLzNtUzdlRE5uNVRBZmZrV1g0?=
 =?utf-8?B?RUVJWW1JNzRyckRWT09RZ3hkVWtxUTB6RUVkbTZOQ3BHdlRMa3M1L0VFeTda?=
 =?utf-8?B?WU4vNHVCeEVpZU5BSkdJY1p6NkcxRDNDalcybW04bkEzazFuUUQyYTMzN0w3?=
 =?utf-8?B?SFloaW43ZFF3Um8zWERwd0xtMVBNVkdhUEJyUk1LdmlrRkhsZUdBaDUrUGtW?=
 =?utf-8?B?NnZtWlFsNStCMEluclIrQWpFQlh4MzNVZFo0a1BuemVHUUZlOHQweXVoRm1Q?=
 =?utf-8?B?S21URlR4Tm51TjNiOUZwNFhlN3VMWXBiaHhJQ0NlYkZyRnlOMUZQdlZaNlRm?=
 =?utf-8?B?YmV4cTMwSjAvaU5tdnBWTTZIV2s3a1daemVuSk1GWDFNbzF4T2REU0xUZ0FM?=
 =?utf-8?B?VG1OM3BJcC9FTW8yN0VHNjRnVk1tMkFjc1JleHVMMUpvc25wQ3dzSUF6anpP?=
 =?utf-8?B?a0RYWXdTek5SK3g4VTExZ0h0SjBuTzZwOXBWSUhwc1JtdUt4R2d0bzB3QlBv?=
 =?utf-8?B?K3NjN0pSNHBCOVovV0doN0xvVTNHU0U1UFhwRWtWeVpJb2o4VmFLbTVLeG5N?=
 =?utf-8?B?dUgxSWNaZ3RqWVdxRjhWTHEzS2k0b050WWgyKzh2T3lmalZWbFo0TXJmQmFC?=
 =?utf-8?B?bEpMdVBmZXF3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UGY2Z2xRU051Z054blFFTDJKSlFxYUc2TXh4Njg2MjR3RkljUHE0ZnpNdTJW?=
 =?utf-8?B?RmtKV250Ri9xNXpDbGl5dlI0Ukw4T1hoNnBQYXB3bkVmdFNCa1hhWUNvRzZ1?=
 =?utf-8?B?VmN6ZVY0L2Zua0V0Tm50YVRZRStsWjdWMEtXSVMyUmR4UUd0R1BGSUFpSnd4?=
 =?utf-8?B?L01jU2UwemRZMTFtSkVhZ09jcWZwQlg5emVTSWJzR3JWTUFQRms1UE5BQm1r?=
 =?utf-8?B?QUY3SGpXZmdBSFpSZTRFY3o1UmE3Sk84b1k5MGdHSW0wbFl3K0M3OGQ4akV6?=
 =?utf-8?B?LzVobkxrSUdKMHBVZVR0bWVhM1E1Z1Rpd0NTOVZCVnJ2Mjl0MmdMOU5kK2hO?=
 =?utf-8?B?MDBiNU9vS1lKVG5mWXdVcWV2amErMmYyNTh6eHJhbVJvUjJBeWUyM3dTSllX?=
 =?utf-8?B?czFqQUJXWjJqQzJPUjk1VEw5YmVOZE9OdTd0VkY3b0pqcGZPN0lSR2NGQzYw?=
 =?utf-8?B?UjNVblg3d1M3S1psS0t0eDl3cGhkRXZlYVZzMkIvc0R6SmNDRUczcElHVERC?=
 =?utf-8?B?YXJFc1ZrRnFIRlJJUWp3SzlpeVFscy95a3h5QlRrVll5TzBUTmExYkI0RFVz?=
 =?utf-8?B?K3F6dXNPTjhhVHV1WktPMVo0WXRoYVJvN25nMVFkclNSNmlJZE9XYUo4S0t3?=
 =?utf-8?B?VWpBTlg2a2hiNGdPMTFTdWV4dllKcVlJN2ZzU2tZaFYrY2pYYXR1RDZpZmI1?=
 =?utf-8?B?QmR0Sjc3WFlReGJVVDMrUWFmWVlRRzlUTkx6ZFlkZzB0QlY3bnI5OERVOUNs?=
 =?utf-8?B?K0RtNWZ5d3kwTDNHVDQ0dTdnUUhTR2hDVXFPcnZJckIrQmYwcDgvS1dOZjVV?=
 =?utf-8?B?c0FVYlhxRG9zdHh2OGU1QVROSWtvZzJHU2JWV1NFZ2NWdkFaU0gzb2V0MnBt?=
 =?utf-8?B?NGlIOGtoc1FnVmZ2eEpJeFNoRGJWQzFPbDl1MmdBZEo2K0NDRmRIYWRwaXR5?=
 =?utf-8?B?TkpnOHIzSUdtNFdranhTL29lQllBRkhHR292UUJYZ1RkdVBDNVJkNU1UTk03?=
 =?utf-8?B?RDlEQjhad2JpKyt5aWtVOEdpV0tvQVZ3dFptdktYK0c1UW5sZFcra1QrSkZ0?=
 =?utf-8?B?dU9OOTgrUlBGSDRKMVJlb0hZc3ZWeUZzUGFsVzZwQ05DdGZIaXFqZGdCc001?=
 =?utf-8?B?Q0lJWkFWTHpZODdMUDdzY0JjaXhKMWlzRWY0V2wycWZUZVYxRFZ1MXkzcjBW?=
 =?utf-8?B?am5VSFg4SThKbCttck9qREUrRTZwNWJQTlR6dm95SjFPTm9yQ2tmQW9KOU1W?=
 =?utf-8?B?Z29qdTdTMXd1RHRjdWdOZVdueDFvWUJJU1YrUVhiZTJ6OXZjbk02WU1TbUVN?=
 =?utf-8?B?Q1hUQkEwOXoyK2pTbDBLamNkdHVLdXgvRWFEeGtMUmJKdW9ickptaWxIeFht?=
 =?utf-8?B?K2VGMzAvcnRIT1MrUHJGSkErTTFsMENzakRXTFY5TWxaU2lJbmpWM05WTDFv?=
 =?utf-8?B?QzYrZEVGTW9yd2VpaUtHWC94UFFCVE1XdXhwSEZoWW84MnNYUU1kekNrVm5N?=
 =?utf-8?B?UU9tZFZQQ25tVFUzMEkzaGlUSXhOMWVlZkg3Vk1LSWJXSlNrdXM4WkJ4UEJy?=
 =?utf-8?B?eHhzVjZRUGdDTG5yYWM1TTgxNW42SjFNWmppQWNLNFMvdkttRzFLc3k4RzR0?=
 =?utf-8?B?ektmMU1QbWx1RUxBTjBhOW1TMFM5ckxjQ3ZqazZLQTVLenNJclNqMlFadGpO?=
 =?utf-8?B?ODN1Y0Q5ZnJ1L1JsOTYza2JrSTJSSkZuakk5MlM1dFRZSnp2cXlyTTBQZDVE?=
 =?utf-8?B?NVZRbHRXalgrYWc4OXVFWGJaamY5b21oNThRdnllcGp5T3VEQVovYktjeFlI?=
 =?utf-8?B?UGg3dWxJbHVyN25nYjVnVCtiNDFkcTBrT1hSUTR2cTZkcDh2ZlJSVGhmc09N?=
 =?utf-8?B?d0RZcWlqb1hpaEdzQzBhL3FKRjJsdjRjdjd1aUdiRVB6NzdsVDJCVUxvdnBz?=
 =?utf-8?B?Mm1ZaEQyemJ2di9NZDYxZ2JaME9MTm1CYUVDSzNRSGxjd2ZXVnRSY01qb1I0?=
 =?utf-8?B?NU9OZERRUmVaTVltTlZ5Tk5hRm5zSDBEcXc4SHFuNkx6TGx6bmZxN1dyR2xt?=
 =?utf-8?B?SXZvNXh5dXBHUXZiYUVBZDJlR1MyZkpCK3hCRmJDbTdNb3V1QjRzQ0xTNHdy?=
 =?utf-8?B?Tyt2L0RLN3pqUnF1dlNWMFVUWlZ4enlBR1hocCs1MWtKRnBpdDZ6WktOVmY3?=
 =?utf-8?B?WVVYT1c4cmdsd0lzdVAzZmxWdDBLZGhoUG9JWEc0ci90bEY0b1dkNXgyUmRW?=
 =?utf-8?B?SlFWMHNMTndNeFZmSkZ6T3pMNFdBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FC22502D282AD449A0409976129F811A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ff9ee18-e786-481f-f45b-08dde18b5081
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 14:51:02.3330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NffwabbRagO2Qx3O/7/moVHQI4mpgecxso4Y46E+qFTUHiQGy2ji1N+imqQJl6jlCkR8RMJZhCN10mU6+o5b3tGM26IlGK6/gN6D0w05z4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5246
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

T24gRnJpLCAyMDI1LTA4LTIyIGF0IDE3OjEyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgQXVnIDIyLCAyMDI1IGF0IDA1OjA3OjE4QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjUtMDgtMjEgYXQgMTY6MTAgKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFRodSwgQXVnIDIxLCAyMDI1IGF0IDA3OjU5OjE4
QU0gKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gQ2hlY2sgZHJtX21vZGVf
dnJlZnJlc2ggcmV0dXJuIHZhbHVlIHNhbml0eSBiZWZvcmUgdXNpbmcgaXQgaW4NCj4gPiA+ID4g
aW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0t
DQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDkg
KysrKysrKy0tDQo+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBpbmRleCA1YWRkZGU2MzE2OGUuLjhjYzIz
MTRmYWM2ZiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiA+IEBAIC0xMTE2LDExICsxMTE2LDE2IEBAIHRyYW5zY29kZXJf
aGFzX3BzcjIoc3RydWN0DQo+ID4gPiA+IGludGVsX2Rpc3BsYXkNCj4gPiA+ID4gKmRpc3BsYXks
IGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlDQo+ID4gPiA+IMKgDQo+ID4gPiA+IMKgc3Rh
dGljIHUzMiBpbnRlbF9nZXRfZnJhbWVfdGltZV91cyhjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gaW50
ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gwqB7DQo+ID4gPiA+
ICsJaW50IHZyZWZyZXNoOw0KPiA+ID4gPiArDQo+ID4gPiA+IMKgCWlmICghY3J0Y19zdGF0ZS0+
aHcuYWN0aXZlKQ0KPiA+ID4gPiDCoAkJcmV0dXJuIDA7DQo+ID4gPiA+IMKgDQo+ID4gPiA+IC0J
cmV0dXJuIERJVl9ST1VORF9VUCgxMDAwICogMTAwMCwNCj4gPiA+ID4gLQkJCcKgwqDCoCBkcm1f
bW9kZV92cmVmcmVzaCgmY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiBody5hZGp1c3RlZF9tb2RlKSk7
DQo+ID4gPiA+ICsJdnJlZnJlc2ggPSBkcm1fbW9kZV92cmVmcmVzaCgmY3J0Y19zdGF0ZS0NCj4g
PiA+ID4gPiBody5hZGp1c3RlZF9tb2RlKTsNCj4gPiA+ID4gKwlpZiAodnJlZnJlc2ggPD0gMCkN
Cj4gPiA+IA0KPiA+ID4gSG93IHdvdWxkIHRoYXQgaGFwcGVuPw0KPiA+IA0KPiA+IFRoZXJlIGFy
ZSBzb21lIHNhbml0eSBjaGVja3MgaW4gZHJtX21vZGVfdnJlZnJlc2ggcmV0dXJuaW5nIDAuIERv
DQo+ID4geW91DQo+ID4gdGhpbmsgd2Ugc2hvdWxkIGp1c3QgcmVseSBvbiB0aGF0IHdlIHdvdWxk
IG5vdCBlbmQgdXAgaGVyZSB3aXRoDQo+ID4gc3VjaA0KPiA+IGJyb2tlbiBkcm0gbW9kZSBkYXRh
Pw0KPiANCj4gSWYgeW91IGZpbmQgc29tZSB3YXkgdG8gZ2V0IHRoaXMgZmFyIHdpdGggYSBib2d1
cyBtb2RlIHRoZW4gd2UgbXVzdA0KPiBoYXZlIGEgZ2FwIGluIG1vZGUgdmFsaWF0aW9uIHNvbWV3
aGVyZS4gZHJtX21vZGVfdnJlZnJlc2goKSBpdHNlbGYNCj4gbXVzdCB0b2xlcmF0ZSBzb21lIGFt
b3VudCBvZiBub25zZW5zZSBhcyBpdCBtYXkgYmUgZmVkIHdpdGggZ2FyYmFnZQ0KPiBmcm9tIHVz
ZXJzcGFjZS4NCj4gDQoNCk9rLCBJIHdpbGwgZHJvcCB0aGlzIHBhdGNoLiBJIHdpbGwgbWVyZ2Ug
dGhlIGZpcnN0IHBhdGNoIGluIHRoZSBzZXQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg==
