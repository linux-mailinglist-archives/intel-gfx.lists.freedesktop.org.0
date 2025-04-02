Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB17A787A0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 07:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C5210E1EA;
	Wed,  2 Apr 2025 05:41:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGNsEY3U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C7810E082;
 Wed,  2 Apr 2025 05:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743572470; x=1775108470;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=jzKiutEj62yqnrthnzz8oYXVbuM3KiPYktoRaF7GfvM=;
 b=XGNsEY3UlECep05w4ImyI1ZcOjpOQrqktpzv+P7xdx1Q4tjozvv5udzl
 oCzjwkZbe/Ij30LsEeoWMYmLRXD4bFANJqi+3so4+NDyBTm8vpyvjGx7F
 Iku19BxoYec0A+XoSDmq6siORtCHiaZ0zjkADYlQ2iQCSQMlr02qGpPOq
 RZtHvFg0ZPGOoiYtC7fZMoo8OmU8KjYCNxGqd/+70UT2VmItkR3x3FwdB
 ijsuryTgGNZC1fhmpGtLyeLRVBbUKjh114HTzEkMHmf3dnp+GJ49mkySS
 5wWwxJp/x35nUGWPfmHY+i7XYtGt4LSyiMQiv+JDIjdZ9SJ6NjXMCDD3Z g==;
