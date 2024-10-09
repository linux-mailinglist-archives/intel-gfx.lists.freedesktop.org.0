Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42887997676
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 22:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587FE10E7FC;
	Wed,  9 Oct 2024 20:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSrGzKe6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C58010E0CE;
 Wed,  9 Oct 2024 20:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728505962; x=1760041962;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nR7SCR7yGTnXmqW0CKUvvUlWsKraEpJUzU5u3+U49tg=;
 b=GSrGzKe6C1sMPMNuAv1+pkv3NAiaS1m1yfPKHS1IOpSBauPLJx4Qpmq/
 8PnwyAlLv+IuMS6gOqaak3HnlHDnMHeUzkXC4vCvVrcsIr4TBglBliRAy
 t+7eIr3czl1vm7GbVJUUxwcoEHh44QyVAJmegvSSM8Wx5GviAotiR8rz5
 LGBm8OPAvK5tMlgGfpIvWfV2nZU/Mvb84RRFV9bh6lHivQw/caAMTqnfU
 2f1w4EFYuTZtC8Jeqh7JdOVACS0ekRrmiWnH7BfejCcxL0S/2ypo2t5Ks
 t5Z7o2aehm7cuKZhneOWj2nY3Wi0MDGfnUi84JmBhbXqHKSL1CFEVchuy Q==;
X-CSE-ConnectionGUID: Penc6ECOR7Oin9PRFzZzXg==
X-CSE-MsgGUID: kWo8mtsfS1yitVCQ8XFUig==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38401103"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="38401103"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 13:32:42 -0700
X-CSE-ConnectionGUID: U7GpW89OQ4SOSvykiIf/kg==
X-CSE-MsgGUID: Jg3aXTG5SzOp03TuqpbQXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="75986932"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 13:32:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:32:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:32:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 13:32:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 13:32:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H36ReeAq+U5YiSNErSjjF7g+BhjVWoazPXk+4bj+bpgh+etel/zbTlwFplkB9etl1MIIxLOqIw38Mps2uDpTXPAER3NfGGHf8VYWlthS0g5MGGomQBQGUzs501cPuGzZCCtlf59Z3IhKUIkgma0m41W7Gw7mX0q+r07QzILAfei/1+SsVj2uxswTd/2rIiNOv/ejqcb7gujcpsq6gIyU/WCgJiVFem/DVRN9Ug6ISJMk9J3SYUegQB5g47nkZva1P+5L0dtXJz0h+0CJZ88TFH4SmE11D4wKVJfXURi/JrmBRQjx1AH42fuYFezitpDewEPuUld6Q7blZsomUXa8FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nR7SCR7yGTnXmqW0CKUvvUlWsKraEpJUzU5u3+U49tg=;
 b=VilQ3OtljigJnI+bGOgXVc53AMz3Z8SNnNpkzX39WqzTC+wPxvTcfIA7tAA1lUDR+e/dypyekPvVL3jSmsv0dBTVOj0am9a3KasmWsQsXDERTqgzvSFUXS7+uheatQz27ULcJef5GweizwyNHv4kint4EMVfFoSzin6tcQs7QiY8/iAXP8+oMZEHChIIkGu7quwEIxr5kHbXEIszzZU63BMuvqudJztSfmVI/Oq5X9+TmVO8g3zWWXEiymVMvu2Tzx8rmr5GQFp8395hLBZZAlUl5dejYredN2di8XO1Ce/28ZMQG4aW70ERRncOzLSgeeMuYY6bzq3n7bhOOzEkXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by DM6PR11MB4627.namprd11.prod.outlook.com (2603:10b6:5:2a2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 20:32:37 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa%5]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 20:32:37 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated
 programming table
Thread-Topic: [PATCH 07/10] drm/i915/xe3lpd: Add C20 Phy consolidated
 programming table
