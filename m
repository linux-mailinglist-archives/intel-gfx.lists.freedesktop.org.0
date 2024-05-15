Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CC88C68EB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 16:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301D310E874;
	Wed, 15 May 2024 14:39:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WAYYM7w1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851AB10E874
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 14:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715783975; x=1747319975;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=uZ3N1f+2W5nnSC6OTOQKDERwVwiOeeIrQk64G0NeUIE=;
 b=WAYYM7w1wtkaqXbs7QRzwd869IFG+Mi6OVsAd0OhOJvsrwp2xnYH3A/7
 gXCtTR+PUpqpdEKuj8cCHr5eFrSg5N51PldZhYmCf0FcfgeLtKTzifkrB
 1ZEhBQjOnLwoU8OcibMLtEtFcyJx5QtN08WefIlvSMEyamrSl3RB3bgoM
 OWg8vKUyXKZ4L0fux3aiouUt9z39Y0umjLswXR3lFvpOfI3A+0xPH3PmD
 TVk/ga/Aod8cBpQBR0DJZLCr3bb6UImVOa7MWVYjRvGMHfUyKD3WFLCG1
 nZS8VZijvYVsTEb6qMhdLnl1hQO1CGgeuomsoMiZrcoFEBf9m/oCxOIlI Q==;
X-CSE-ConnectionGUID: b/1JivM3QI6tLPn/ktDfZw==
X-CSE-MsgGUID: NgQtmk5tTLmbCUSppi91KA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11709793"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="11709793"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 07:39:35 -0700
X-CSE-ConnectionGUID: h5fjjMtPS/mFSNhDNxv7kQ==
X-CSE-MsgGUID: IEm7CynRRj2SYcDUr0zJqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="31154454"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 07:39:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 07:39:34 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 07:39:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 15 May 2024 07:39:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 07:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAzvUbM4BpkcMIDX5HyDkJrwtYL22Bi/rx+CBnr08sqO4lQvviPeQ8RlGOCjC8l+xvJQ8nhzez5xGXs5zcA9EO00amJt11LcLpZsZirykwRvn2avOGr2fIRE17e8uqzUMvT96Y0miDDLZMy5CkaJltRKYarXzTgqh7iVDlsE67JOInO6bje7k5syrowP6o653G4T+evNoglAGl6XkL6gm5LsdTIpkuj3ZGzhenxYnZl2WbebQ5IcGvRQhk9TU/13h+tYxV6H+IsAksGDAcbPkPPw//1u9wr402Zx+9Krz+wzy4IC6N0ad2UmK/FS4jSAVB+RR3QHW6ya8OI3pROB3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uZ3N1f+2W5nnSC6OTOQKDERwVwiOeeIrQk64G0NeUIE=;
 b=ELcszzSGySD4iI2/gidozpE1LBVbB9B2+jRuB8gJhD0TORo8i0gcvLD2wY7ohnPUpJWX1B2BSHGnCktabA/XnuKe6MBMLE0/NdRrQBXfBATVynFTVD80rQhuHAIcSFPANisDPqjJZKwyHyw5MG/XXA5Z4q2ODhXuMZaWXtveJJj8nb4/Sc+i1TZFGaNH7fD68aMOmisnqwjsObQYsfriDqK7ujIlMPNbnIhAc4mrQRTyYN4Kuu5ObnJN0EBaDZ3LB/PeCievWp409S5s2jtshx+eXfrCWoj5TNgR7OJuc/OTZ6mRfxG/5UoxZYtHxR6rh7bHXnqBxtliFdlITKQQJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 14:39:31 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 14:39:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <875xvfch1s.fsf@intel.com>
References: <20240515064524.164137-1-mika.kahola@intel.com>
 <171577943416.27300.8384710551224092618@gjsousa-mobl2>
 <171577993817.27300.2440039459653683149@gjsousa-mobl2>
 <875xvfch1s.fsf@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Move port clock calculation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Mika Kahola
 <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 May 2024 11:39:25 -0300
Message-ID: <171578396504.27300.9551289470552348622@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR08CA0063.namprd08.prod.outlook.com
 (2603:10b6:a03:117::40) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB8185:EE_