X-CSE-ConnectionGUID: NjOcCab/QyWf1MiZS5jUUQ==
X-CSE-MsgGUID: f6jCVaC5Q+Gxov7GugO3Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44810249"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44810249"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 22:41:07 -0700
X-CSE-ConnectionGUID: sy1dI2MuSlCFV5Fh6o5ESg==
X-CSE-MsgGUID: JOeKS4fjQlODmTprxbwK1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126841706"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2025 22:41:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 1 Apr 2025 22:41:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 1 Apr 2025 22:41:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 1 Apr 2025 22:41:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s2/bnM3sKNR9mjw5gclvywgzPWwztwPjfFX3lTuiXWI3LCbAQvV0dx0SsMzQs31CfJSWqJodddRk0uRy4YxND/OsTKYS6cFp/RtaYJlAZdheHlAgYnVAa6glTtmd3dIAx+VI8RHVJPiwUfhoMIvdjc1Y33QUyQPRljAVFHvNe6W9I+wY4HlTaH0YMbHdmrKkWNTRa6eqZAu/AWlktN4jmllEbE3+R1OruSztPPo+xmJJcEYl1InofndR5PzrvrJGUdmPfzQdBSS/pYHWZ3z6V1ZUsYJ9fCYenPdHGNsZBnmduJH4wV3Q22BCfhDGanDtRQ7ywm1sgtd4B3dPrJ7HPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jzKiutEj62yqnrthnzz8oYXVbuM3KiPYktoRaF7GfvM=;
 b=RKDNvafEy7yNMBYD0N89xDR/Bo1TmyEYCrkfCsy9zAd6v+24v40wt3PxBLhnkcQWpuEjgRr0J+5ON3xgVHk3LRXyI8eoGGrtFvZjthY9Z0DQm7L9hZm+WVQCIu+lb1nKNDygrSt6yZWedB5+xyLksHY2Sj8D7hHNDmNTFP4K5Vl5lk9EZD2sx7UzAScV7KY1ln08A5HxIVhAVxufW12un/nfZPZSInfkYS2WUpYpFLqgbY36XOr9xmgnqPVa4XBZCT34noEjios+rmPs4OKTWl2p+5PzFOPpKBsChfvEtJ0exEZoAWd95TEBhOXCOKCipXXxHSG3CDVYEuVrk+AxMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7436.namprd11.prod.outlook.com (2603:10b6:806:307::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.44; Wed, 2 Apr 2025 05:41:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.048; Wed, 2 Apr 2025
 05:41:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: Prevent DP Panel Replay as well when CRC is
 enable
Thread-Topic: [PATCH] drm/i915/psr: Prevent DP Panel Replay as well when CRC
 is enable
Thread-Index: AQHbohxtYT3v41TzWUGR5TGsgXy4S7OOi+WAgAFThQA=
Date: Wed, 2 Apr 2025 05:41:03 +0000
Message-ID: <f0634ff3f9a1034fec55d79640c43108f39016f8.camel@intel.com>
References: <20250331090747.2964028-1-jouni.hogander@intel.com>
 <87wmc42py8.fsf@intel.com>
In-Reply-To: <87wmc42py8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7436:EE_
x-ms-office365-filtering-correlation-id: ced057e0-383d-41de-c202-08dd71a8f513
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VktuQy9HcDZaV2Z1QzY0S3cwMkpwQ2tKc29PZWFTMjVxQ2dDTTQ5YmpNMHZF?=
 =?utf-8?B?VEtwU0oxN2NmaUZWVXRyZHUzNlRid2RLbXhmbVhYcVR1SDhiR1VSRWhub0JV?=
 =?utf-8?B?eFNGa09DTHR4c2NrZ2VlYVZYb0Z0TmZkOFJPRTRLUStyVXhFUk5IdUdGenJw?=
 =?utf-8?B?TUhsUmNWVjRvU2oxenZSK3dTMDZJVnVvb1FUNStoNDRKc0Fvd1VENHJhRXh0?=
 =?utf-8?B?Mi8xR2pXdXJvcUIycHZsS2JqQU1mb200ckNRRFdpeW92UjcrMk9kTisreHFM?=
 =?utf-8?B?SkJVbFVQQzNLVmViZEMxNDJkZ1VrRzN5SjV3d2xPelE5UUJ4cmozUlRDM1Ru?=
 =?utf-8?B?OXNFSG1WcTA2akhibkdWbEE2MURHNTAzVFpZbUwwaTVDRk5ud0kvb2ZoRE5t?=
 =?utf-8?B?cThaYmRrYi9mUHZQVlRVRUVYUkpzY0o0WmNocGVRVGVoczZZc040ckRKbjBh?=
 =?utf-8?B?QWFQMlExOU9OaGFXQWFqWHJvaTZEVG5MakxQZ25CQkc2K20vZGJuQXdWenNs?=
 =?utf-8?B?YTZxRUtuR3Rrd0todTR1ZmNzZjg0NnNNUmMyZmtwOXU4R1E4ei90YWVyemdj?=
 =?utf-8?B?cFpmK0J3RkdOV1BWZmZxOENZS2dTWDFOVUdrdUZEam80cW9aNE9YcFN1Z2l2?=
 =?utf-8?B?NkFFRTJCY0h3aVJBOG0rZ1MvQUErNXFvODJjM3ZjQUhlNzI2Rk12aU96TmJD?=
 =?utf-8?B?WXZpUTIzOW9TWTdiSnBPcE9ZWWpLejYyWklpbGZMTEt1ZUN1MjEzK3NMQWlT?=
 =?utf-8?B?d3FhYXNYVktpd3g0alFHTjlYRlhLVkdKSlpxZElDaXVkNmVDa2lvWkY0Y2dM?=
 =?utf-8?B?VnhOQW5kN09XbUJ6S05SQXgwY09HcWFaakJVSlJ4dDdETis4K2wwdnZLSnRK?=
 =?utf-8?B?YytQd0pGeFQ2RHhpUmoyOWozR2Q4STJDcWZ1RUtTRmZHOVlHTFBwbnY1N29O?=
 =?utf-8?B?WXdDUnlwUWorUklWRWxWMnNYZ1hYWWN5cTZQVHZxSkVUT0FTa1JjcVBORVBi?=
 =?utf-8?B?cFNHdEY1bnpmYW1zd00zRk4wdUxLWTlwSHZXMUFmeDk2c1dqSXEwc2ZkS3FR?=
 =?utf-8?B?QjIveHZ4U05VNFVWUDI4bVdpRmhRM2NpNEVEYW10VGQyaVkwZTI2Szh0N3E4?=
 =?utf-8?B?cVBtKzkyWFJnKzRNWVNzM2JaNUQ0NWhkMDBPamxPMDVJR2RFa0Z2bTd5WTl3?=
 =?utf-8?B?enpSMFpxT2pMbG8rOUNVNXVOeEEzWFMwckdhNGV1VkhacG1YNUlYOWxqRUh0?=
 =?utf-8?B?ZlU1eHE1WTBzUm1BNFkwSmJBa2hPNllTK0tTVXpNWThwVk9QR05RTDBGNjVD?=
 =?utf-8?B?c3F0bTRQQzhqUTU4K1VPMWhvSE1iWHBqUHlmWmVMU2tudFhySE9DMU95N2FV?=
 =?utf-8?B?WXQ0eGhHclpnYXViQStMK3VKOXZYRDRmdHplcXlxOTkydUxSWFVwYjZVYWhn?=
 =?utf-8?B?SHZUR0hpbG04cE1KWlptdis4QlI2T0JlMHlpcGxCUlV3SllVV3V5UEJ3bGxq?=
 =?utf-8?B?ZDBwVzVveUZMKzJHMlp5ZjdXYWZ1NGhRSkxyamlEVG9aRzBpNTByaGtCT3pF?=
 =?utf-8?B?c1ROUEZCZzFvbUI1T3JYU3FDOFd5cUFwZFdoNDEwbElPdnNGZS81QmNvTzRQ?=
 =?utf-8?B?bE1Ra0RkMEFsQW9ETTlNeThFTkNQMmsxVFFzVkYxVWpiTndFbkZtOGZQRUdP?=
 =?utf-8?B?TFB1SGtoOWxLckkrbi9BNGcwQWZ1Q2RTdVM2eHpBN0ZKQ01tZDZiZ1l6YVR6?=
 =?utf-8?B?Ti9RT0JZTm84ZUliMm1yVmlOalIrdkt3WFVWRTd4Smh6R3ZHSGQrb245NUZZ?=
 =?utf-8?B?VnJGN0VTeWpLaUw5V25aUCtETCtnbDFjVjhzclBZcVhYa0pjRm1ReTE3SDFz?=
 =?utf-8?B?T0l5a2dFeDFoTFdNcGVSbEhjdkZqdC80WUMvRmRpdGhURHBlRjBxZlRLeTEv?=
 =?utf-8?Q?rXaCO8Qtv5HT0U1+PAgB9g4LQTt/gr+C?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU9YT1lkZlAzR0NRUk5OQnRKZ01EcGh3UHB0NUVKektqaFpVU1lJUURyQVFp?=
 =?utf-8?B?aXpHR3Zzd3ZYRk9NRHg0NTU4T0EzRDVlc1l1SkR4aWlDci9pMUJ6S2ZHb09s?=
 =?utf-8?B?eEl2TzRIWnZ4YldmOExReGdIRXFnQ3dQVVRkc0dMblBsdFFxQWtnU1AvZVli?=
 =?utf-8?B?bGtQUXlRdTREU2VYdXg1Y0tYeWtHei9zcTNkbDVsbEFtSHIxbTkzZStCbjY2?=
 =?utf-8?B?bjM3aW1Xdm5VeG5PeWVSQ3J5WXRMOGFWT21HMklGRlBGUXRBZGZuZEVId2Fj?=
 =?utf-8?B?b1RIS2lqUmxZcUhHTklLeUZLZlU1WGFsZlgvZWtad1AyVlh6dGVobUZQU0Q4?=
 =?utf-8?B?cWdwQkpYaStxdEpRc1J4Yk5Fd0JmSDFwSlhwcVhGaklpaWduR0N2M0hXeGtm?=
 =?utf-8?B?T09WWnpRT0M3c053QnF0bHF4UXA0aTk5dUdWSTZweHI1dVRFa1BxWEczVDVO?=
 =?utf-8?B?TERSOUNIWFMxdHV3dVVvQUVRMlkrZ1g2c2hJTFc5SWR4c0MyZERnbU5Ja2ZL?=
 =?utf-8?B?dVJabWdLM2VsWERRV2dvd05TMUV2T01ISW01TlpsMnYzYmpadHdzT3FUZitO?=
 =?utf-8?B?VGdFZ29UVlF6aGlZMXVTSHpjYVRBTmo5M3ZKRVpPRTIyVFJEZE5HZTBkUnhy?=
 =?utf-8?B?aU5XRnJTa29qbjhwOEpCZ3NLRDNudUFOL3NRZEl4bGVmMmdjMytaZDk4a3Zt?=
 =?utf-8?B?UjVCU0VWR2ZpaC9qUmhUdEJ5bUtweTcybG5CUXpVbVRLWkp3K0ZvVjFyb3Fr?=
 =?utf-8?B?Y3lxS2pDL1BxdEdjN3lSOFBUODgxb3MxeERSLzc0SGo1eEd6eStVS3dBYmFI?=
 =?utf-8?B?enE0WUszdk9VbXhDS1VZdzNwSEYwdmMwR0s4ZW0rUzVIUHNYaDA3cFI1VC9G?=
 =?utf-8?B?RzZ1UXA0OXJkU3dndzNYMS9tR2RRbGN2NUVnMXNXbEtJd3JvT3VqWkdYTjdO?=
 =?utf-8?B?cTd1UGdldHNkcVlsV3p0TXBIVHRjZVRDRVpWSFRTeEdFaUlqeDBremNDN3dz?=
 =?utf-8?B?eTArMWQyS25OQnpiNkRxSkNsOXE5bkFpZW1MZlIrQStJdUhFWFJwV2xENEpu?=
 =?utf-8?B?U3Q1U3hqZCtrTGEwdWFyTitIQkp2NTB4QTlCZndzOE15RGs0ZWdXVTBweGVv?=
 =?utf-8?B?WFVPWXMxeitRelI5YWpVcklSeHlEd3pWcm04VmZORzY1UEdjSHYzYVJFNEZm?=
 =?utf-8?B?OUdDUG1FYUxBSTcwTm1QOVVpc2pmZ1JaSzFvZU03cWtmVHc0cEhhV0JoMjFJ?=
 =?utf-8?B?Z3BWZFJrOGFEWFpXcnJzMWI3UGtmd1lrOFFHcTZhSGdGdnk2RURkc0FuWUVm?=
 =?utf-8?B?SS9JOFZLTzBlQXRjU1RGMy9FUmdWNVd3L0lnUFgxaG1NNHE0clpETHNIT2JE?=
 =?utf-8?B?QUNXL1pZTlhzR0NJeW1jdms2b1h2T1h2S1AxS3dtejdybkFFZmw0MDh1ZGJi?=
 =?utf-8?B?bTh6SldMZHQ2Y0ZiaFhScDY2Ym9nR1NRNXcvdDBMMU5sZUY3T3B5QVJnUDZI?=
 =?utf-8?B?R1B2SXJSaTJGR3gvWkZaM0JCSFMvdEdDdGdLcnRTR3UyN0FMcndIa0VhUTRP?=
 =?utf-8?B?aTBaUDBQMEFZVEJpL3NlMGxlSGhrQ20yRHJpVTIza2I4MWJIU3hsWEF0aVQy?=
 =?utf-8?B?aGxpS3BHelVoNWtFN2ZqZ1gwTVJqek9iUFU5RWNIT2NQUGhSM3VkdUpLQWk1?=
 =?utf-8?B?cHJ4bGRMaUM2VlJlbFoyY1lhRFEyRW9xeG5XalJjeUtGUnB0eHVJbExmd2Uz?=
 =?utf-8?B?cTVhL0gwdVFKcS9HdVpUNUVmelhlb0p6QWNENnk5Y2ZQNExDL0h6Ni9mZU85?=
 =?utf-8?B?U2NoRHFxUHRvSDJEV0RaVjFmNndaZWZqY2JVcnczbXZ0RzQ0TURhejg0QU9G?=
 =?utf-8?B?bEhPdFRGalJUMUFSZGZXTXJvNFpxb01lSmIzdUh5L2xpMEpVaSs3UHBjaU43?=
 =?utf-8?B?d3pxT1o5cjZwSDV5S1kzL2pFUFpaQWpzWStyVElXeXY5VWxDZWhYV216NWF3?=
 =?utf-8?B?eVVlYTF6M2E2UDVGVmptdUVjdUZYRHJKM2pESTlnWGwzejJROHM4a0tNZlVq?=
 =?utf-8?B?NlhWcWFiQ2hIV2VJcEtxODZ2VTZWYnhhaENxLzBwRG9TNThiV29JbGZOYUti?=
 =?utf-8?B?VEpldUhUVzBlZ2k5cW9iL3h3elM2YXBjQ3N1SXRGY2NrK1J3WHo4U2gxMFht?=
 =?utf-8?B?RkRoQnpXN1FTNzNrdmdFQW5FN08xbGVYdUVKTDRqVEdmYVM5R1dnakdueTB5?=
 =?utf-8?B?cGlQY2ExMlVLaDEvdlh3UnBKK0hBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <864FE82CC8F1DE45ADDCA0A9EEC71BAA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ced057e0-383d-41de-c202-08dd71a8f513
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2025 05:41:03.6292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aQ7jpPbPmuPPAgt3dv5s7QCsYHoDy0q3ufI5TD8dHUKbNZJNcTHazGcwlYGuGq6KHmKUwmhqpYkCQclobegPa76uLT7ybkj6jOalkXu8c3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7436
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

T24gVHVlLCAyMDI1LTA0LTAxIGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAzMSBNYXIgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IFdlIGFyZSBzZWVpbmcgdGltZW91dHMgaW4gb3BlbmluZyBDUkMg
ZmQgd2hlbiB0ZXN0aW5nIG9uIHNldHVwDQo+ID4gd2hlcmUgRFANCj4gPiBQYW5lbCBSZXBsYXkg
Y2FuIGJlIGVuYWJsZWQuIEZpeCB0aGVzZSBieSBjaGVja2luZyBpZiBDUkMgaXMNCj4gPiBlbmFi
bGVkIGZvciBEUA0KPiA+IFBhbmVsIFJlcGxheSBhcyB3ZWxsLg0KPiA+IA0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCj4g
UmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQoNClRoaXMg
aXMgbm93IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4gVGhhbmsgeW91IEphbmkgZm9yIGNoZWNr
aW5nIG15DQpwYXRjaC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiANCj4gPiAt
LS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMiAr
KysrKystLS0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBpbmRleCBjNGJlM2Y0NjUxMWY3Li5jOGNmYTI3ZmIwNDNkIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE1
OTUsNiArMTU5NSwxMiBAQCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+IMKgCX0NCj4g
PiDCoA0KPiA+ICsJaWYgKGNydGNfc3RhdGUtPmNyY19lbmFibGVkKSB7DQo+ID4gKwkJZHJtX2Ri
Z19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCQnCoMKgwqAgIlBhbmVsIFJlcGxheSBub3QgZW5h
YmxlZCBiZWNhdXNlIGl0DQo+ID4gd291bGQgaW5oaWJpdCBwaXBlIENSQyBjYWxjdWxhdGlvblxu
Iik7DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiDCoAlpZiAoIWlu
dGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gwqAJCXJldHVybiB0cnVlOw0KPiA+IMKgDQo+
ID4gQEAgLTE2MjUsMTIgKzE2MzEsNiBAQCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoAlpZiAoIWFscG1fY29uZmlnX3Zh
bGlkKGludGVsX2RwLCBjcnRjX3N0YXRlLCB0cnVlKSkNCj4gPiDCoAkJcmV0dXJuIGZhbHNlOw0K
PiA+IMKgDQo+ID4gLQlpZiAoY3J0Y19zdGF0ZS0+Y3JjX2VuYWJsZWQpIHsNCj4gPiAtCQlkcm1f
ZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gLQkJCcKgwqDCoCAiUGFuZWwgUmVwbGF5IG5vdCBl
bmFibGVkIGJlY2F1c2UgaXQNCj4gPiB3b3VsZCBpbmhpYml0IHBpcGUgQ1JDIGNhbGN1bGF0aW9u
XG4iKTsNCj4gPiAtCQlyZXR1cm4gZmFsc2U7DQo+ID4gLQl9DQo+ID4gLQ0KPiA+IMKgCXJldHVy
biB0cnVlOw0KPiA+IMKgfQ0KPiANCg0K