Thread-Index: AQHbGdLCrR78lYkORkGCjSxeCfX2YbJ+4RoA
Date: Wed, 9 Oct 2024 20:32:37 +0000
Message-ID: <d36f5f71c372e31cd7bdcf0dbbc7cd7efe02d4c0.camel@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-8-matthew.s.atwood@intel.com>
In-Reply-To: <20241008223741.82790-8-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|DM6PR11MB4627:EE_
x-ms-office365-filtering-correlation-id: c62a2ba0-4661-4d6d-64cf-08dce8a18372
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dlkvUUlTbzFkR0R6OTUxVE5zNVBGVXlPcGJHVTVSb0s0RjIzdCtJWjZhSFhR?=
 =?utf-8?B?OU1UQUZVV0JacjJBejBVaDdaSVFWYzV1ZkZBOXhZek9lSHlsVzh0NDNSV2VL?=
 =?utf-8?B?emhacjVEWFZKaW5NZmR1SHlsbTFSRkxaZFpORnBJY0lNRElrTStsdDhZQVE5?=
 =?utf-8?B?OVlubWpHc3VGcktVc0F3QW10NjZFRUNFZzRlNzZzeDQzc0xaeGcrdk85SmYx?=
 =?utf-8?B?UXlMSXJ2eFN0aDNZTVk5dFMyWWIxMkkwL1ltOUJHOGh3RUhncTBzRm9hUDdj?=
 =?utf-8?B?c3RWd0hTb1FGdXd4VEdiMHVhaDJpV2Q2WTNGQzhvTWdNcmZ2Sk5mZWpCUk1P?=
 =?utf-8?B?N3ZpUE5yV2tlTEZvSnBvRCtOelkrTnNLZEdvZFNqZWFsNzk5MjQ0eGhVbDBw?=
 =?utf-8?B?bkV3TU1zNCsxdVlYdndJZUZZbjR6OElqdExScjFjejh5cjZhLzNTSENUcjJW?=
 =?utf-8?B?VVpBVUx4NGZaTzNDeS96eHlGQ3hrdUxsSWVEazB2SjQrME10aE5yb3doRHJ6?=
 =?utf-8?B?MHVGVE04cUp0TE9zbUZOVGlKaVE5eVdJa2w2REtwbTA5SnFDKzZYa3Vjbklw?=
 =?utf-8?B?M3FrK3JwYjdXTDVuVkNCTTBxUSszZVVidlV6aEFuV1QyYi9MOStaZTdPWXd2?=
 =?utf-8?B?Nm43NVg3ZUJUMUllNndTNzhZNm5RcGZ2cGNmYkZyMXh4YjJIQkFGTHVsMWVE?=
 =?utf-8?B?bHV1NkovZjZwMTZYMElsbC9BcXNENndUcWdRZTNsTENmQlMwVUkrQWlDWGNJ?=
 =?utf-8?B?aTk0Q0llZkZsZExQeWNycmdrVi9ZSTc5QkNQY00rbE0xZWx5R0loWTVBWXJ5?=
 =?utf-8?B?UmR2dTIrbk5vTDZCTjBWSzdrWHMvdE85TktGR3l1TWsxTTJjRFltM216VVdC?=
 =?utf-8?B?UW8rQTFxQWJ2QnhiaHhlWnJvU3hhU2JvdFk2QkhINjU3YnFrN2E5SjVoWVoz?=
 =?utf-8?B?TS9HOE9qZC9jS2YvcU9Qc0pCTUx0WjltUTZOOHJIMEN0RXRETnNMYVZMazI0?=
 =?utf-8?B?eTBEbThIUlQxOTdMbDZ4VDJkREVydE0yT0xMYnRYOVBFOXdobTlyVUU3MnNh?=
 =?utf-8?B?SFE2V3Y2bHJ2bmdaY2Naa2FEWEJzSENBSGlWajM1R0pyd29TQkpwSHZsSEox?=
 =?utf-8?B?OFVFaFAvRlo1NFJDelA1eDZNNDdSR0NZbXRIcTdSYzIvNTBUSWRDdC9JbkNw?=
 =?utf-8?B?NE5LSWRKMDUvTzNEQlV2U0hHZG1zeU03b2JGdXgyV0IzczRXdGtOeTlKOG1h?=
 =?utf-8?B?K1l1WDZFT0prd041UjBVWnBMWmRkK3pHdTNFREVwSi83UjBCU1NhUFg2ZzN4?=
 =?utf-8?B?N3RhZ3JXQzIrSE5aVXAzeVRZRHNFbXBhazA4ZC90SFQvMWl3TEpuQXJBeXlZ?=
 =?utf-8?B?akc1YVFUcE5rQWUvU3M0TEVxTmNyaE5SYnNLL1MrME94d0pLaXVOcjdheWFv?=
 =?utf-8?B?M1h6WXZaREEreTYwMXpDeFNtdVF6TUg4cE9BUXR5ODlkMnBxSTE1azFCTW9n?=
 =?utf-8?B?MVdPTGJyWkxzUzNFR0QwZ0pYQmFUWFIyK0lPQ200UXRzdjFRak9OQU1HSlhs?=
 =?utf-8?B?TmNCSjZqcDM3aUVuVUpJSlNEVmdGVmx5d2lDMDRuZFhQRDN6SGlQdzd5eEhO?=
 =?utf-8?B?ZkYvZVBBdWQxVVlHUzB0MXdmbzVnZkFZQzllRXlVZ2p0UGRwcnBOQWZSM3FK?=
 =?utf-8?B?ZEhLR3pSNGxVR0t0dDVRSWlWd3IwUEFHalZ6QnVLOEswMWxwaVJyemkwQzJz?=
 =?utf-8?B?UEppRGZXTmR4U01mVUxyUHdScmxhQncxa3BpOUN6SHlYNURNL3JaNlVScHk1?=
 =?utf-8?B?dHNZNWlrL25Jb1dvNEdZdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0ZWTThkNHV2MEJWWjMvbi8zTkkxTStuaFpEVGltZVFUNTVBVU0zclJ4eTFo?=
 =?utf-8?B?RDBaU1hOU2d4TUozZUtiWjc0UWY3ZlAyaEdNZ25PUXRBbGlkUVlvKzM4VEFh?=
 =?utf-8?B?VVpSUmJXODlhRWVXdlpjV2NYVHlvYXZ6NERNN083VFhzaTNVSkhvTC9LOFVG?=
 =?utf-8?B?SE43RmtjYkpvY2NMdVJXQ3p1Mmhla0N2Z0hrNUdTMXcxWEpFOWlOdkR0N0dk?=
 =?utf-8?B?MnR1dXc4TzBYQlNoNXU3OHEwN3hrcHdQRnlxOFlNd3Avb1lid1lMSWIzRlND?=
 =?utf-8?B?dFZSdmlXNGlFWk5waEdmRHhSZDhyRUdBTTBncksxaTZwcTNHcExZSEFna1U4?=
 =?utf-8?B?MFAxQzl2Nld4MlRVS1B0enl6SWFIUGhGbUdCdmVNdks2dXNlRkd4Z3FyN0Jo?=
 =?utf-8?B?LzMzaXB2c0lmSkM4UmpZMU9xWlVOWUtycUdNeFp2Vjg3bTlvVEl1czFoZTVG?=
 =?utf-8?B?bWFscW5zSzY2eWwwSFdjTTRLWVQxaFVOeTdmcWZDc08ySzVPdXd1aUxLVWRv?=
 =?utf-8?B?cjFKUTZXVzVYTTVUdVpTaEdzUlkzZVJINTJKYnFCVkNsQlVSYkFhaCttNVJP?=
 =?utf-8?B?bFVPV3VDT2dYVlZIZGk2VXEzNkRuVmtTUXREMEFmaEtLYVpDcHgzRXBUSk1K?=
 =?utf-8?B?ajU3STBHVVRweVkrZE5PZ21jNFJnLy9XSFVFYTV0TlZldDBWNVA1bDBoOXFn?=
 =?utf-8?B?TGpMK0ZZYzk5RDUrTG4zT255YmJJK1pTWDVScEY2QjNXa3JuNlBQaXg1clZz?=
 =?utf-8?B?Umx6RmRNVkFqS2Q5QXVyaFdob0J5bHpXRTBPelFiOENFTVhEc2x4SUpJOElL?=
 =?utf-8?B?RnMrMTBCR1ZvRExmWmZqZEVzQVExWVFrVGkvN1FITFVtVkJ0WElhOXpXY0hM?=
 =?utf-8?B?V2hXUHJRNGVKN1lIaDlUMmdTQjdwdWtGOVVEd29jMkY1TE85bUZYN0Y0eHM4?=
 =?utf-8?B?elJTL04wRHdsdDRqbXBTd21QOUlvNzhNUWh6OVRFV1FpZmdBc0tNSjZVdUtI?=
 =?utf-8?B?bUo4L0xvdHlSN1NmM1ZHNEVWclZSMmhnQUhwWklDQjg0SjJlcm9NbUI4Vlhv?=
 =?utf-8?B?WmViTDlxSUV3di8rd0dtZm1pZXVaWHY5dEZtK0Y0aUJWN3JvenQ5eXJwbWJF?=
 =?utf-8?B?SDAzVkpJc2FUeE1xeVdkWS91dUFVeCtCOUdvUWdDMmhBaGFIMVkrVkxTbDFx?=
 =?utf-8?B?NmF2c09IRjNHSjRlQ1BWTXR5SVFuejIrbTRJUWdRbWlJZFNtKzJabHlHTk9S?=
 =?utf-8?B?OEM2VlRuK0Rnc21pa3JrQzZNQVR6K09SenZsd3lhdzhva0JhU3JFdnJkL0lK?=
 =?utf-8?B?aXpvRldUUXRaSllNU3NzL3pvUFNEYVFaTU4vdUo3MXhsSXF0aVlvTExHQXYz?=
 =?utf-8?B?R2R2RUtkWUdKUUJIKzhKcFdHL2V2WDB2UXAzdWEyQnpxVXFTbUNYS0lqckQ0?=
 =?utf-8?B?aEd2a1Z5NjN5ZVVETTNhSlFzbm02N05RaVZkenBzNjhSQWYweVl3OU9BMDV5?=
 =?utf-8?B?RkFRaTZCMnpuNTZxaDFFbHBkLzBMcVpSMnhGY0szd3ByMmpDYnBFYzQrMzFl?=
 =?utf-8?B?bzVZdjhiRm1hY3lpaFZxTklxRlZVejIxSXRDanVIODFJNnczZFQ1c1dCc3pv?=
 =?utf-8?B?UVZxbzN4eWgyNXNMV25lSlZIOUs0aGhnRXpacEo1QzhZZjRWZklUeFI4NEtS?=
 =?utf-8?B?TzRJckVMUXAzRHlCMnlpSkVVSHNTV2ErcXNveDBxMU9Cd0J1ZzdFOTJxNWRq?=
 =?utf-8?B?WWdLOEhxd0J5NXEydXJTTTZncHRYQy9peVJ6S2VUZTFabWxZK2RGWCtSaC9T?=
 =?utf-8?B?NHk2UlpCNlRESXlmMEVhNHdWR3BYdWloOHo4dUdOeU00TGNYNVZ5VDh4U2NK?=
 =?utf-8?B?dzRCMVJFcW42enU2dUlNR2dpZ1JiYWlnTm4wU2hPMjlpVWUxQXdsV0Z6VE1L?=
 =?utf-8?B?b0VlREFCbllsQjByRk96YUdBclJaRlhCSEJIaFIyRWFYRE5NazFSV2l6Z09s?=
 =?utf-8?B?U1I0dEF5bTBJWjVrV2JONHJDbVJHTG5Zd1hicVpHRXdqSXR0cVUyZEJFSFIx?=
 =?utf-8?B?blJSTkM2UFRTR1F3YnBpMVF3QjdxTkN1V0NlNVQ3S1lNWWtiMWMxcXNBaDYv?=
 =?utf-8?B?eU5vZUZDU0VRWFRGSXo5VUpPcUtOWWRLM3hsQVZNUFZxVjU0eU1idlZVczhz?=
 =?utf-8?B?NlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <142196E5C8FBCB4295AF872C3F0B6912@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c62a2ba0-4661-4d6d-64cf-08dce8a18372
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 20:32:37.2019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ztV/R/lAQKH/0YQlGyVjB4vzIjAd0DwbO0Gz0EiXLi/1XLiS23m5c2Qq8wv/wo41/nxQBVSngzZa9bGLz00p2GWA5oqtr/BUxGxwbsituhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4627
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

