Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBDEB39872
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 11:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCCD10E95D;
	Thu, 28 Aug 2025 09:39:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+AleQT9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5638610E14F;
 Thu, 28 Aug 2025 09:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756373951; x=1787909951;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=sf33jWURl5uWNkZX4U8DN7GJU+VhA3DOKYmtoGB5FlA=;
 b=O+AleQT95VWdwyUL9W201WyzRhYgiK6BQ/QTX9C5zjWKopVT38AxzGTu
 fHvQpfrYia2wpMfN+Hz7E09pIny0LqwneI1dbMw+NCoK2ljkXka0t72xq
 WI/IVhBxZJwvjdbNnuINOktY93F4P5XrdWsr++uWbUD5NxdKU/yn18wUP
 B6fHaJ/5VoQbzUyEWF65R40hGXfXNUspKVV9xMFk68j0auFfcmuy3kmeH
 +EpSNrToGHid81ayR5FDnT0M7QV9keL1C5AGTpNwIiMOrQ3Y+1y/yNYwm
 FQmnheKCw3QVG9px7dFOX4HHeBzIVaBr1fUvryiE7NU03rO3W7ixrIx9W w==;
X-CSE-ConnectionGUID: ujl0BHnSRYuwdm3Nkb2jLA==
X-CSE-MsgGUID: gpg26UcBSQScLHQHjG9OPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62472558"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62472558"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 02:39:10 -0700
X-CSE-ConnectionGUID: 77n6e9kWRHKClrmz+y7qLw==
X-CSE-MsgGUID: 7CclYrkxRp+W122JQlUA2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="207212818"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 02:39:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 02:39:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 02:39:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 02:39:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CRMSIUpKB1mKllIPbE0VBT5yfT2ZNKy/K/xmtZwLWDdSnQI7HysWmcQ+Ep/ypEuIx8dOmsRoIQUOsYFu5CZQPK/jIXkG6cHPBLfVYhr5CYZ813VjKatUwvzbHzJlu9tI9Ih8LlAisEbkOtki+Khw97dYEn5CEOV8KPt6H06PRp+kCR4olISXUs3fYbo460DRY8u8oc4szUBwba0l90lRXfjN2IsxAaF+s7vwKzyle8GhNfahmrh0IvyOWyDWBOy0eOKVzApzcU1zUXZe0WU5faLc0T+No6qHyctektXLUb78D9maAqhPHOEp5wAaa9VrbpkdT9U/gcc4WlGhes7kfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sf33jWURl5uWNkZX4U8DN7GJU+VhA3DOKYmtoGB5FlA=;
 b=UEVIguoSpWtOwdAfpXVgnJAU9HF7VK2MxyXmmGCm3gf2NjXycUjrarKoIkU+U/3blbedxrniBirklreXKpLonGmxHeKriVisbZVzogpftuNMtAUP/ZAvQg3JroSGKhkflN858V5vE9xduX6+HFa2OeKQnhQAbehbKRvRxet8dNJoB8+4xTp7tzCMFrkAOX1MvoXs1volB2KL2eeW5UJijPqAPix0Uv1l0PXqYCeJ4yJ4ZR6Gk0IaqLJCkb+G/5JH1lso6ycW+dWxRe/ThUzDmUiGzXUA+wnvqKXNTFgflWz8GAeCLXJ/XQxSr1At9XOm+VZggXMJjMYbyBnnGqvi4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL3PR11MB6481.namprd11.prod.outlook.com (2603:10b6:208:3bc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 09:39:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Thu, 28 Aug 2025
 09:39:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Thread-Topic: [PATCH 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Thread-Index: AQHcDCDUmbNJx2oykEK9Jk5Up/e4K7R3xFsAgAAijwA=
Date: Thu, 28 Aug 2025 09:39:03 +0000
Message-ID: <b33c00334f8f7c22e28e72fa2220245108198541.camel@intel.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
 <20250813070617.480793-4-jouni.hogander@intel.com>
 <DS0PR11MB8049AF52A8708C528B4215F0F93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB8049AF52A8708C528B4215F0F93BA@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL3PR11MB6481:EE_
x-ms-office365-filtering-correlation-id: da47012d-255e-4336-dd04-08dde616b9f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?L3BxUHRjcXMwaCs4RWc0WnhiaGpxcE42WnV3V2lESDZSL3pENTZxbllBMi9Q?=
 =?utf-8?B?MURKZVZ1Qy9vU1BmQ2NyWUc5c3dvYUJMTEdvYXNyMWV0a2pISHNOdWMvQnhm?=
 =?utf-8?B?eWRBcVU5T0ZnNEZ0YXdRSjFZTEdqYy9seitIcmpXSFczYnNOVkM4TzdwZXA2?=
 =?utf-8?B?QXBkTHpwQTBGQi9HZGQxOVJ5cHFaNjBLbFNwdE01OFg3ME9GbTJidkQ5MnZu?=
 =?utf-8?B?ODJLWGZRVVRHZ0UyT2ZpbzQyU2RBNUFRdjVSMlJ5VzlsL0NoaktiTUlCazZj?=
 =?utf-8?B?RXJ5TWx2OUhZZFJGQTM0cG9yRHVmYTBWaC9jVndqY1lJR2hHdnhHbFpCM3Vx?=
 =?utf-8?B?eHluTzN5RnVSSVhxTmtBSGpjOXc2VHZoZU1FTGk0bDZrcVE1cURxMklGWDRM?=
 =?utf-8?B?cG82eS9pQzNlMUhRanJFTGlLcTBpeHRPdjdmQ3A0bDN4RFdiVnE1M3ZEa0d1?=
 =?utf-8?B?QXdOVVVoSHFLb2NEa2ovcDZzOG1lM0lQQ1ViZTJQS1U5WTR6QmxtaEpRTkFQ?=
 =?utf-8?B?OUd1UFNReFdtdXRycTcrc0tvU0FyWHdON3pUdTQwRG5qUkNsWDVlQktmV1Q2?=
 =?utf-8?B?MTdWN1ZjdmJqRVBlNDVtSENzR3NDQU1MNmROSHlMTC9OZTdLME1qN1NqaGdL?=
 =?utf-8?B?UWpBNzdvK2gyY0pDREJPVUZibG4yYmpmR01seWZjRUFqbHJTL2xubHVScnRp?=
 =?utf-8?B?dUYxdWtsSUk2cTVtYzBOSURyM3BGdU9tTmNaOHFrNFdJRUVxSHpLaCtDNW9B?=
 =?utf-8?B?WmJQZXhzcm1kb2hKTTBjVGtJTTY3WXRLZFd0V3YzYVdqTVkzdGNGVTEyZVh2?=
 =?utf-8?B?VmhTaDdNNkZNdTlpUmZydEtVUklCVCtTMTVoWGRMQnNLdDZTaFpxN240dzNr?=
 =?utf-8?B?cEVCOTYyaDVNekxXeTBjMDEzZjNMelFRbUdDTTVvK243QUxxMnJHTmgvMWlV?=
 =?utf-8?B?SGUxRnhLcld3ZW41bU10UFJmTGltblA5c1ZtQXFBQStaRVMvekN3a2NoYzk4?=
 =?utf-8?B?dHc4SHdBK1BMVnQyU254ZHA0bHgzMHBvTDRnRTN1NFEzMHlUekE5aUgzd3Bo?=
 =?utf-8?B?QnJRN2lhUnpveWNGTFRucjFOY04yN3VCSjExRmVhTldhOTdRTStUTWM3ckFm?=
 =?utf-8?B?UkpoNy9SUlFaNzcwSGdSZXlGVVlOclpueFhnWUxDTDMyTkt6b0FjRDlTbVJT?=
 =?utf-8?B?TTVMNHNxVDBnY3diTzVTSFh4Z0V2TWdDeFRjdTE4UGhEaWt6TzhFZUVaL1dn?=
 =?utf-8?B?bGNWSDdWNlYxYzRQRjdrT3d4NmRQdi9Nd1FzWjRYd0t1Q3ZkdjFsVktLRmlS?=
 =?utf-8?B?RERqSUo2dG9xSFpWR1g1d05CdG5rL3dpeFg0eWo2VXhWeC9Pd3c1RW95Z2pi?=
 =?utf-8?B?aWs5WVIyWE8zekQ0TEFhdVpyZSt0NUpFck1QVk8zTEkrZ1l6RE1Lbm9lVnhw?=
 =?utf-8?B?TVlIeFQrU1hWV1hUenkyUHJaNlNZSzlyc0tKQzZxRjFjVUtFYTRGdHlxVEs2?=
 =?utf-8?B?V3RZV0ZubEdIckZWZm1raldpcHhtWjU4ZHJGYjY4UllpcWZDMzRZUnh6Q0tL?=
 =?utf-8?B?aHNZUTBnMmtVZ3FkZnowcTRiWDJZb3U1Wnh4dDQwSXk5MElBc2xQcS9Rak10?=
 =?utf-8?B?UHB0Y0xWUmIwUnF1b0JkQTBGNjhHM1lTQXczYTM3SVFJM0dNbGtlU2Y3Y0NQ?=
 =?utf-8?B?L0R5d0d5RzN6K21DOUs1UUh0d0YvQnN3U2xmb1dtTlh4aWpQRHdxSWpoY0FY?=
 =?utf-8?B?ejQzWmxqV1RaamhXcVVkRC9uWnFQVlcwYmxzNHQ4ak5QZjAraUNxZmlWUkFw?=
 =?utf-8?B?aDVXV2Njbzd2Y2RDNGFEYXRvM0lMdHhTc3p5VEJxRW53L1VGcjRZVXhTS2Zn?=
 =?utf-8?B?SVl1c0thVmVKMGVuYlhCaDQ0dXpYRWwveGIxSHlxZWkyYllxblNkQ25rR0Q2?=
 =?utf-8?B?NHVSY1V5U1FuemdVRUlOaG1ZejZwNGZpMnZZWktnQnFZUnowdFk1ZklNQURa?=
 =?utf-8?Q?W2xza1tBP15Sl9XARISsoHI2hJqGZk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWRvR3NZWDdBT24wL1RUSmtPUzZSLy94c3hnaDhoemhMTFdsYTdkU1kxSmI3?=
 =?utf-8?B?NzBmSjdtVjBHbFNjV3ZFWFNpRnd5M2JiWnBZN1dOdmdzRTIxL2t5Ly9MZ3hh?=
 =?utf-8?B?cXBVdnRVNmc4VUU4Nit4SlQxK1RxbmdGa04xbWdTeDVLUGk3am5McXZKdzB5?=
 =?utf-8?B?Q202Z2FaT2lFS3V3M3JGV0VzejdWaUt5SU4zakt6cHdtcTB1ZUVjSW1RNXdR?=
 =?utf-8?B?NTcxYmxHd3VkK1IrcE5KWDNzbVRDaVNSeFBDak1SV3ZOZElCb0J2R2p6QlpC?=
 =?utf-8?B?dXhhbFlEVEtxczgrTXdPSWNuQUMzQzN6RTl0MmkxMDd5WVZSNjFtbWhYbnZH?=
 =?utf-8?B?TXZZaHIrS1pkUlZXcGRadWczazg0ck1DejdMWTdvZ3VoMThyZUlGUG9YcG9k?=
 =?utf-8?B?dHl0Z0w1RFFySkRXZllZREhKTWZmdFVJSERjM2NLV0tBTmFTYzJsNWppaTdC?=
 =?utf-8?B?VDBEd256djNTQTU5dWY1ek90dXhyV3Q5RVMwZ0hXSm4xT3JYMlBHVUlXU092?=
 =?utf-8?B?VVVHTVBjcXpIb1RlUkhhbGZhSlFrQnV3SFJiSzNlQ3BEazdra01pVkQxakU1?=
 =?utf-8?B?ZzZUaHk4NS9kQmhzV3FnbDViV2dnMGFUQXM2Vjk5OWRIUWlOZk02SFlocnVz?=
 =?utf-8?B?a052R3ErMnpMSTIvendHK1ppVmI4SVE3N1BqVTd6MEw0d1J6VkdkRklHMUl5?=
 =?utf-8?B?cFVCNk14UTVQWGZjeDQrckZ0ajZyeVRzWW1zUVdwcmp2OTNJd3J0TXhOYVAx?=
 =?utf-8?B?ODFTaEZXdk9UcEZQcENEZHJKZFpaazJSMmpWekg3Q0xzV25UUFhtRVdyS1Rw?=
 =?utf-8?B?cFVRTmxCR25COFozYXdraUwvbEpHcWJpUmpHMW05aWY4RGdjRng1SmU5bmpO?=
 =?utf-8?B?Z0VUU2VBNE9ieklPZlVSZnhySG5wRzh4eThoZFJRV2RmOXhzQkJPdGUxQjh4?=
 =?utf-8?B?bTQ2Y0xXU0crUUliUFdlZkk4SEU1bkRvK2hRdXZPQ0lMNDhScUJYZVAyYlZ6?=
 =?utf-8?B?VDVNa2tmT2x2ajFlVnJkMEZjVndTUi9iS0hHQjJTQy9uTzlmU3Z6R0htYmFj?=
 =?utf-8?B?N0xMc3VEeXl2QTBpTnI4Vm1LcU1WNGZnRTlteGE1aGJMLzFFTjF6VnFpaDVZ?=
 =?utf-8?B?dVMzMnBZVTRFN1VGRzJ6S3JyV3RQVkJzbCt0Y0c5NzhQTmtxR2JkT3A1MGpi?=
 =?utf-8?B?d0JiVlpuTjl4STNuMzhXV2dyMzFWNEVDY1pYNGVJSEVnQ09WZW9oVWhFdG00?=
 =?utf-8?B?RFZqN0YvQ25SVlFJaDhFSDJSU2pRZUF0cVB0bmN6SHhFMzFaU2xCdGVPRklR?=
 =?utf-8?B?cEhXOU90VDlWekRyZlk3Q29TVzFySTJ6Uk01cmRuWkI4cVJjVXBZaTdxODRK?=
 =?utf-8?B?cExzVFp1TGdtOXkzdGpTSlN5ODFUeG5MSDlEZU8ydUdVbFFvQlhZMlR5K1JY?=
 =?utf-8?B?eVBhRWR3WUxFd2JWamtpQ21kUk4rV3ZSbm9OV3hYK0ZRVHhSOGlpRk9RVXlD?=
 =?utf-8?B?cStadXJsMWNaditUZnZGUnlTODM4OTZTZXR0azExOWhzUWRjQkxXc3RNdG94?=
 =?utf-8?B?YVVsc3paQk11M1lTdzJrQWpKMjRXUEx3eWF1c3pEb3NNbmMvQVd5aFlkbHRk?=
 =?utf-8?B?clFONDEremlkVmZRS3JRamx4Nnp2Qzhnc1RaNDdZTWZpeThWTWx4RnBQYURk?=
 =?utf-8?B?dmdZdit3eXRwT2lWQXJFcWE2bU1IWHBtVFozK3Q4eDVIeWllTnhoWUxEc0dS?=
 =?utf-8?B?cktqWEl1VEdoYjJHdUJXOU5mTHBqVHFsRmphTmdab2REbUFqenZzVXlZdVZo?=
 =?utf-8?B?TFdzb081KzdsellXalorSjU1U2toTWhhVVBTY3RBQjUwRlVGTEdpSW4zcURl?=
 =?utf-8?B?dmJJb3RFMnhOenpoOG9WdGdZK0g2ME9Jc2oyN1FpTjA3YXlWNHI3MC9ROTh6?=
 =?utf-8?B?ZHlBZ3hkUWppMVByQ2JLWHk4SmFoWEk0RmxWSmxvNlFNVVRKbllzT1lKeExh?=
 =?utf-8?B?c0ZXMTU5SUhBcTRoczdveFNNbTd4TDAyMXpQK3RQRUg1dkJHOGd5ckIyRm5i?=
 =?utf-8?B?c3I4Q0NqU2U1bkR4SFg4cHBpdlB2M1FiN0VUWWNuMnFqN2tpM2hwYU9zemR5?=
 =?utf-8?B?Zkc2Z29oZldiYXlNUlhWaW9rSUhFNUwwd0hDMEYwUUV1Q1UrSlhQSjdMbFlk?=
 =?utf-8?B?Vnp4UFE1aU9CU3pIQ1ZFMU8vbDlxNXEyYldBUXBwUUloc1N4eE9hMlBCbk9t?=
 =?utf-8?B?dmR4bnlieE8zb0JVL1YvRlltb2tnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7696BA97CCBE364F81EA177E3CF32E24@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da47012d-255e-4336-dd04-08dde616b9f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 09:39:03.9116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SqgIitz8Jwn1V6CWdwU0Mq3B1/FBjLKehjFT0GXp43nrSKNAvZ2WeQf0rbBkfZ2zuj60mMGD+XKrD+7Yqyv47t0EOzP4u7akup3YyEtCYRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6481
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDA3OjM1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
eGUgPGludGVsLXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDEz
LCAyMDI1IDEyOjM2IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggMy80XSBkcm0v
aTkxNS9hbHBtOiBSZXBsYWNlIGhhcmRjb2RlZCBMRlBTIGN5Y2xlDQo+ID4gd2l0aA0KPiA+IHBy
b3BlciBjYWxjdWxhdGlvbg0KPiA+IA0KPiA+IEN1cnJlbnRseSBMRlBTIGlzIGhhZGNvZGVkIGZv
ciBkaWZmZXJlbnQgcG9ydCBjbG9ja3MuIFJlcGxhY2UgdGhpcw0KPiA+IHdpdGggcHJvcGVyDQo+
ID4gY2FsY3VsYXRpb24uDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDkwICsrKysrKysrKystLS0tLS0tLS0NCj4g
PiAtLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgNTIgZGVsZXRp
b25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiA+IGluZGV4IGFlNTU2YTg4NWMyYS4uYjIxMjMzMDVmMTI4IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtNTgs
NTggKzU4LDQzIEBAIHN0YXRpYyBpbnQgZ2V0X3NpbGVuY2VfcGVyaW9kX3N5bWJvbHMoY29uc3QN
Cj4gPiBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgCQkx
MDAwIC8gMTAwMDsNCj4gPiDCoH0NCj4gPiANCj4gPiAtLyoNCj4gPiAtICogU2VlIEJzcGVjOiA3
MTYzMiBmb3IgdGhlIHRhYmxlDQo+ID4gLSAqDQo+ID4gLSAqIEhhbGYgY3ljbGUgZHVyYXRpb246
DQo+ID4gLSAqDQo+ID4gLSAqIExpbmsgcmF0ZXMgMS42MiAtIDQuMzIgYW5kIHRMRlBTX0N5Y2xl
ID0gNzAgbnMNCj4gPiAtICogRkxPT1IoIChMaW5rIFJhdGUgKiB0TEZQU19DeWNsZSkgLyAoMiAq
IDEwKSApDQo+ID4gLSAqDQo+ID4gLSAqIExpbmsgcmF0ZXMgNS40IC0gOC4xDQo+ID4gLSAqIFBP
UlRfQUxQTV9MRlBTX0NUTFsgTEZQUyBDeWNsZSBDb3VudCBdID0gMTANCj4gPiAtICogTEZQUyBQ
ZXJpb2QgY2hvc2VuIGlzIHRoZSBtaWQtcG9pbnQgb2YgdGhlIG1pbjptYXggdmFsdWVzIGZyb20N
Cj4gPiB0aGUgdGFibGUNCj4gPiAtICogRkxPT1IoIExGUFMgUGVyaW9kIGluIFN5bWJvbCBjbG9j
a3MgLw0KPiA+IC0gKiAoMiAqIFBPUlRfQUxQTV9MRlBTX0NUTFsgTEZQUyBDeWNsZSBDb3VudCBd
KSApDQo+ID4gLSAqLw0KPiA+IC1zdGF0aWMgYm9vbCBfbG5sX2dldF9sZnBzX2hhbGZfY3ljbGUo
aW50IGxpbmtfcmF0ZSwgaW50DQo+ID4gKmxmcHNfaGFsZl9jeWNsZSkNCj4gPiArc3RhdGljIGlu
dCBnZXRfbGZwc19jeWNsZV9taW5fbWF4X3RpbWUoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0
Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+ICsJCQkJwqDCoMKgwqDCoMKgIGludCAqbWlu
LCBpbnQgKm1heCkNCj4gPiDCoHsNCj4gPiAtCXN3aXRjaCAobGlua19yYXRlKSB7DQo+ID4gLQlj
YXNlIDE2MjAwMDoNCj4gPiAtCQkqbGZwc19oYWxmX2N5Y2xlID0gNTsNCj4gPiAtCQlicmVhazsN
Cj4gPiAtCWNhc2UgMjE2MDAwOg0KPiA+IC0JCSpsZnBzX2hhbGZfY3ljbGUgPSA3Ow0KPiA+IC0J
CWJyZWFrOw0KPiA+IC0JY2FzZSAyNDMwMDA6DQo+ID4gLQkJKmxmcHNfaGFsZl9jeWNsZSA9IDg7
DQo+ID4gLQkJYnJlYWs7DQo+ID4gLQljYXNlIDI3MDAwMDoNCj4gPiAtCQkqbGZwc19oYWxmX2N5
Y2xlID0gOTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgMzI0MDAwOg0KPiA+IC0JCSpsZnBz
X2hhbGZfY3ljbGUgPSAxMTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgNDMyMDAwOg0KPiA+
IC0JCSpsZnBzX2hhbGZfY3ljbGUgPSAxNTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWNhc2UgNTQw
MDAwOg0KPiA+IC0JCSpsZnBzX2hhbGZfY3ljbGUgPSAxMjsNCj4gPiAtCQlicmVhazsNCj4gPiAt
CWNhc2UgNjQ4MDAwOg0KPiA+IC0JCSpsZnBzX2hhbGZfY3ljbGUgPSAxNTsNCj4gPiAtCQlicmVh
azsNCj4gPiAtCWNhc2UgNjc1MDAwOg0KPiA+IC0JCSpsZnBzX2hhbGZfY3ljbGUgPSAxNTsNCj4g
PiAtCQlicmVhazsNCj4gPiAtCWNhc2UgODEwMDAwOg0KPiA+IC0JCSpsZnBzX2hhbGZfY3ljbGUg
PSAxOTsNCj4gPiAtCQlicmVhazsNCj4gPiAtCWRlZmF1bHQ6DQo+ID4gLQkJKmxmcHNfaGFsZl9j
eWNsZSA9IC0xOw0KPiA+IC0JCXJldHVybiBmYWxzZTsNCj4gPiArCWlmIChjcnRjX3N0YXRlLT5w
b3J0X2Nsb2NrIDwgNTQwMDAwKSB7DQo+ID4gKwkJKm1pbiA9IDY1ICogTEZQU19DWUNMRV9DT1VO
VDsNCj4gPiArCQkqbWF4ID0gNzUgKiBMRlBTX0NZQ0xFX0NPVU5UOw0KPiA+ICsJfSBlbHNlIGlm
IChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIDw9IDgxMDAwMCkgew0KPiA+ICsJCSptaW4gPSAxNDA7
DQo+ID4gKwkJKm1heCA9IDgwMDsNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJKm1pbiA9ICptYXgg
PSAtMTsNCj4gPiArCQlyZXR1cm4gLTE7DQo+ID4gwqAJfQ0KPiA+IC0JcmV0dXJuIHRydWU7DQo+
ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgZ2V0
X2xmcHNfY3ljbGVfdGltZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICsqY3J0
Y19zdGF0ZSkgew0KPiA+ICsJaW50IHRsZnBzX2N5Y2xlX21pbiwgdGxmcHNfY3ljbGVfbWF4LCBy
ZXQ7DQo+ID4gKw0KPiA+ICsJcmV0ID0gZ2V0X2xmcHNfY3ljbGVfbWluX21heF90aW1lKGNydGNf
c3RhdGUsDQo+ID4gJnRsZnBzX2N5Y2xlX21pbiwNCj4gPiArCQkJCQnCoCAmdGxmcHNfY3ljbGVf
bWF4KTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiArDQo+ID4gKwly
ZXR1cm4gdGxmcHNfY3ljbGVfbWluICvCoCAodGxmcHNfY3ljbGVfbWF4IC0NCj4gPiB0bGZwc19j
eWNsZV9taW4pIC8gMjsgfQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBnZXRfbGZwc19oYWxmX2N5
Y2xlX2Nsb2Nrcyhjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKypjcnRj
X3N0YXRlKSB7DQo+ID4gKwlpbnQgbGZwc19jeWNsZV90aW1lID0gZ2V0X2xmcHNfY3ljbGVfdGlt
ZShjcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gKwlpZiAobGZwc19jeWNsZV90aW1lIDwgMCkNCj4g
PiArCQlyZXR1cm4gLTE7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGxmcHNfY3ljbGVfdGltZSAqIGNy
dGNfc3RhdGUtPnBvcnRfY2xvY2sgLyAxMDAwIC8NCj4gPiAxMDAwIC8gMjA7DQo+IA0KPiBXaGF0
IDIwIG1lYW5zIGFib3ZlPyBpZiBpdCBpcyBkZXJpdmVkIGZyb20gTEZQUyBjeWNsZSBjb3VudCB0
aGVuIGdvb2QNCj4gdG8gdXNlIExGUFNfQ1lDTEVfQ09VTlQgbWFjcm8uDQoNCllvdSBhcmUgcmln
aHQuIEl0J3MgMiAqIExGUFMgY3ljbGUgY291bnQuIEkgd2lsbCBmaXggdGhpcy4NCg0KQlIsDQoN
CkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBBbmltZXNoDQo+IA0KPiA+IMKg
fQ0KPiA+IA0KPiA+IMKgLyoNCj4gPiBAQCAtMTYxLDggKzE0Niw5IEBAIF9sbmxfY29tcHV0ZV9h
dXhfbGVzc19hbHBtX3BhcmFtcyhzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4g
wqAJYXV4X2xlc3Nfd2FrZV9saW5lcyA9DQo+ID4gaW50ZWxfdXNlY3NfdG9fc2NhbmxpbmVzKCZj
cnRjX3N0YXRlLQ0KPiA+ID4gaHcuYWRqdXN0ZWRfbW9kZSwNCj4gPiDCoAkJCQkJCcKgwqDCoMKg
wqDCoA0KPiA+IGF1eF9sZXNzX3dha2VfdGltZSk7DQo+ID4gwqAJc2lsZW5jZV9wZXJpb2QgPSBn
ZXRfc2lsZW5jZV9wZXJpb2Rfc3ltYm9scyhjcnRjX3N0YXRlKTsNCj4gPiAtCWlmICghX2xubF9n
ZXRfbGZwc19oYWxmX2N5Y2xlKGNydGNfc3RhdGUtPnBvcnRfY2xvY2ssDQo+ID4gLQkJCQnCoMKg
wqDCoMKgICZsZnBzX2hhbGZfY3ljbGUpKQ0KPiA+ICsNCj4gPiArCWxmcHNfaGFsZl9jeWNsZSA9
IGdldF9sZnBzX2hhbGZfY3ljbGVfY2xvY2tzKGNydGNfc3RhdGUpOw0KPiA+ICsJaWYgKGxmcHNf
aGFsZl9jeWNsZSA8IDApDQo+ID4gwqAJCXJldHVybiBmYWxzZTsNCj4gPiANCj4gPiDCoAlpZiAo
YXV4X2xlc3Nfd2FrZV9saW5lcyA+IEFMUE1fQ1RMX0FVWF9MRVNTX1dBS0VfVElNRV9NQVNLDQo+
ID4gPiA+IA0KPiA+IC0tDQo+ID4gMi40My4wDQo+IA0KDQo=