X-MS-Office365-Filtering-Correlation-Id: 203230bf-0485-4afd-9686-08dc74ecd49b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230031|376005|1800799015|366007|16122699003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bDF1WFNvdVZGZ1E5R1YrOUZxcUJGR1RBM3djcjdTcWduZ25QMEg4VmdZRmsy?=
 =?utf-8?B?VzlWSkovcmx2NWFqRnE5R3F1dlJqeDdtb2l6WGNQZ1hkcDVQNlM2WEphVi8z?=
 =?utf-8?B?KzBKRmQ1cjdxNU13bEFCbGlqRkxrYm5Sa0hrSmlXb3BDMjlzWE8vOEYzTWR4?=
 =?utf-8?B?WlNLM1UzQUhJaks0NkU5NEM0S0o0QzV0T0NjT0RWUXo5RVk1N1JoUnNnY1k2?=
 =?utf-8?B?MFoxMS92c0xZcHRZdGo4ZTM0QVYwUjV6K0pqSFZQL0pSSndjV0Y3UGh2dnp2?=
 =?utf-8?B?cEovMlVQZTJneWNYa01OU1lsS2dJaGJETXp1OExKSVNKL2V4Q05yR284RVJR?=
 =?utf-8?B?RzdkV09WL1FrY2Y1YjVONWErTmdPbGlnOWlpZmpMa0pUYjM1ZTZRTklHYTlB?=
 =?utf-8?B?dVdoWlo2bWJUU3daTjRtdmo0T2NQR1NENXdvd0hmYldReUl1dWRtbm52ZERS?=
 =?utf-8?B?VXZOeUMzYnVmVVJYdU53bklnUE5xQUx1Y3RPUnFmRHBka3FvYjZuaU4zcXdD?=
 =?utf-8?B?b01MQ1VqdStWL3J0YlRSYnllbTdoajQ0eko2QXFaY211eHl4QmM5TWlQVUQw?=
 =?utf-8?B?NXVBOUNTVDZDNkxmcElxR04wU1h0NlduVjhyMTROYk1LclVRRFlGYkl5enRy?=
 =?utf-8?B?Y1V5Wmd1WWVBRTB3UUoyWWVoV2NEeHZVWHZJc084RXBxYVFGRjRKK3ZrV0Fa?=
 =?utf-8?B?cGZpRzk4K2hrTkkrQndNdCtjUjhlaFphOCtSOUJtWEdUNlcwU1c5ZUNOSjIx?=
 =?utf-8?B?L2wvTjVBNjJCNTRzYlBlQ2Nqa0M2QkpBMUhHay9XMXBTalFRWHBtZ2hkYVVN?=
 =?utf-8?B?cmlZU2IxQzU0VnZ4K0dlTW9DTHJwZWVCVCthKzFLMDdhVHRQOHV4dWJvUEcz?=
 =?utf-8?B?cDhEYWN0c01NemVNc2ZSalJ2eFpMaWlPUzFLdnlzbVBCZEVNTUNDWG1qQitl?=
 =?utf-8?B?MzU1QXllVDZkTVI0cTFmTnlPViszem1LRWwrUlprNVpZc3d1bkI0YUFSZkl1?=
 =?utf-8?B?Qk8rcFlneElrTlJhcHRUTUlCWHdTZGVHWmZKTkVTdnlHM2xtTDQyK29sSXNW?=
 =?utf-8?B?RHJmZHFHblhydjJMUnIvbUtRMjM2ZjRQSkxEclhuQ0VEc2xPNmVPZHRYbTRQ?=
 =?utf-8?B?bVQvOTJSeVp0MHd2VnlidTV1Y01uNEsyZ2pSMVE1dmdRTS9JUFU4dXc2c2E5?=
 =?utf-8?B?OVRFbW1nY2c2U1JIR0FRZ3p4L1RkakhrNVBpUHJhc2pNemNxRk9lK1R6R3By?=
 =?utf-8?B?eHRPSHlYWnpLWXFPS25XS2Z4WUVFTkNxZnVzRkZ5ajNaUWszblgyRnV2cnE0?=
 =?utf-8?B?SHVYTUJrS2JxemtmelZDdks4amRXajlmQ0lUWVhkTjNDV0FSdmNJV2ROU25N?=
 =?utf-8?B?Tkp1RzRnVDgxdWF0cUZWSUJ2RVpFZEM4bHVEQlI2U2d2UVhwSjhPem9MNnND?=
 =?utf-8?B?UCtCdWVQQWl4MGtKTWg1SDhRRUUwYmNJZ2NQU3BjM2JXeDlpdGxqMExPYzJN?=
 =?utf-8?B?K01HVVFpZzlCTEtIWENMdXNSSkVNbTJwMkRBZWJUTVQ1OGxtSXRFM0YrU3pR?=
 =?utf-8?B?c2M0dTFvdGdZOCszSHFZUngzdldHMXVVZXRSQ2o0TDdhNk5UN25pcE16Qy9V?=
 =?utf-8?B?UW4xdVpOeUpnRlRPa1lheTBaWldycXJycE5uSGR6bTJYYTFxOGtqdDYvRmVJ?=
 =?utf-8?B?aXp0WHRHZnlmdkZDTVhqMzVtUmRzYXljeW9wS1grWHkyVzhyajJJemdZU0d5?=
 =?utf-8?B?OWxqbk9jZUNpT1J2b1hzMjVlZzBDam02bHE5QnVYRExDb040N3ZvamQwaWRO?=
 =?utf-8?B?VmN1UWV3OTFIMm15SzlmZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(16122699003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHV2WUdCeUVhZHJyQlQ4cjcvUG9QenVUdUZnN041dVYxbXkxOEZHQmRJeXlt?=
 =?utf-8?B?cTNRQVRvSlBwME9xK21NM2pjYWF1bGNQNTNqKzhmdzlROTkwUVJ3WTllOEVw?=
 =?utf-8?B?bSt3OUVDZCt6VVNhYnJBSE1HZ1ZJbnY4Qkp5dHd6WnBLVE9oTEQ5c1Y3R3Rp?=
 =?utf-8?B?K25lcDFOS3NsNmJpRFFabEFDaDROd2FhVTVyZGdqMmN4TXN4L3Vzay85ZTZK?=
 =?utf-8?B?cEdNeEI0ZnVwTDRiOUZCVWJsSDRibURUWlptRWt3UmJ3N2E5OXpaa0VhMmw5?=
 =?utf-8?B?Y0MyT2RXMSs3OWlNaFpNSHE2QWNYSDNJSENJMEUyRlpvaHZGU1dFR1dqd2VH?=
 =?utf-8?B?YjU1RzlYb3VCaXRNRTJQVm1Ob2lPWFV3bDBzb3dWZ1JhZXhHM2VjdFhEelpL?=
 =?utf-8?B?MmplVzBxSFhHY3lrellUdTlWZGg5and6OWdTWkt5d0ZOMTlSVTlHMXBuMXlz?=
 =?utf-8?B?UkhCYzQwOUU3ZU56bkwxWEtmcld2SHB5ZExoWTNiUzQrOEpkUDMxd1BqUVY3?=
 =?utf-8?B?ZWJxZmF6Mk03ZHZac2ZrMGFIVGpTQjVReXI4a1JxS1lXMnJqMDU5bUtkNTNv?=
 =?utf-8?B?OGhGV3lFTkgzdy91ODByS0xrRzluQm1FbXhnaTVRRk5vVHBwSHIwUGJ3N2c1?=
 =?utf-8?B?b09jT3dLc2Q4d0lSVHk1cmlnNXg3MnEzdndXVG5NajlFWHQ3N2JJODhpVmU5?=
 =?utf-8?B?dno5Um9RUkkyQXFyeGp3SmJROEJLeW8vZnNJRlFDaVlWNncydU1kaG5jK2xO?=
 =?utf-8?B?TktjNlRTT2RYcmJHZXdXUnMxNVlGUThzam93YVVNa0N6VDFLTi9JY2pwM1g3?=
 =?utf-8?B?ZzFiSHpJUi9wLzY4ZG9uM0QwbzBZYTR5UkR3YjVVbDVwYjlVMXc5ZWgzRm4z?=
 =?utf-8?B?eFhjRXl4T2M3alpxdmJHTXY1dmNlbU10STQ1T3NrUXRKQnVyZVZoV0xDdk9r?=
 =?utf-8?B?WTc4aEg1VVRqdy9mMWR3S3M1dldRWTduU3grR3pIbms5Y2kzdkFPbnU2b2FH?=
 =?utf-8?B?SVlYa21LT1V3aW5QOWhkOGtiZmlTT0tsVFU4RGJOby9jajdUUmkvZTNkanph?=
 =?utf-8?B?ZjRJbVM1eUxBMElxa01hS0gvUkVqZGNPblFCV2VQNEJRVVg3SG15cnA1eUIw?=
 =?utf-8?B?Ym1qWW9uc0xnM0hwcU9qYk1nRHdjeS94VjFTcjBIYWJnR1lOWTU2eU9mdGk5?=
 =?utf-8?B?YWRjbjMzZnF1WWpMYThxTUxGdC9WdmNVNG1xMkRrSllHSVZEUjdLZGhuNUdu?=
 =?utf-8?B?ZG9iOGkvR2NIQVJKRUVMT1BvaG10N3Y5bGQ1VXhkUGRNTEdaWG5LWFhDTDhQ?=
 =?utf-8?B?Z1pXWk93aG92RUdOZGovRnBOSE95QzBOQ3MxT3lvUmsvcnJCQ1BWZnVGQ3lr?=
 =?utf-8?B?OG9ZSjBZdmY2ZHVBQVVlSU5xWURNcUZsdDI3VUtPMHlPcFV3cFBRZXlndzky?=
 =?utf-8?B?Z0NXSFhrbHgycE0wQWo0a2trV01RZUJlTHROYm5tZ0ltUGdKTkNZRE5tZEhz?=
 =?utf-8?B?L1VTc3NNMUs0YzNId1o4QnA4ZnNFSUdyMHdPVERRZkdPQ1RNRksya2c1ck1t?=
 =?utf-8?B?UFlFZmR5VGlZc3JDRjArTWk3Y2R5ZlB0YU5aeGllY2RQdy8xM0t3NGoycG5h?=
 =?utf-8?B?OVcreDNQY1Njb2lMRURkQVo4SDkzT1FXenNuakhGRGsxTzZaRTczQ3FBR1JS?=
 =?utf-8?B?eVY0ZVYwaWVsTjF0Ymx2RXdwMDJKNG5TaGROYWNlWDNTczQrYTJFTmJOaUFE?=
 =?utf-8?B?dGg5Mm5WdDRaNjE1ZTVicWdraUpXSHFWUVpvakJSb3YvaVFKQ1A4MmUycnBB?=
 =?utf-8?B?RE5Bd210anMxK3NaQXU1ZjQ1WkxnY0lVSmtMYUdibWpyQWhJa0ZZczNmNnNJ?=
 =?utf-8?B?bGx6SmlkK2d4djQ4RERpYXZEY05RbjlzMGRRbGxJTjI5Vi9TU0QraDVqTzFi?=
 =?utf-8?B?dWJSck9LNnA0R3ZjcVIzRnpoQjZ0SmR5ajd3bjJITFFHZjlhODFPTWJ0V3RY?=
 =?utf-8?B?bUoyVEoxSlNuV3I5cG5GK2Y3dWp0a09WL0E2KzdrZ25QYVRwZE9pb1N6OU9W?=
 =?utf-8?B?WHhjeWZVZFdxZFI4bFk2UUFFandBaHExQzRHTXJQdDE3ZTRKT29WY3IxL1FX?=
 =?utf-8?B?OGZJQlpRU1g4QlVvN2FnNTM3ZS8wRGxWTWl6SnMxZWVHZXhSV1ZlVUZYRGFZ?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 203230bf-0485-4afd-9686-08dc74ecd49b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 14:39:30.9108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UiTxNZw1Ft5sXOcugFNHKyeMzbDBArcJANBQz/rgSO6Z1p3Tmc5rPlttFivIXrPC25WuEumkbxDCcZoMROshdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8185
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

Quoting Jani Nikula (2024-05-15 10:59:11-03:00)
>On Wed, 15 May 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Gustavo Sousa (2024-05-15 10:23:54-03:00)
>>>Quoting Mika Kahola (2024-05-15 03:45:23-03:00)
>>>>As a preparation to remove .clock member from pll state
>>>>structure, let's move the port clock calculation on better
>>>>location
>>
>> Ah... Also, I noticed that we are not simply moving the implementation
>> of port calculation functions with this patch. We are also replacing
>> usage of the "clock" members with function calls. I think the message
>> subject and body should be reworded.
>
>No, code movement is one patch, replacing .clock usage with function
>calls is another patch, and removing .clock is yet another patch.

Cool. Even better!

--
Gustavo Sousa
