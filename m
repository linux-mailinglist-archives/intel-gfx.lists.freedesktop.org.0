Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1398AD46A8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 01:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885AC10E162;
	Tue, 10 Jun 2025 23:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUlWnT0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1371A10E162;
 Tue, 10 Jun 2025 23:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749597904; x=1781133904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J7v49IlQRvGseaSHJCslEgV8zDPkLiVtPHwjHQDcj80=;
 b=MUlWnT0AlmT9y6dTfN6hBafSusRED4kY5dXD9F6CxAYYbLGcart1ZUtn
 VQUrOymBnNI1k+LO4l1J9qDpoeOTGrdi9FlGtY/8uLHpggcfibVNqHzLZ
 3J1EA02rRgnAskMqB3pgULXMMoEgjfAQxYYwrrEYREGjiiiNhJenym6kJ
 5AGmLJSrClWQ3dgMqntLzv/s8/KAVULD8pZt418QrAwQILOdG6R/eyj94
 HtnU930Nciy6gPa2FE3L4YoUXoUy1wZH0XXKPxoeIOTKW10EkwFg1fRBC
 afyhYkfrVEI9Yqln1opgP5OA7L1BMzhJj2OW+dgILCttaC5TlSS5Dg6iQ w==;
X-CSE-ConnectionGUID: dYWBpNMyTE2czLG7rEcjEg==
X-CSE-MsgGUID: hfV99gPgS42+0WIqeJWg7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="63137530"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="63137530"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 16:25:02 -0700
X-CSE-ConnectionGUID: KjwqOgB/R+2XyaFeTCG8RQ==
X-CSE-MsgGUID: S/CT/LEURYuecLluvOjuxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147915795"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 16:25:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 16:25:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 16:25:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 16:25:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3UBrwj81ND5GahSY84OQv9Cd9+mhwSZf6+Lp18zowFdtSgHH1S7px40FuNtJBPFYssPzO5B8Zz+rYrJs/hdJulp7gJDQIAw30aAxllrXfvTXanl7SUPsnnCVBoc322udT7Zr5wFRzzDC7lHuxdS/MAyDbtSA+eddCTDjjlNSLcPBAi+mR7VHGjslFjvH12epFzUJ+Zml3mdP7/x/L1WDorPBFTkSP4ombOOJdiNwukeHCBxKuFgQw0/e3ClDhdAG/qU8kyH4IbzgtAlO9zTAQPg7LJvDbwjP7/3MPYxZ5WgtSDkHCV9kAdp4/yDHq1TLqplV1GsUmBIzAHF4cZ7Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J7v49IlQRvGseaSHJCslEgV8zDPkLiVtPHwjHQDcj80=;
 b=fLC0NbP0OfoK2aofcVWV6v5ylhppIxvlU9WQ317/a0EbQiw6uL1//ONrWIsdNF9JCWT9bjSQTvobVhbzmC3N8g3z0acJWUifXmVQ/IwzRbvTftsLyJDuCCakic8WaOPN80ZF7W4KU9i/5+YioLB97IUTYcKD+9r/8G4ZfKNIbk1Ipa1VRFwaMZL+bZiLmU63AImQr7VCz9OR6AHp0atQbDjKAkyNoEh8RtMicUQZ90rzssptmSPOZoGdjabl1nB3U1hGBjlw7u1vcKFhcGC0nQkbF1pMPo16hrrX8Uzh9kF8Ku3xwIn0D4XwW8J8sDK2OzLbQOhtDOJy/UiZhePAgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8813.26; Tue, 10 Jun 2025 23:24:58 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 23:24:58 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for
 pipe C/D on PTL+
Thread-Topic: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for
 pipe C/D on PTL+