UmV2aWV3ZWQtYnk6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+IA0K
DQotQ2xpbnQNCg0KT24gVHVlLCAyMDI0LTEwLTA4IGF0IDE1OjM3IC0wNzAwLCBNYXR0IEF0d29v
ZCB3cm90ZToNCj4gRnJvbTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
DQo+IA0KPiBGcm9tIERJU1BMQVlfVkVSKCkgPj0gMzAgQzIwIFBIWSBjb25zb2xpZGF0ZWQgcHJv
Z3JhbW1pbmcgdGFibGUgb2YNCj4gRFAgYW5kIGVEUCBiZWVuIG1lcmdlZCBhbmQgbm93IHVzZSB0
aGUgc2FtZSByYXRlcyBhbmQgdmFsdWVzLiBlRFANCj4gb3ZlciBUeXBlQyBoYXMgYWxzbyBiZWVu
IGludHJvZHVjZWQuDQo+IE1vcmVvdmVyIGl0IGFsbG93cyBtb3JlIGdyYW51bGFyIGFuZCBoaWdo
ZXIgcmF0ZXMuIEFkZCBuZXcgdGFibGUgdG8NCj4gcmVwcmVzZW50IHRoaXMgY2hhbmdlLg0KPiAN
Cj4gQnNwZWM6IDY4OTYxDQo+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmth
bmRwYWxAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5z
LmF0d29vZEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jeDBfcGh5LmMgfCAyNCArKysrKysrKysrKysrKysrKystLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBpbmRleCA0YTZjMzA0
MGNhMTUuLjBkNmY3NWFlMzVmNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTExMjIsNiArMTEyMiwyMiBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSAqIGNvbnN0DQo+IHhlMmhwZF9jMjBfZHBfdGFi
bGVzW10gPSB7DQo+ICAJTlVMTCwNCj4gIH07DQo+ICANCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfYzIwcGxsX3N0YXRlICogY29uc3QgeGUzbHBkX2MyMF9kcF9lZHBfdGFibGVzW10gPSB7
DQo+ICsJJm10bF9jMjBfZHBfcmJyLA0KPiArCSZ4ZTJocGRfYzIwX2VkcF9yMjE2LA0KPiArCSZ4
ZTJocGRfYzIwX2VkcF9yMjQzLA0KPiArCSZtdGxfYzIwX2RwX2hicjEsDQo+ICsJJnhlMmhwZF9j
MjBfZWRwX3IzMjQsDQo+ICsJJnhlMmhwZF9jMjBfZWRwX3I0MzIsDQo+ICsJJm10bF9jMjBfZHBf
aGJyMiwNCj4gKwkmeGUyaHBkX2MyMF9lZHBfcjY3NSwNCj4gKwkmbXRsX2MyMF9kcF9oYnIzLA0K
PiArCSZtdGxfYzIwX2RwX3VoYnIxMCwNCj4gKwkmeGUyaHBkX2MyMF9kcF91aGJyMTNfNSwNCj4g
KwkmbXRsX2MyMF9kcF91aGJyMjAsDQo+ICsJTlVMTCwNCj4gK307DQo+ICsNCj4gIC8qDQo+ICAg
KiBIRE1JIGxpbmsgcmF0ZXMgd2l0aCAzOC40IE1IeiByZWZlcmVuY2UgY2xvY2suDQo+ICAgKi8N
Cj4gQEAgLTIyNDIsMTEgKzIyNTgsMTUgQEAgaW50ZWxfYzIwX3BsbF90YWJsZXNfZ2V0KHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ICANCj4gIAlpZiAoaW50
ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcihjcnRjX3N0YXRlKSkgew0KPiAtCQlpZiAoaW50ZWxfY3J0
Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRURQKSkNCj4gLQkJCXJldHVybiB4
ZTJocGRfYzIwX2VkcF90YWJsZXM7DQo+ICsJCWlmIChpbnRlbF9jcnRjX2hhc190eXBlKGNydGNf
c3RhdGUsIElOVEVMX09VVFBVVF9FRFApKSB7DQo+ICsJCQlpZiAoRElTUExBWV9WRVJfRlVMTChp
OTE1KSA9PSBJUF9WRVIoMTQsIDEpKQ0KPiArCQkJCXJldHVybiB4ZTJocGRfYzIwX2VkcF90YWJs
ZXM7DQo+ICsJCX0NCj4gIA0KPiAgCQlpZiAoRElTUExBWV9WRVJfRlVMTChpOTE1KSA9PSBJUF9W
RVIoMTQsIDEpKQ0KPiAgCQkJcmV0dXJuIHhlMmhwZF9jMjBfZHBfdGFibGVzOw0KPiArCQllbHNl
IGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAzMCkNCj4gKwkJCXJldHVybiB4ZTNscGRfYzIwX2Rw
X2VkcF90YWJsZXM7DQo+ICAJCWVsc2UNCj4gIAkJCXJldHVybiBtdGxfYzIwX2RwX3RhYmxlczsN
Cj4gIA0K
