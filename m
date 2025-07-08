Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C366AFC21B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 07:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE9210E09F;
	Tue,  8 Jul 2025 05:39:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGapJWbD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F2610E09F;
 Tue,  8 Jul 2025 05:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751953166; x=1783489166;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RebFdPLl1XOgEADpuMwY+XmM3sdxWZfH7NXXpEohIvw=;
 b=jGapJWbDl60oMFQCyYbME9i17oqCVakma1eK4IQiBEQvl+PLkTLex9Gi
 OUDM1WNVPx5txTEw1OGowuKbq5lltnuEHYnT5hlI4PNKXMzpSbkq3V5io
 mpdoPQ9RopDuQaPaOgimWCuQv9cwBJyXijfeIr7QudjTEbF9mEgySlyv2
 SyK4e9NfY5Gr41OpjwRMe+kp3nNkCfVTgxh2RdWISECSNBvIOo/u/yZ/2
 hsU1RGlxkE0C9mqDAmwE1HKkkJoQZ/ab53fPHq1x/ElSaisMAxqN23tCH
 8V6Pw88fsvRRhfnxLqHT5t7YQcjx76khMMuZLYH3B3CiCO+1pzsDq3rBf g==;
X-CSE-ConnectionGUID: FvncJ/ryRouZh+UrwyTPVA==
X-CSE-MsgGUID: rgHGuGF+QE6k2OOSxcuqkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="76730380"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="76730380"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 22:39:26 -0700
X-CSE-ConnectionGUID: IUcrTtwuRIeL4MIsmRdw8g==
X-CSE-MsgGUID: uJXJx+gdTdebVWHEtcoLRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="192583244"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 22:39:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 22:39:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 22:39:24 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.88)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 22:39:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=me0W/L2pAMqn09F8DmLsfhUxlII4EPGP8HmCXs6kzjMi5fYzKd9J+FUZbDfb6GIz2vBbShP3+Jwz3RouHUhCuQL33+rlWXPDEpWvoWRVmP7EBU5X9XuTyh0iWUro/UGMwhauyi1+QXpIx0hXe90cV/AMoe7pHs4IOGdrsYWrxGzil2pJ4Ef0+NHf/ikO+BxNpj4SIQsnx887+uMztNEEH9H9GWqaenQYcqIBrL+ppdYKPoAQ+GWTaxVMzneM23PZGBDqe7ezIQPQxj/RmBjDKIGUUMWiQ6vNtShpA3fOKFfO7jB44YJdA3AZLRPaKl3KdAblHAb8B0pkLH4IJfC7Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RebFdPLl1XOgEADpuMwY+XmM3sdxWZfH7NXXpEohIvw=;
 b=IQVJKjNa7Lm6AbnDVKVd1v815/6yX7EbeJg+2JFN8WwsL9QaF9MgZHPwKJENjeR2rcFncexFpnXiF9lkR+AkIPjnfOIwTOuPDUdsIXr+VPLfDoo91HhkhjRQ0TMdb7FmboDTmmrXzkHRCAGRsYkZ6fK6cqrCcS7Jzv3/yCzzOWxLFIH7ae1TDnzDIeIlJM1BStihIWURSDvnIv3hRXUS7jlPRjx+Vz2mkr5dWWB4KVtnvXc9KnFapZd/7jBn/2uwEsmdkMNTHFrh5W2cHpnAdT9S/dfeBxAX+HfV3KNqmD/N2e0nWlkOIVZ9XiR1Gh9+4JgSH1rn3xbNwvJlGm2hcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB5774.namprd11.prod.outlook.com (2603:10b6:303:182::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.24; Tue, 8 Jul
 2025 05:39:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Tue, 8 Jul 2025
 05:39:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Thread-Topic: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Thread-Index: AQHb7yyaDHbflHFMOE+wDRhHoEWYAbQmwauAgAD1OoA=
Date: Tue, 8 Jul 2025 05:39:08 +0000
Message-ID: <d97d56076845e8c728f19c1f0db429e97ac26656.camel@intel.com>
References: <20250707104733.1874797-1-jouni.hogander@intel.com>
 <20250707104733.1874797-3-jouni.hogander@intel.com>
 <aGvhRapKppSGxbCa@intel.com>
In-Reply-To: <aGvhRapKppSGxbCa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB5774:EE_
x-ms-office365-filtering-correlation-id: 75329b9a-2481-4ce2-f29d-08ddbde1c280
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TlkyQTFhTkdGVTBiWHBNWVhTekU2dG9yVXFNRG4zUEUram93R3AvRFN4OVc1?=
 =?utf-8?B?OUFLejdFY1creVNOK29PM2U5aUJXUWJjaWliSWZaYTVLalVKVlpNcWpuYnk3?=
 =?utf-8?B?MzhUZkc1VXlTNTU4OVRXNHkrRjdZWm01Z2hST0I4Y3F5Y21samc1TTIxUDk3?=
 =?utf-8?B?Wm51V3RGOTBPRUpyWXJ3NW9VMnB2bjFkYkpMNE0xOXpMUTBMMlhJeDJPZFpK?=
 =?utf-8?B?bDhGb3dwem9SNm9CWnZlcFQrb1FGS1VnR1pKNm11a1F0RTRwcWVqOTVaRkVS?=
 =?utf-8?B?bzZwWFZEOUoxU3hodmFqdEVsNllXb21PNkNmZ2U5bEdlS0lhaHlBdlA0Zi9I?=
 =?utf-8?B?cGZPM2EveXMydUhPOXFPckFqRlY5RTlaUnhhWGVVUVNBQUpvd2trcTFCZWc4?=
 =?utf-8?B?SkZYRG5ZMnFzSW5FRWhIYms3Z3NKajdHTys5anF5dlFOT3R2OG8yWDdiQnN2?=
 =?utf-8?B?OFJIMDlzRXFjUDJsS0wzNjRRUWRHcTM5TjMvem1GZUdBMklVak81bzNTRHFt?=
 =?utf-8?B?dGpnbHhBeUF5ZCtabFBPbkNjVTdEL015R3NvZFV4cVZWNHdzdlU5a1ZmNnlK?=
 =?utf-8?B?djVkUWVJK0U1UWFjaEF2dURzbHN3Wm9nbWNFMlRiL3NSMHZ2bkpyclJCTjBF?=
 =?utf-8?B?QmVFWTE4NlpaRlVvUk5LM0VWdWFHUGx2VXo2b2FkWW1VN3p0SVZVeVlOQ3dv?=
 =?utf-8?B?ZW93bHplQWUwTHBCVEMyMyt1MUFMSXNKaW9ZT1JUUTZuK1M2dm10YXdRY3BM?=
 =?utf-8?B?eExXY2EyOWtRQ01wbDc3LzVvdlhsR00zYzYzdnAwUUdjcFhsUE9jRVl2Y3BL?=
 =?utf-8?B?OW1uUlcxMURRdUFuZEZ2R2JsRks4SjBuYUJqeFEwbzVJejNMSVc0OXBTY0th?=
 =?utf-8?B?b2xZQUYvTWlUZWdOWDRQTVJTeVpMUTJnQzBzbkNJWnVENXNORHIzenBCOGh0?=
 =?utf-8?B?RWRJQU9tSlNRZkEzUTBXa2FLRWQybFNsKzJMZGtndkIxZG80UkM4cHR3QVkz?=
 =?utf-8?B?S2V5cjBlN1ZITDkxYXYwYW9rSnNaMG9FMEpPVTF2bklyNndHVVk5NXpGOTFM?=
 =?utf-8?B?SjBsT3NYWG9CcndLUWxFdjY0RFpwbGFidnhMcDVqMHBEM3owaHZyRG52Yzl6?=
 =?utf-8?B?ckl5RldzVk5CMXArck1FejAwKzJYRW1YSkkrdEs4YVhFeGZDbENCb2h0SU5t?=
 =?utf-8?B?MTZiWWRXQjU0N2FkM2F0N01hSGphalNtanNzT0tSV1dPU2Vlc2V5dTNlYkpO?=
 =?utf-8?B?cm9CQm12bG5KQ0ZrbHphOWpmVEhCeUxyRlNPUGRaejZvaDdiL24zby9IcVpk?=
 =?utf-8?B?SXRIcnFhUStMaUZML1pQN2wxTjJRTlJ1d0VrbUtrREJ6WXdtWEZISnd4U3l1?=
 =?utf-8?B?UjFnTysrNktHZVdybithVVUxbjd1TG9TUzBmcGI0UG55MnZ3cHdhYWxpYkRS?=
 =?utf-8?B?QjAwOUYxMHN1c0t0NkVwRG5BNE9DdFJGcmhQMzNoYUREdE1xMTdKeE5hbSsv?=
 =?utf-8?B?aFpVSTlheG5PQVlDWHZuY2NJc0gydG9STk9sanpMRURUQ050c1BHQnVJeXpG?=
 =?utf-8?B?c0JvUXlaQTZ4eFRQdlEvQmorVWl2MFJMM3VqNkJKdTM0TFk0ODIyU2hndXJx?=
 =?utf-8?B?a0hOLzVZYmJCU3NkWjQ0M1VBOWVPQ2tHWXNZeFhWdWlMTmExZm1DRE05UExm?=
 =?utf-8?B?ZC9NWEZ6SlNubkZBeGxkdys3aVVUM1VUUVVtUzZiSHVhS213SEs5ajUzV2xH?=
 =?utf-8?B?czI2dWtLT21CWk1tTEVWZ2QyOWFESU5ZQjh6dnJGWVdrYzJtMmI0cW9BL1Vs?=
 =?utf-8?B?QUhpN3hPdERxSFExYUtJQVZLWUplK2JnblkyTWhVUkhreWdiYllpOGlBQ3Ux?=
 =?utf-8?B?TnJra0VhRlFnNzdPQVd4TVdXOFNEaWdJN2hhZm5FUTg1eHlqcXhoNHY3eGJS?=
 =?utf-8?B?ZTdTNU1VUmxZVDREamZBSDhXaUFUNkVJUmE3N3ZjNHF1Z0E1eUQ3dXl0TWdo?=
 =?utf-8?B?QjlCZWRHTWdRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWZlRFNxZElkQ1hzVmZiYS9XQ3I5Rk9zYjI5cDdIN2toYnJSZjRHNXk3QS9D?=
 =?utf-8?B?bTNMY2duRXltdHQzV2ZjTlRTZjN5bkpNN0pjaXNIWUk5MnBudTRMUE9jM2da?=
 =?utf-8?B?TGZSUllSeFAxVmdUMllXNisxTE1WRUo5Rm5FUVEyTW5STElFZjFDMzkxQ2Zz?=
 =?utf-8?B?TlYwdVdSV1d5eEZaOXJhb2x6bmIwU1lSL0FqdmJOVU1FVm1vKzI4UU42ZWpx?=
 =?utf-8?B?ZEMxQXpHSkY0WkdxL1pJdFBYVUJ2UlJHK2dZczBtaTVuUGlZcDFSL25nQXRa?=
 =?utf-8?B?eW9ZTHdWekY1Uldza0hUc2NGUUJXMzBqeGQvbVBydmRSWDFGQ2VRbUJmcFZx?=
 =?utf-8?B?Tm1XRGduY1FrT3JLQzlqSDAxREZkZzA5ekRYU1I1NW5MYnR5SmFDZ210T3Rs?=
 =?utf-8?B?OHRyMEJPZ0pPOWtrWGkvaldoUWF4YUw4UlpjQ0hYWkJZR1JLeFpCWVo3cElG?=
 =?utf-8?B?MHhVMkwxUDByRDRsby9pdU9sZWFVQzU3N1E3NER1OXkyYlJiVjRyU1U4em4y?=
 =?utf-8?B?M2p6eVZDb2F1MkM0eEFWeWhLQ0pEYVhDMUVKV2l6UWk1NWh1RzJVeFBkRHh3?=
 =?utf-8?B?ejg2aEVTM0RWdU42WEZaUmthSE9RNENxVmVaNjdONkZsTDd1SWd5RkFoZ3pB?=
 =?utf-8?B?eDZjR2VNQVlsUFdOZEpLejg2YUFrZk1SUDQ2eURDTFJtMEx2and6NHNSemhW?=
 =?utf-8?B?M0Q2NHdQKzlvdm9ON2x2YlQzZ1hrOXhrWmxaL2UxV3VPWUVhOXQ1aHFyRS81?=
 =?utf-8?B?QXZwQWVJenZtVmd4MVJZeEVNdkViTlF0ZnhIWTRxYmtMVU9OMEFWY050cHdp?=
 =?utf-8?B?anJSYnFBOGhCMnMwbkhsSW0vSXB3NngxakNMeTNBS01MRXpWakdrTDdQaUw0?=
 =?utf-8?B?d3hFQUtzeUNHNkJWWDZyaHBmYkgvcURvVFI0SFJnaHdubGFOemk2QStEaEp4?=
 =?utf-8?B?SWIwQ3hwYjcvR01XS2QxMEVpWmtodHB6cVN0bG1QVVdhNk9uNzNVSEpCSHQ0?=
 =?utf-8?B?M2h5V3FNWUhEM1BNRUtlWFJQeks1RDZMODhVQmF5UGs3Z0ZSQWFlU0lTSWkv?=
 =?utf-8?B?N3R6QXZTL054SnYyKzM1YVlnelEraWFBSEtSRWxYRVBOblZ4VGlBSzJWVVpq?=
 =?utf-8?B?b2xtTDRoenYvNDkzMlBoTmNYamNBQ0pqWGVRY2xhM3M1YVRvNWFrSDAranYr?=
 =?utf-8?B?M3N0OUtVbUhOZmdBdy9xTFhwZEkzU2R0VVkvR0l6RlBReFNGbC9JS21CaWNJ?=
 =?utf-8?B?eVg0b1VsaXJYM2RSSHR6c2RqOC9Vdkhaa2lsRG0yQ3F3dFlUeXNHdXhvQmlP?=
 =?utf-8?B?eG8xeERoY3RrcWpRbGk0RkQ2TGRCM1ZXS0VDTlBTNGNoY0wyWWhVcTcvQWNJ?=
 =?utf-8?B?SHZYaloyT2lDbFp2ZW5aVXR4WnpnWHJ0MTFqc21DbkJZUnpxbVFFVU1kcFFw?=
 =?utf-8?B?TXkzV2Q2V2NoWFBFZHdzcG8rQ2xGR2FRRzNXNFpBZjF6UUg3Zzl3TGVGR2R3?=
 =?utf-8?B?alRBb2tJSVA0Z3JuT0RSbFZJWkRTQlAyektzU1I0a00rdUd0VnM1Sms0NEcx?=
 =?utf-8?B?YkJ0WTR6NFdHTi9mVkZ6RWNrMHFUdWxhUE9senNMc0QzRHBYT1k5RE0rVnNM?=
 =?utf-8?B?Z21iaGswaXpCUDFtK0hTUytUU09vKytBRXBUR0F4K3c2YXpnQm5CQU8wSXBP?=
 =?utf-8?B?TTRPUHhBbkFCblN5V0RWRDZyamx2cm1wVE5EVjd4OERQdElBSGRJalBxbWZO?=
 =?utf-8?B?Vnh2YlFtSXhxcGhtNW9GaEpLVmg0RzhrVi9zNjl4ODVWQllTZ0JsTGlHb3BC?=
 =?utf-8?B?c2NnY1l2eExoNmZWTWpvc0Z6S3hiQUFmUzVXd0dJVmJHUFI2Z1NoQ2FaVzhM?=
 =?utf-8?B?eU9RTDY3UW82M21OMlIwVUtqTXg4NFhvRENyNVVmSjZsckZjSTJDaFVWcEl5?=
 =?utf-8?B?Mk9lZjBremF1ajRPZUN6RnR3dUt0ZXNlbVd0bXhxSm9kekNmNlZETTE3ZDU0?=
 =?utf-8?B?Y290QUFsSHpGSlN6UjYwenZuRWhQMVYxNmxjeE14Tm1vMFVndzFiZEJQOE5R?=
 =?utf-8?B?WGhFclU3UTZoQkgrQ2ZFaTdranUzZGNNWmY5YVdxNGRWTWxVS3JTV05qUjZ0?=
 =?utf-8?B?anVmQnZCTUlZd2hwTWhaR25EYWR0NklaYVhPcEY1RkVvbFhuTTV6U3RsLzQ1?=
 =?utf-8?B?ckpOTCtCLzNTRENyek1LY2lQSElmTFFtRFlYLzVVZFlDNmdsZmhzOFVpZGtu?=
 =?utf-8?B?YXJneE9EaS9FOGNDQXl6ZW5TY253PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <00D21033C3291342B9D91EB5D9DAA66A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75329b9a-2481-4ce2-f29d-08ddbde1c280
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 05:39:08.4853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3UdaAacnUa5xiBBpS0Iz2P0ltjNLlD0c8AwLhAwN6eMZOhrJjELOd7uUYLlwQ2KIhcsLUNvvCwoG6scYv9j7NJdByMIPG5sPv0EVL14W+hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5774
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

T24gTW9uLCAyMDI1LTA3LTA3IGF0IDExOjAxIC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIE1vbiwgSnVsIDA3LCAyMDI1IGF0IDAxOjQ3OjMzUE0gKzAzMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToNCj4gPiBDdXJyZW50bHkgZGlzYWJsaW5nIFBTUjIgdmlhIGVuYWJsZV9wc3IgbW9k
dWxlIHBhcmFtZXRlciBjYXVzZXMNCj4gPiBQYW5lbA0KPiA+IFJlcGxheSBiZWluZyBkaXNhYmxl
ZCBhcyB3ZWxsLiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhpcyBieSBzdGlsbA0KPiA+IGFsbG93aW5n
DQo+ID4gUGFuZWwgUmVwbGF5IGV2ZW4gaWYgUFNSMiBpcyBkaXNhYmxlZC4NCj4gPiANCj4gPiBB
ZnRlciB0aGlzIHBhdGNoIGVuYWJsZV9wc3IgbW9kdWxlIHBhcmFtZXRlciB2YWx1ZXMgYXJlOg0K
PiA+IA0KPiA+IC0xID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwgUmVwbGF5IDogeWVz
DQo+ID4gwqAwID0gUFNSMSA6IG5vLMKgIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiBubw0K
PiA+IMKgMSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiB5ZXMNCj4g
PiDCoDIgPSBQU1IxIDogeWVzLCBQU1IyID0geWVzLCBQYW5lbCBSZXBsYXkgOiBubw0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
YXJhbXMuY8KgwqAgfMKgIDMgKy0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDIwICsrKysrKysrKysrKystLQ0KPiA+IC0tLS0NCj4g
PiDCoDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3BhcmFtcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiBpbmRleCA3NTMxNjI0N2VlOGEuLjFiYTE3ZWE0MGJiYSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcGFyYW1zLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiBAQCAtMTE2LDggKzExNiw3IEBAIGludGVsX2Rpc3BsYXlf
cGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9mYmMsDQo+ID4gaW50LCAwNDAwLA0KPiA+IMKgCSIo
ZGVmYXVsdDogLTEgKHVzZSBwZXItY2hpcCBkZWZhdWx0KSkiKTsNCj4gPiDCoA0KPiA+IMKgaW50
ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3BzciwgaW50LCAwNDAwLA0KPiA+
IC0JIkVuYWJsZSBQU1IgIg0KPiA+IC0JIigwPWRpc2FibGVkLCAxPWVuYWJsZSB1cCB0byBQU1Ix
LCAyPWVuYWJsZSB1cCB0byBQU1IyKSAiDQo+ID4gKwkiRW5hYmxlIFBTUiAoMD1kaXNhYmxlZCwg
MT1kaXNhYmxlIFBTUjIsIDI9ZGlzYWJsZSBQYW5lbA0KPiA+IFJlcGxheSkiDQo+IA0KPiBXaGF0
IGFib3V0IGEgYml0IG1hc2s/DQo+IA0KPiBQU1IxID0gQklUMA0KPiBQU1IyID0gQklUMSAoUFNS
MiBpbmZlcnMgUFNSMSBlbmFibGVkKQ0KPiBQQU5FTF9SRVBMQVkgPSBCSVQyIChhbHNvIGluZmVy
cyBQU1IxKGFuZCAyPykgZW5hYmxlZCkNCj4gDQo+IChQZXJhcHMgZXZlbiBiaXQzIGZvciBlYXJs
eSB0cmFuc3BvcnQ/KQ0KPiANCj4gVGhpcyBpcyBiYWNrd2FyZHMgY29tcGF0aWJsZSBiZWNhdXNl
DQo+IA0KPiAwID0gZGlzYWJsZWQsDQo+IDEgPSB1cCB0byBwc3IxLA0KPiAyID0gdXAgdG8gcHNy
MiwgKG5vIHBhbmVsIHJlcGxheSkNCj4gMyA9IHVwIHRvIHBzcjIsIChzYW1lIGFzIDIpDQo+IDQg
PSBwYW5lbCByZXBsYXkgb24NCj4gNSA9IHNhbWUgYXMgNQ0KDQpPcmlnaW5hbCBwcm9ibGVtIGJl
aGluZCBteSBwYXRjaCBpcyBlbmFibGVfcHNyPTEgaGF2aW5nIGltcGFjdCBvbiBQYW5lbA0KUmVw
bGF5LiBGaXJzdCBJIHRob3VnaHQgSSBGaXggdGhpcyBieSBqdXN0IGlnbm9yaW5nIGVuYWJsZV9w
c3Igb24gUGFuZWwNClJlcGxheS4gVGhhdCB3b3VsZCBtZWFuIGFkZGluZyBlbmFibGVfcGFuZWxf
cmVwbGF5IHBhcmFtZXRlciBhcyB3ZWxsLiBJDQpkaWRuJ3Qgd2FudCB0byBkbyB0aGF0LiBXZSBo
YXZlIHVzZXIgd2FudGluZyB0byBoYXZlIFBTUjIgc3BlY2lmaWNhbGx5DQpkaXNhYmxlZCBidXQg
c3RpbGwgdXNlIFBhbmVsIFJlcGxheS4NCi0+DQpJIHdhbnRlZCB0byBoYXZlIGVuYWJsZV9wc3Ig
bGVnYWN5IHZhbHVlcyB3b3JraW5nIGFzIGJlZm9yZSB3aXRob3V0DQpoYXZpbmcgaW1wYWN0IG9u
IFBhbmVsIFJlcGxheS4gVG8gaGF2ZSB0aGlzIEkgY2hvb3NlIHRoaXMgbWVhbmluZyB0bw0KdmFs
dWVzIChiaXRzKToNCg0KMCA9IGRpc2FibGUgUFNSL1BhbmVsIFJlcGxheSBjb21wbGV0ZWx5DQox
IChCSVQwKSA9IGRpc2FibGUgUFNSMiAoYWxsb3cgUFNSMS9QYW5lbCBSZXBsYXkpICh1cCB0byBw
c3IxKQ0KMiAoQklUMSkgPSBkaXNhYmxlIFBhbmVsIFJlcGxheSAoYWxsb3cgUFNSMS9QU1IyKSAo
dXAgdG8gcHNyMiwgKG5vDQpwYW5lbCByZXBsYXkpKQ0KDQpJIGxlZnQgRWFybHkgVHJhbnNwb3J0
IG91dCBoZXJlIGFzIGRpc2FibGluZyBpdCBtZWFucyBkaXNhYmxpbmcgUGFuZWwNClJlcGxheSBh
cyB3ZWxsLiBJIGFsc28gZGlkbid0IHdhbnQgdG8gbWFrZSB0aGlzIHBhcmFtZXRlciB0b28NCmV4
dGVuc2l2ZS9jb21wbGV4IGFzIHdlIGhhdmUgc2VwYXJhdGUgZGVidWcgaW50ZXJmYWNlIHRvIGJp
c2VjdCBQU1INCmZlYXR1cmVzICgvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvKi9pOTE1X2VkcF9wc3Jf
ZGVidWcpLiBVc2luZyB0aGlzDQpkaXNhYmxlIGJpdCBhcHByb2FjaCBpcyBhbHNvIGVhc3kgdG8g
ZXh0ZW50IGluIGZ1dHVyZSBhcyBuZWVkZWQuDQoNCllvdXIgaWRlYSBpcyBmb2xsb3dpbmcgYmV0
dGVyIG1lYW5pbmcgb2YgImVuYWJsZV9wc3IiLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+ID4gwqAJIkRlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4gPiDC
oA0KPiA+IMKgaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZChwc3Jfc2FmZXN0X3BhcmFtcywgYm9v
bCwgMDQwMCwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGluZGV4IGEyYjU2ODhmMGM4Mi4uMzIxNWExMWJhYTY2IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTI1NCwxMyArMjU0
LDE1IEBAIHN0YXRpYyBib29sIHBzcjJfZ2xvYmFsX2VuYWJsZWQoc3RydWN0DQo+ID4gaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDCoA0KPiA+ICsJcmV0
dXJuIGRpc3BsYXktPnBhcmFtcy5lbmFibGVfcHNyICE9IDE7DQo+ID4gK30NCj4gPiArDQo+ID4g
K3N0YXRpYyBib29sIHNlbF91cGRhdGVfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gPiArew0KPiA+IMKgCXN3aXRjaCAoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmIEk5
MTVfUFNSX0RFQlVHX01PREVfTUFTSykgew0KPiA+IC0JY2FzZSBJOTE1X1BTUl9ERUJVR19ESVNB
QkxFOg0KPiA+IMKgCWNhc2UgSTkxNV9QU1JfREVCVUdfRk9SQ0VfUFNSMToNCj4gPiDCoAkJcmV0
dXJuIGZhbHNlOw0KPiA+IMKgCWRlZmF1bHQ6DQo+ID4gLQkJaWYgKGRpc3BsYXktPnBhcmFtcy5l
bmFibGVfcHNyID09IDEpDQo+ID4gLQkJCXJldHVybiBmYWxzZTsNCj4gPiDCoAkJcmV0dXJuIHRy
dWU7DQo+ID4gwqAJfQ0KPiA+IMKgfQ0KPiA+IEBAIC0yNjksNyArMjcxLDcgQEAgc3RhdGljIGJv
b2wgcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVkKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRl
bF9kcCkNCj4gPiDCoHsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+
ID4gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gwqANCj4gPiAtCWlmICgoZGlzcGxh
eS0+cGFyYW1zLmVuYWJsZV9wc3IgIT0gLTEpIHx8DQo+ID4gKwlpZiAoZGlzcGxheS0+cGFyYW1z
LmVuYWJsZV9wc3IgPT0gMiB8fA0KPiA+IMKgCcKgwqDCoCAoaW50ZWxfZHAtPnBzci5kZWJ1ZyAm
DQo+ID4gSTkxNV9QU1JfREVCVUdfUEFORUxfUkVQTEFZX0RJU0FCTEUpKQ0KPiA+IMKgCQlyZXR1
cm4gZmFsc2U7DQo+ID4gwqAJcmV0dXJuIHRydWU7DQo+ID4gQEAgLTE0MTUsNiArMTQxNywxMiBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ID4gwqAJaWYgKCFpbnRlbF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0
KQ0KPiA+IMKgCQlyZXR1cm4gZmFsc2U7DQo+ID4gwqANCj4gPiArCWlmICghcHNyMl9nbG9iYWxf
ZW5hYmxlZChpbnRlbF9kcCkpIHsNCj4gPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+
ID4gKwkJCcKgwqDCoCAiUFNSMiBkaXNhYmxlZCBieSBmbGFnXG4iKTsNCj4gPiArCQlyZXR1cm4g
ZmFsc2U7DQo+ID4gKwl9DQo+ID4gKw0KPiA+IMKgCS8qIEpTTCBhbmQgRUhMIG9ubHkgc3VwcG9y
dHMgZURQIDEuMyAqLw0KPiA+IMKgCWlmIChkaXNwbGF5LT5wbGF0Zm9ybS5qYXNwZXJsYWtlIHx8
IGRpc3BsYXktDQo+ID4gPnBsYXRmb3JtLmVsa2hhcnRsYWtlKSB7DQo+ID4gwqAJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwgIlBTUjIgbm90IHN1cHBvcnRlZCBieQ0KPiA+IHBoeVxuIik7DQo+
ID4gQEAgLTE1MTcsNyArMTUyNSw3IEBAIHN0YXRpYyBib29sDQo+ID4gaW50ZWxfc2VsX3VwZGF0
ZV9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoAkJZ290byB1
bnN1cHBvcnRlZDsNCj4gPiDCoAl9DQo+ID4gwqANCj4gPiAtCWlmICghcHNyMl9nbG9iYWxfZW5h
YmxlZChpbnRlbF9kcCkpIHsNCj4gPiArCWlmICghc2VsX3VwZGF0ZV9nbG9iYWxfZW5hYmxlZChp
bnRlbF9kcCkpIHsNCj4gPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+IMKgCQkJ
wqDCoMKgICJTZWxlY3RpdmUgdXBkYXRlIGRpc2FibGVkIGJ5DQo+ID4gZmxhZ1xuIik7DQo+ID4g
wqAJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+ID4gQEAgLTE2NjQsNyArMTY3Miw3IEBAIHZvaWQgaW50
ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4g
PiDCoAl1OCBhY3RpdmVfcGlwZXMgPSAwOw0KPiA+IMKgDQo+ID4gwqAJaWYgKCFwc3JfZ2xvYmFs
X2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ID4gLQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAi
UFNSIGRpc2FibGVkIGJ5DQo+ID4gZmxhZ1xuIik7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLCAiUFNSL1BhbmVsIFJlcGxheQ0KPiA+IGRpc2FibGVkIGJ5IGZsYWdcbiIpOw0KPiA+
IMKgCQlyZXR1cm47DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi40My4wDQo+ID4g
DQoNCg==