Thread-Index: AQHb2UjF3YQd4aMGAES+TWSWgVXNY7P9CqSw
Date: Tue, 10 Jun 2025 23:24:58 +0000
Message-ID: <DM4PR11MB63609BA53894388FB862C0E8F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CYYPR11MB8308:EE_
x-ms-office365-filtering-correlation-id: 87a65476-a17c-4eee-4d89-08dda8760437
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aEJnY2VDSHhnOWlGOWF3OXRITGF4dStZZUdPbTR4UTEzSHlXSVBYV1RsZUJQ?=
 =?utf-8?B?SFpZeTNMR2MwSVR2N3RmK2RCVzRlMWtWMitOSm9wNXlGeU1tMmxwTnhtUWRR?=
 =?utf-8?B?cVNkRE1nMzQ0RDZrK3VWNS8rOVdseW9HTDBSd0oyTU5ZdCtFeFgzNDVtbkZp?=
 =?utf-8?B?V1h3bitqZkg0NXBNSldNU3A0L3NCYkhkRmpMSXhOcm1rWnVKbWFCY1NiS3Yy?=
 =?utf-8?B?azlZd1REOE5mSU9XZlh4cHFSTWFyN1kvSW1WNnZFYTFBSFI5dURNeW8xcndj?=
 =?utf-8?B?cU9RMCtHRjQ3WjlKME5MSTBQcGJRd3dyOS9PaVEvOXI3Zm96anhCa3Y5Z09u?=
 =?utf-8?B?WThmTVp2Z2xwRlpuRHgwVWg0bngzTXE2NEFLZmwzeWZwTFZBMFdDTU1sbm9L?=
 =?utf-8?B?c2Z3ZXd0dkZjeEZMSjVrMkRkMTltTXRrWVUwMzFKZ0swT1dRVzJtVmlGWE9S?=
 =?utf-8?B?eHYvWmlvN095bzRsSFNFdWE5ei9RT0o5dWdXQ3p4MkVhVEh5WU01ZjFGQlIr?=
 =?utf-8?B?NkZYdm1IaUt0OWNZbUQrVEZlKzdxZ3A1b2VEcUlDSXo3Z1k1aUgvMlorOXpQ?=
 =?utf-8?B?WDNiT2xwczFxZnQ5MmVyKzYxUXFJVUVvTFhYeXFsUnVjUGgydFhvUUZBb3Jo?=
 =?utf-8?B?bjJWU2dOVkhWZW5wTCt0U0xsR2IwT3RiL3lMN3BxdGp4Ry83TUNPYTJrYVNo?=
 =?utf-8?B?NjhwMHQ0ZGxCcjRBeEFhM2o2SDhmZDMwQW5nMS9uYkxBYnlRNmJ0SkdQblpM?=
 =?utf-8?B?WVNtNnpMd1ZReGxWNHN4ODNqN3pPNTg4cFpRaEQrR3BxcWNhcVcyOFdsbVZv?=
 =?utf-8?B?WXJGaXBLK2lIcnpwc1hwcFRLTkhTL1JOeUptOGRKZGJwcFRNUHlsZXdNbHY4?=
 =?utf-8?B?Q2pmL2I1Tnd1bElXeElrRkd1d0NxUHBZclAwTGpxcDJ0RzZpRitJdEt3c05u?=
 =?utf-8?B?ZGVWVkk0SFhDbTBCTlk2T1BEL2x6TEpvUnFRbytwYXU5NS9XMEJvL0JDQlhj?=
 =?utf-8?B?RUsyTDB4K0FTTFFtWHpuSVVWdG92TEdaVTk3dHlHbU5RUVJaUGhpdmgwVDYx?=
 =?utf-8?B?UGFxNkRuTi90UXBYK3pOcThjbjY3d2t3QXJFQTVOQWJ2QUFnVnkvMVZlaTUz?=
 =?utf-8?B?aTNiNUJSYURzdE9BQU9iQ0c4Q1FDbm1BbTNsVWdXMlA5UGZwOEUxVVdWTkEr?=
 =?utf-8?B?dGZGUkYrbG8vU3ZSL1VGYnFhRmVmQXRCaityL21ia2NCVWN0Z2oyUUFmbkh4?=
 =?utf-8?B?RWczUmU1YnU2UVlZQUptOTdoQkh1TWhmZlFOdnI1ZmxMNFpPcjc0Rk9pT3dj?=
 =?utf-8?B?VFRPaHpueWRQY0xJcVpYdnNGWnZhRnV0TWNkdU5pUC8rRE0vY3hmOVh2L2lI?=
 =?utf-8?B?ODZrczkwdjVLNC90Ylg0QWVnckJkdklkb2hCcnNaT0RLb3ZrNmwvZ0ppSklZ?=
 =?utf-8?B?SjZaYkdudzJVTzhmS2pMZlBGWWxxczFTamVHTXU4MWY1S2YrL0ZHdklJSzNV?=
 =?utf-8?B?ZzJFZXlPK1lnajErOHZLNmZqY1ZYNTcvemJQRjZoM0pOVkUvb3RFeFZEQkxG?=
 =?utf-8?B?TEhTVEtpOWEzakZSNndTRC8wUU1MRTU3djRlQ2YzeGtyOG1CeFFibVpURUdY?=
 =?utf-8?B?WlR2ejEyRzVCbVYxRzBwR2k5ZVhPaCtRVVI1MHYxdGZITmk5NStnVFE4SHdy?=
 =?utf-8?B?c1Q3dkpkVVVNMjlyUHlCYW5Jb2JMTTNWamgyTm94dWxJemlLVTJGKyttUEhv?=
 =?utf-8?B?RUtvN08ydnR5S05qMHFqb2p4SXA2MXBEQkg5Vy9nYWdFZVFORnBVSUJpbVBO?=
 =?utf-8?B?VDRENTdiOWtUNCsvdzhLVzFtQ2lNMUFsUC9LbGk1SU5HaFQ4Snl4R01HSDJs?=
 =?utf-8?B?bXczcFVyaVR3MjVUZjBBYXpQTDFEZEZGUjBWY0praDhlZ3JxOVh3eDlqaEw2?=
 =?utf-8?B?ckRIeVp4L3VpQUdIeXNyNy95QUNIQ0hCN0c3OFJoUTVPemcySC9ZUEdEU1lr?=
 =?utf-8?Q?SzViWqb7Ahll1tZGAM1VHdnmUP0Nq0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkFIVElRMXA0dlFoM1BUQUIzRWg5aDJjblVwanQyV2FIcExVbzQ4ZU1NSTFE?=
 =?utf-8?B?ZFpYNmhTQ0k1eEZPN0hXc0Z3R2ljSnNUdmxlQXVRak5WcVpYb21BL0xxTlBt?=
 =?utf-8?B?OHhEOFEyck5DRi9ZMVJmTVppamJBM3VGK0FMMzdLc0FuZ1RTZUhsNVc3YWpW?=
 =?utf-8?B?NWI3SGljRE03bFpoRSsrQ1F3RjB2Y3Ric004L0hmblNLNU9nZ0N4elhTKzN0?=
 =?utf-8?B?NWNvMkhXR3lOYkR1RUpKNGM3QzN6eEpBSGxEaUhxUVp4N3lkNC9GWDd3WElt?=
 =?utf-8?B?eitRNTd6b2JvaEZEamYvVFQ1WUd6dkZZdk1hYWNFcWV5dVBrWGxFNlNHWEVK?=
 =?utf-8?B?WnMvRVYvK0gzYXRScGtkcFVGSFY4cnd5NDB1czVtNVhCOEhlQldUL25FNzlN?=
 =?utf-8?B?bDA3VklYZ2QvNWNjaytydVZ1T3k5d2NVcUdxcGpHVlV5QktyeWFuN245Zk5n?=
 =?utf-8?B?YVdQVVVuUjJwSmhQd2VPZFRIUk0xelNYTmJIbnVSTmlidU5zcUI0YUVSRmU1?=
 =?utf-8?B?YjVEMkRtZ1R4aUZVbENOTTJ5Q1FaN1VTN2JzYkxOeVVJKy8vUS9OL2pQdm1u?=
 =?utf-8?B?Rm9vZ1hKdUExQ2VJeUhKRVlFbS9nSnZBVmdtNUo3QTRnNGdTaVlFcjdmcTRC?=
 =?utf-8?B?QnZ3b0RHOUpwMlJXMlllWmZyMUY0aWxXM3RkRUloNHg4Vm0yUVM4cy8xWWR2?=
 =?utf-8?B?Tk1JbUxqVjk5dkRBUmFuUm1WNDlYRllIQUJsZWZiTlJ3Tm1SUjhoUnpud1c3?=
 =?utf-8?B?WkpTMmRSUExtTjRUMnhSaks4dVR1cjA3YnJ6c3FSOFpzUUhqMDY1NmkremVG?=
 =?utf-8?B?RTIzU09GN3JhS1E5OEczWGM0QVI3VU1FdU1xdlB3MlZBUFQrK0xMOWMvTjZX?=
 =?utf-8?B?S3NTc3hSNmQrbnd2blJzTGI1ZWIrZTlPUGtwczNZQmVaUWdxWEsrc0RTMkpG?=
 =?utf-8?B?MUYyNWVDakFHQ2xDV2dZcFNyTGRiVEZWUSs1NGtXT3ppY0JyV3lzODJiWmFO?=
 =?utf-8?B?MjJBYXZkR2lwWUJCN3lHU2ZVUjJDU3NWVTgrcEVUNDJ2dEEwSXhJSVlPNGM5?=
 =?utf-8?B?WGYwUmtHaUQ1RUNoRDZxUXljTUNYRzFQblNnUXZGTDMzMFVEQ0tOQUYrUWR6?=
 =?utf-8?B?Qys0U2wxU1ZGQU92ZVM1cmV6Ykt5MzRYdzhMNWNsZUc2bzVrTGNtRXJpSHZ2?=
 =?utf-8?B?OCs2NUNzeXBlZjZrUFl5SWVlRzVMK2ZCZ1hEUVBQeWErbGc0ZnlEdTc2MXdn?=
 =?utf-8?B?VFg0ZWlSYUUyMmVIczFpNHhFU2VEMXQyUld0WG1Ma1hQZ3lveUlFbkVDNWlk?=
 =?utf-8?B?NFF0L0hnbzJwYjRYSDNLUm1aaXg3ZnN3TzliM0RhM0h3V1pBMXAzYXhvU05k?=
 =?utf-8?B?d0Jpa1VqcnVtMWFWN1drZG9STExxUGVWZmNLU3Zvbk1aeG1ySnVaNDMyUFVV?=
 =?utf-8?B?T2JBN1lNUWlqWTdSYVM3aHVKOW5hTTRWb2tQaHgxckZQdGtqbVY1NkZGV0VF?=
 =?utf-8?B?TGU1ZnR4TFNhRGMrT3BDY1Z3bTVPOVR1YUt6THY1MXNlT0x2ZE9MN2k4TFRB?=
 =?utf-8?B?SE5NOTlyV055ODdlQSsxUFBGQ1FtaHU2Sy9ab1FpS3ltQlA1a2RjOUdHdzd0?=
 =?utf-8?B?R3FVRDJjZWMwS203N2FVdmxJQjR4K1lMRHBtRW00YkpWTmVkd1VEcTFOdkdW?=
 =?utf-8?B?M2ZPVmRuZnIrbm04YStyYVZWV0VoQU5VNDE1aWgwcmVGZ0l1dkVWOTMzNy9N?=
 =?utf-8?B?cWNtWWZUamhkS08xVkc0YkVUYVhNT3cvMlllUWVqOGo5dlBJYXVwU085ZERk?=
 =?utf-8?B?Z1A4TGQxMnJTVGZxMlpFYzZzaU90VXpxUktkYkwwRW5pMHB1REZKbVBUQTdT?=
 =?utf-8?B?QlRTdngyUTEvUHN3bENzUkx4WG1US0tPcnV6eTFQczNBMlpPQ2Y0NnZqV0Jj?=
 =?utf-8?B?d005UjBhUDFWbnFPbUpUcHAwelMrYlJXTW9hN1dlbS9WdXMzbFlza0FycW9F?=
 =?utf-8?B?QXovNFc0OUs1Q29LK1dCazBsZ1dvVGF2aGdOKzRsV29FQ1ZKU0RmRXBKNGNn?=
 =?utf-8?B?My84eUgzUjRPaFo4SFRSdWtnVmZLMGdsYUlKVW5FbjFSMnZwWlhqV3c1MEcy?=
 =?utf-8?Q?d6fXkrATnF1m7zxgJnG83afix?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87a65476-a17c-4eee-4d89-08dda8760437
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 23:24:58.6600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T44se/kmI5ntB+YcORaPwPvypUAww7+bBF78X+7UHpjWzlTfkgZUDJYyA65tGbm44Lv1XyCDcrmKtN1sn+xb7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8308
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBNb25kYXksIEp1bmUgOSwgMjAyNSA3OjQxIFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHY0IDEyLzIxXSBkcm0vaTkxNS9kbWM6IFJlbG9h
ZCBQSVBFRE1DIE1NSU8gcmVnaXN0ZXJzIGZvcg0KPiBwaXBlIEMvRCBvbiBQVEwrDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gT24gUFRMKyB0aGUgUElQRURNQyBvbiBwaXBlcyBDL0QgbG9zZXMgaXRzIE1NSU8gc3RhdGUg
b2NjYXNpb25hbGx5Lg0KPiBOb3QgcXVpdGUgc3VyZSB3aGF0IHRoZSBzcGVjaWZpYyBzZXF1ZW5j
ZSBpcyB0aGF0IG1ha2VzIHRoaXMgaGFwcGVuIChlZy4gc2ltcGx5DQo+IGRpc2JsaW5nIFBHMiBk
b2Vzbid0IHNlZW0gdG8gYmUgZW5vdWdoIHRvIHRyaWdnZXIgdGhpcyBvbiBpdHMgb3duKS4NCg0K
Tml0OiBUeXBvIGluIGRpc2FibGluZw0KDQo+IFJlbG9hZCB0aGUgTU1JTyByZWdpc3RlcnMgZm9y
IHRoZSBhZmZlY3RlZCBwaXBlcyB3aGVuIGVuYWJsaW5nIHRoZSBQSVBFRE1DLiBTbw0KPiBmYXIg
SSd2ZSBub3Qgc2VlIHRoaXMgaGFwcGVuIG9uIFBUTCBwaXBlIEEvQiwgbm9yIG9uIGFueSBwaXBl
IG9uIGFueSBvdGhlcg0KPiBwbGF0Zm9ybS4NCj4gDQo+IFRoZSBETUMgcHJvZ3JhbSBSQU0gZG9l
c24ndCBhcHBlYXIgdG8gbmVlZCBtYW51YWwgcmVzdG9yaW5nLCB0aG91Z2ggV2luZG93cw0KPiBh
cHBlYXJzIHRvIGJlIGRvaW5nIGV4YWN0bHkgdGhhdCBvbiBtb3N0IHBsYXRmb3JtcyAoZm9yIHNv
bWUgb2YgdGhlIHBpcGVzKS4gTm9uZQ0KPiBvZiB0aGlzIGlzIHByb3Blcmx5IGRvY3VtZW50ZWQg
YW55d2hlcmUgaXQgc2VlbXMuDQoNClllYWggY2FuJ3QgZmluZCBhbnkgZG9jdW1lbnRhdGlvbiBm
b3IgdGhlIHNhbWUuIExldHMgZ28gd2l0aCB0aGUgZW1waXJpY2FsIGJlaGF2aW91ciwNCndpbGwg
dHJ5IHRvIGdldCB0aGlzIHVwZGF0ZWQgaW4gc3BlYyBhcyB3ZWxsLg0KDQpMb29rcyBHb29kIHRv
IG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoN
Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jIHwgMjMgKysrKysrKysrKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGluZGV4IDVhNDMyOThjZDBlNy4uMjQ3ZTg4MjY1Y2Yz
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gQEAg
LTU3OCw2ICs1NzgsMTcgQEAgc3RhdGljIHUzMiBkbWNfbW1pb2RhdGEoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+ICAJCXJldHVybiBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb2Rh
dGFbaV07DQo+ICB9DQo+IA0KPiArc3RhdGljIHZvaWQgaW50ZWxfZG1jX2xvYWRfbW1pbyhzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bQ0KPiAraW50ZWxfZG1jX2lkIGRtY19pZCkg
ew0KPiArCXN0cnVjdCBpbnRlbF9kbWMgKmRtYyA9IGRpc3BsYXlfdG9fZG1jKGRpc3BsYXkpOw0K
PiArCWludCBpOw0KPiArDQo+ICsJZm9yIChpID0gMDsgaSA8IGRtYy0+ZG1jX2luZm9bZG1jX2lk
XS5tbWlvX2NvdW50OyBpKyspIHsNCj4gKwkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgZG1jLT5k
bWNfaW5mb1tkbWNfaWRdLm1taW9hZGRyW2ldLA0KPiArCQkJICAgICAgIGRtY19tbWlvZGF0YShk
aXNwbGF5LCBkbWMsIGRtY19pZCwgaSkpOw0KPiArCX0NCj4gK30NCj4gKw0KPiAgdm9pZCBpbnRl
bF9kbWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlw
ZSBwaXBlKSAgew0KPiAgCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCA9IFBJUEVfVE9fRE1DX0lE
KHBpcGUpOyBAQCAtNTg1LDYNCj4gKzU5NiwxMCBAQCB2b2lkIGludGVsX2RtY19lbmFibGVfcGlw
ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBlDQo+IHBpcGUpDQo+ICAJ
aWYgKCFpc192YWxpZF9kbWNfaWQoZG1jX2lkKSB8fCAhaGFzX2RtY19pZF9mdyhkaXNwbGF5LCBk
bWNfaWQpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiArCS8qIG9uIFBUTCBwaXBlIEMvRCBQSVBFRE1D
IE1NSU8gc3RhdGUgaXMgbG9zdCBzb21ldGltZXMgKi8NCj4gKwlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPj0gMzAgJiYgcGlwZSA+PSBQSVBFX0MpDQo+ICsJCWludGVsX2RtY19sb2FkX21taW8o
ZGlzcGxheSwgZG1jX2lkKTsNCj4gKw0KPiAgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAy
MCkgew0KPiAgCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0lOVEVSUlVQVChwaXBl
KSwNCj4gcGlwZWRtY19pbnRlcnJ1cHRfbWFzayhkaXNwbGF5KSk7DQo+ICAJCWludGVsX2RlX3dy
aXRlKGRpc3BsYXksIFBJUEVETUNfSU5URVJSVVBUX01BU0socGlwZSksDQo+IH5waXBlZG1jX2lu
dGVycnVwdF9tYXNrKGRpc3BsYXkpKTsNCj4gQEAgLTcxMCwxMiArNzI1LDggQEAgdm9pZCBpbnRl
bF9kbWNfbG9hZF9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiAN
Cj4gIAlwcmVlbXB0X2VuYWJsZSgpOw0KPiANCj4gLQlmb3JfZWFjaF9kbWNfaWQoZG1jX2lkKSB7
DQo+IC0JCWZvciAoaSA9IDA7IGkgPCBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb19jb3VudDsg
aSsrKSB7DQo+IC0JCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBkbWMtDQo+ID5kbWNfaW5mb1tk
bWNfaWRdLm1taW9hZGRyW2ldLA0KPiAtCQkJCSAgICAgICBkbWNfbW1pb2RhdGEoZGlzcGxheSwg
ZG1jLCBkbWNfaWQsIGkpKTsNCj4gLQkJfQ0KPiAtCX0NCj4gKwlmb3JfZWFjaF9kbWNfaWQoZG1j
X2lkKQ0KPiArCQlpbnRlbF9kbWNfbG9hZF9tbWlvKGRpc3BsYXksIGRtY19pZCk7DQo+IA0KPiAg
CXBvd2VyX2RvbWFpbnMtPmRjX3N0YXRlID0gMDsNCj4gDQo+IC0tDQo+IDIuNDkuMA0KDQo=
