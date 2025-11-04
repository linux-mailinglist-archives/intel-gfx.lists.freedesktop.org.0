Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5479DC32001
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17BB610E63C;
	Tue,  4 Nov 2025 16:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCFLteZa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D0C710E27D;
 Tue,  4 Nov 2025 16:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762272974; x=1793808974;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Cs5RbYwOcLUzcW0G8s9mfIb4sjXGEoVWAG1+PIGZ5CM=;
 b=eCFLteZab6EFPeRqGhssRBGfPqRc/38GBxNI6TE4Jlah2S+eF9QanlTs
 2ycjox5BXJ8BETSN5l+2zJQpIUtPXN9csSl05S7fzIQotvre6Lm08VOou
 WaOAvDHySdXRWcuIUr/TQte7nbNkMKwyOCOayTFHBiKGK7kkQSDcPoX1F
 xP3gehlGqRT5mQowtlP3Q6MeLs2RZw2IgUd+T4bm0ArpvRkWNV0/i9KbN
 I5sK7AiLcm+dNUK/eixhI6p1xJ7YXbyjsab3dDDSEauIsZktwAKGtEO98
 i257iF8c3suyS0c3IAIfFAx68Z87NP/OZtkxS6EdF8fSTF64hSR9lHVOz w==;
X-CSE-ConnectionGUID: ahhkMwhVSES14ITLXLjeaA==
X-CSE-MsgGUID: Br+Q1lF8QcSFTS+RVgNTGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="66988176"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="66988176"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:16:14 -0800
X-CSE-ConnectionGUID: m9+NqPnfS6+13GLPKAIcXg==
X-CSE-MsgGUID: p3ZcKRjSRDqZ5NFOA6+nBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="217850517"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:16:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:16:13 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 08:16:13 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:16:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dsAQh2/sBdmk32IbqDtkVi8EuxG5cbGq7So7JTw/mVtn1iQVuJSakuUn/c8T/731HyMMDLYbQpCqSuvpdf6PXCTuXZQYp1+B0voOQ+5uxQ787e/yyR+gHx93quuI1p8aNFzutW7ZXyhUIjJxD3JW15RLpIwQtY7Eyxn3Qf/Sl3wH+rWQoquZ3kDdUteuCln/0sZ42AyZLdmkcNNgjNuEoaPqmVCsXxewGxovSbsTZ5b9Aw58L2klssp+Gjk0JLbAzyGUZzwum1hcv3Rujq4vqrR0NfERnGP3ptGvY2+kEKaJUYBWml+NBFs/95m4h4V5XFX7OUOaIj2VL5vKaXbaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TflID+G6LAGd3MFM3/S5xpFZAznBc/l5Lkm25K/wEjg=;
 b=ceGod8CAIFq4zy5PkOq036/7ridtyPflbL0Ozw6+vsYK7bPyYID8oFFgM8h2P4o46tHsoGgUA/bqRLRKKwGeqZb9w8okMcoxJ6XLgb/Ft9YmDrVbLhv/buCDxnEzB5vTkRlIitv6Vm4rhyNFuBDiA0g/K363Ko504psT3vJHq95fI4CPVSBWHn696S4Tzb4qgCqFM5TQp1kf85+ImT2YkBCnniJtWBpZrIncCfNHQC+G0aSGZoEPbhxhMY1NwQaVWaT5/R2H1ADacomirUWImFbbPFwZVqZ64ZlRLmsGB/C+VsWMIF3xiDjf4scZB2nhcRNJjzeCmGUV1hyWTSszBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7406.namprd11.prod.outlook.com (2603:10b6:8:136::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 16:16:06 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 16:16:06 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
 <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Date: Tue, 4 Nov 2025 13:16:01 -0300
Message-ID: <176227296151.3586.4499016022396976833@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0067.namprd03.prod.outlook.com
 (2603:10b6:a03:331::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7406:EE_
X-MS-Office365-Filtering-Correlation-Id: a1ddfc1e-bbe6-4c66-35ec-08de1bbd754d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WWVFeWkzdXphU09WQ2JoSXNlQ2FTYmlkcmxKcllMaG5sUllPR25VUHVhQk01?=
 =?utf-8?B?SFhtcDdTOXVPMkd0QnBpQVgzbFQrbGtnQTZkNHdJeVMra1JsL0hNZlVFdldL?=
 =?utf-8?B?SkhkTE4wMW4vYVc0bXFMVEJicG1NejRzeUhVdzMvWkZTZ0Z1STdaMGQ3aEtQ?=
 =?utf-8?B?ZlltM0wxdVN2TURJN3N1WTVxTUI2T1Ezc2hvTkFjMk1ocVFMakJGSlhrSytT?=
 =?utf-8?B?bU1wMndLUEVPYkF5ZU0xbTN0TTFuZEduKzlod2IzVFAvbEx2NW95UjdTdHJ2?=
 =?utf-8?B?bnU4YTQ0em1EekhsY1VWRzV2S2t1dlVwVjZ2dWxrc0xqN05lbkQxMm5hdWgw?=
 =?utf-8?B?emhsTVllOUhIVmptNVFlVlhjTEt5M0QyRnQ1NTJJcllHbC9QMU9mWHM4a3lF?=
 =?utf-8?B?VUxCWERLbkM0VDk0a2NDTmNQbGR5ejliQlNGTVFzb21MZlNZQ2EyQmdDNGNn?=
 =?utf-8?B?eWVMa0NkVVBHMnNmZjJack5QVGpoVXNQK2JlMTJDcUVSWUM5NXl3UWlFMnhn?=
 =?utf-8?B?QURKaHd1TkVOOFg2YTk0dThvOG43ZmpqRGJUYjhDc052MXdsN3ZialFJZjZL?=
 =?utf-8?B?eDExVzBUbUxVZFc2bVRHMW0yTHpFc2hLUmc5ZlhrbDJ5UHFBZERaWjhRUGVk?=
 =?utf-8?B?YmRqeTVkamUzelljZ1RRWGk3WkpQQXRKdzcxMkV0S3NWK3hvR0taR3JmbnpZ?=
 =?utf-8?B?WXZXVlVNMXdwbGM5c2VkdUJieGZYRFZueERtV0huL1ZoeUIvVThIZjB6SFNJ?=
 =?utf-8?B?bUFVRzhRbktaUzI2MXBMbXlDMktRQlJWdnVHZllYaWJBY1FwTkZuSkI1TGsx?=
 =?utf-8?B?WlEwdDlxSkFFeVdSbE1vMW1ZSHRpSWM4bm1sNEJ1QU5iWVJnaUNnYmRrcFox?=
 =?utf-8?B?aGMvM29JekVxL0Z3NGVOR21Qa28rM0xRZDJwaU5sVmxaWXpKcUQwaWgxY2lF?=
 =?utf-8?B?bHdRQ3JNVVZkMXEwYWlnRjhaNi9LdkJ3ellPL05IaHBhd25xYTRMblVRbkEr?=
 =?utf-8?B?NnVWNEZQOHN0cFpUd01FSGNCdmdDdDcxZExWOEJzN3UzM1Z4MFZPS091bnFS?=
 =?utf-8?B?bmRxb2RtK2N3Nmk2SURkRFhIcHNDSDRuK3FXNE1ncUNXRlJTMit5MDJHcm5M?=
 =?utf-8?B?Wm0reGoxU2ZTbHQ5eDJVVWhjY2hIMnlhWHF6dW1IcFVMN3QwWE1hMWVGc28y?=
 =?utf-8?B?Wlh0OFpGNlRjL0RlaldqR0VXMHdsTjlXcnZBQjZCU1p3YlczYmowemFWNWxx?=
 =?utf-8?B?SGZFd1dmOTlya21EWFl6dUJkNElveTA5OVY3aXhUOUpRZDdOcVFYanErUmJ2?=
 =?utf-8?B?aUh2YXZqSUJ4NlJYc3I0R1VoOEU0SldZOTJCSnNSMHhLRWJVZGlwdXgxeUcr?=
 =?utf-8?B?QUxwaTNCZlVnMjFEVEhDdDBxeFBYVkpabjJRSjdRVDRpdk0rSU13RkF6clM4?=
 =?utf-8?B?TXdBc2dYWVphWGdJZXoxTzdxbktndys5TFJGVkcwREk3M2Z1VlZJcEUwbW1s?=
 =?utf-8?B?eXN3ZEZPM2dENDBLT0dQRjd3T2JKYndvUFdpdXd0UGIrOGt1bmpveDRqQ0VU?=
 =?utf-8?B?K2tSY3liUGJKTmhReS9ZMlVidFN0Yy9LZVlDUXBVaW1OWG8xSmxrWUZjY1gr?=
 =?utf-8?B?L1BZVndHa0JZbjY3aGROaE5NenBhbmtDbHFHY1REeG1MSlNJTGxOalFzaTVT?=
 =?utf-8?B?ZHZlOHdrK3E4SXRlazFNbFNTek5ROSt3bFh4V0oybXE3S25QL0I2OVUxODQ0?=
 =?utf-8?B?UXlkdlRNR1VVZmlnQ0R2VzJWY2NEL2xqUTFPSWk1aDZONklXL005ZXMycUlw?=
 =?utf-8?B?REdZRmJ3azlHNnpmN0ZidXhkbGx6TGM3M2lubjhHNithUHNYWnE1TnQvSjEr?=
 =?utf-8?B?OFVxa3BYSzd5bDdZZGRKQ2JrSzJVL2Njak5nQzRMblo1dmpqQ2JjZ0FtS3Zu?=
 =?utf-8?Q?idX4WksAHwFXE32EoivdTsNdhGEUTKiK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2ZuSFJpM2lIS0wzeFQwb3V4YVZ5akU2T1UxOEQzYzI4VHNJU1lPUDJEaWFi?=
 =?utf-8?B?YVl5ZVU4Q3ZCT2k2TkhTbkd1UHN0SEJBeHM3OGlaeEhtcHNYZUcxT0oxVmZ4?=
 =?utf-8?B?UkxVc1E5Q1BjUThwQ1ZWSmJZMUNuOXl6Q054aCtoOVg0d1M1U08yaXA5d1gx?=
 =?utf-8?B?K1N6azFuV2o1U0RvRjdXMmU4NTg2Q3R5ZkVHQXZTeVdpbDhCZW1BYlZYbUVS?=
 =?utf-8?B?Z0pFQU1EazVpSzdLUU5CUkoyTnRuZDBUSGFhYkRDWmh6NG1mWSs4Z3BBNnJO?=
 =?utf-8?B?WGtaS0s3QU5wVWJEMDVydWMyMElnbUFlQ05WVEVhY2JteG5EbWlsd2I0TDRF?=
 =?utf-8?B?akFTYWE0Nm9EMUhjV0t2bHMvK3dVcnpYdkd1M3g3czVxT0FkYmV4VWl4UzlH?=
 =?utf-8?B?cjEveHhvOFVlL2x0dnArdFpwZitYYkRJWDV6MUpmZ0NHTXFTcmRqR1F3REd6?=
 =?utf-8?B?cWEyZzRaby9zaklRM3lWUWxkNFpnbTdPblJIaXdObWJBOG1ZMi96U1REQnJE?=
 =?utf-8?B?NVJGQUlac1QzbEhNdytUajI0YW1qQzkrMm45UHpqNEcrUnd6TFJTSXJaR1Qr?=
 =?utf-8?B?aldoNFNxRlRWQ1hvbUszM25IQlh1SG1tTnlmbFpBZnYzS1FERTgzV3EyYWtt?=
 =?utf-8?B?NTFiZURlakdvSng1a0pzOTU1YTdZU3ZLcWF2Kzd1UURsV2t1WXllN1JIemZ6?=
 =?utf-8?B?SHhPdkNPdVVBVHlvbElGeVpsOFFoNFl6cW1vWnRweUhmT21yb1pCUTdTQmd5?=
 =?utf-8?B?R1hHMDZwMGh2dWJEQllDVUgzWW9lMkVYQjk3blQvSWZ2S0VTVlA0RFVlY05p?=
 =?utf-8?B?RStBSU1NR1YxQVd2VjFxSlp4aFdvS2ZEV1lrcmJuNkM3RzdOVVVoaExxTmdE?=
 =?utf-8?B?eFBhc25GVFJqU2pmTWt3bVZMZFVzRWRzYVlBSXFCSnVqeW9rYnJnUlRxMVJk?=
 =?utf-8?B?SUNlZXJOYThmcCs0VkVrY1BrdlhlOFZUMytIMkVvQWNLZHJNL0VSQnE5Mk1v?=
 =?utf-8?B?Z0pGbC9QRWI3NmNYKzJFUzhlMWQxRXFKQ2xuNUdCVjhiS0hCWlJic1NDOEZi?=
 =?utf-8?B?ZFNJL0Z6bVFUK085V0UzYmc5RlUzTEp3RkFNajY3QmprajFidjhSTmFlaENh?=
 =?utf-8?B?ZlJhcE5CMXZRQXhHNEJ5c2NxTmhsejROQXQvam9iM214VVlseDM2N2kzY2pl?=
 =?utf-8?B?aXoyeCtGYlFJRUVEQ01Oc0FkM3UzWUhmcHFwY1hESzl2VTh2elc3OGtnL3hS?=
 =?utf-8?B?dnZsYWczSk4wUGR0aXFQQ0VybW0vMmprcVhUZXZKSWI4VHZCR2w1RXkzOE00?=
 =?utf-8?B?dzd0YTgyWjgvZzNwVzljZ0RFMGo1Q3QxOWw0WFF2MmRTU25pSm1GV1ZobnlB?=
 =?utf-8?B?MzEyQUY4a0VrZVUzOFluZ1E4aWs3SUVha1RZNElwV1QyMFA1QUlLQ3ZzaVBY?=
 =?utf-8?B?djBqc3k1NTRzR1dhS0xHUkVWd2hmY3VOSzJjZnFyMFJXSWN0M2VHVFAvVldW?=
 =?utf-8?B?NDh3SnQ5Q2g3NjU4RUEyR2dRQk9tNGNRYW1QVjRLR242WkdUQ3k5S2VMTDVR?=
 =?utf-8?B?cWNnWFlLUFJMMmZWYVdXV1JBUmoyOWtZMGMrTyt2VmpGcTBnK0ZvYk9QQVYw?=
 =?utf-8?B?NDFqUGc2S0xjV3NpcEZOQThWOE9QU1hSS0lUNHd2TENpSU5GTDgzRE5JK2po?=
 =?utf-8?B?WVY3K1hmMWk3S1VCaDFhTWovOWRHMUNNL3NPQ0M5WXo2dDFzQUF6T0pIWkQ5?=
 =?utf-8?B?VW5QaDJteUhoenFvcFhMOVpMdXlzQkQ4MzBZOXFRcTIzL0pMV0NWZTU1TVdV?=
 =?utf-8?B?UHM2SU1ZZW5GVk9hSDlMMDZjS0dqYVJtdS9BMldTZjdQemVGcDZxZ0NNQlFS?=
 =?utf-8?B?T3R2QnB0d2VyVXVTc3MxaHRxcmRiZU5aWVRkQ3ExZ1lFbkZIZ0E0VHBMeFQ1?=
 =?utf-8?B?VjM4eUlNcnBjQmRjTUZTT1lVWmlhQWhDam90QTlBaHVmc1Uwd3Y3NkpxQktz?=
 =?utf-8?B?QTVuUml4L1Q4bG93dmJlRGd3QkVyT1pZNWRtdk95VkRyclJNRjcwa2lEMkRh?=
 =?utf-8?B?cVplZWhxQzBSQTNWTSs4L2NIVTNDOStmV0VaaWpsdzhCS2JjRFpNSG05T21l?=
 =?utf-8?B?Vjl6Q0NaSDJ1bWdmaVNra2pnOTdHc1I3YzNvcTJsSzNSL0l3RlZsdytna3ZI?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ddfc1e-bbe6-4c66-35ec-08de1bbd754d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 16:16:06.6614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bdleIOP3X+f6ovZKBKnRD5fsi1TvWAOcN/1VZdo7RoLjc7eBUkwGnOPfzecIai7hoVzkz6cg4/cFNoBoROYhbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7406
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

Quoting Matt Roper (2025-11-03 21:15:37-03:00)
>On Mon, Nov 03, 2025 at 02:18:12PM -0300, Gustavo Sousa wrote:
>> From: Vinod Govindapillai <vinod.govindapillai@intel.com>
>>=20
>> Configure one of the FBC instances to use system caching. FBC
>> read/write requests are tagged as cacheable till a programmed
>> limit is reached by the hw.
>
>What exactly is "system caching?"  We have lots of different caches in
>current platforms, and it's not really obvious to me from the
>description here (or the bspec page) exactly which cache(s) are involved
>here.

Perhaps Vinod would provide more assertive answers for this and other
questions, but I'll also try to reply based on my research on this
topic.

Although the Bspec does not make it clear, by digging a bit deeper into
other documentation, "system cache" appears to be the SoC-level cache.

>
>Is turning this on always a win or is it situational?  I.e., is there
>any potential for display memory traffic to fill a cache with FBC data
>by evicting data that was part of the CPU or GT's working set?  If so,
>that seems like it could potentially harm the performance of other
>workloads running on the platform.
>
>Or is this whole thing about a completely new cache (unrelated to
>and unusable by anything else) which is devoted solely to FBC?

From what I understood in the docs, the value
FBC_SYS_CACHE_TAG_USE_RES_SPACE (i.e. 0b11) for field "Cache Tags"
indicates that the caching will happen in a reserved space dedicated to
the display engine.  So I believe we wouldn't be interfering with other
agents.

>
>>=20
>> Bspec: 74722
>
>You might want to add 68881 here since it has a bit more information
>about how we're actually supposed to set the fields documented on 74722.

Agreed.

>
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c      | 47 ++++++++++++++++++++=
+++++++
>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h |  9 +++++
>>  2 files changed, 56 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/=
i915/display/intel_fbc.c
>> index 24b72951ea3c..e2e55c58ddbc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -127,6 +127,9 @@ struct intel_fbc {
>>           */
>>          struct intel_fbc_state state;
>>          const char *no_fbc_reason;
>> +
>> +        /* Only one of FBC instances can use the system cache */
>> +        bool own_sys_cache;

If we go ahead with using this member, I would prefer that we used
"owns_sys_cache" (just like we use "has_something" instead of
"have_something").

>>  };
>> =20
>>  static char fbc_name(enum intel_fbc_id fbc_id)
>> @@ -569,12 +572,51 @@ static bool ilk_fbc_is_compressing(struct intel_fb=
c *fbc)
>>          return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc->id)) & =
DPFC_COMP_SEG_MASK;
>>  }
>> =20
>> +static void nvl_fbc_program_system_cache(struct intel_fbc *fbc, bool en=
able)
>> +{
>> +        struct intel_display *display =3D fbc->display;
>> +        u32 cfb_offset, usage;
>> +
>> +        lockdep_assert_held(&fbc->lock);
>> +
>> +        usage =3D intel_de_read(display, NVL_FBC_SYS_CACHE_USAGE_CFG);
>> +
>> +        /* System cache already being used by another pipe */
>> +        if (enable && (usage & FBC_SYS_CACHE_TAG_USE_RES_SPACE))
>> +                return;
>
>Rather than relying on the current register contents, should we be
>sanitizing this on driver probe (in case the pre-OS firmware already set
>this up) and then making our own decisions (as part of an atomic
>transaction) about which pipe to prioritize after that?

I agree.

>
>> +
>> +        /* Only the fbc instance which owns system cache can disable it=
 */
>> +        if (!enable && !fbc->own_sys_cache)
>> +                return;
>> +
>> +        /*
>> +         * Not programming the cache limit and cache reading enable bit=
s explicitly
>> +         * here. The default values should take care of those and that =
could leave
>> +         * adjustments of those bits to the system hw policy
>> +         *
>> +         * TODO: check if we need to explicitly program these?
>
>There's no hardware default documented for the range field, so unless
>the pre-OS firmware sets it up (which we probably shouldn't rely on),
>I'd expect this to be 0; I don't think that's what we want.

Agreed.

The Bspec clearly states that we should set "Cacheable Range" to 32, the
equivalent of 2MB (i.e. 32 chunks of 64KB).  So yes, we shouldn't rely
on any existing value and always use 32.

>
>> +         */
>> +        cfb_offset =3D enable ? i915_gem_stolen_node_offset(fbc->compre=
ssed_fb) : 0;
>> +        usage |=3D FBC_SYS_CACHE_START_BASE(cfb_offset);
>
>And if something *did* set this up already, then OR'ing a new address
>over the old one isn't going to work.  We'd need "(old & ~mask) | new"
>to ensure we don't have leftover bits still set by accident.  But it

Yeah.  The current code is not accouting for any pre-existing value here
and is subject to corruption by simply OR'ing.  This needs to be fixed.

Another thing to fix here is that the field "Cache Start Base" needs to
be in "4k byte chunks" and we are currently using cfb_offset directly
instead of applying the necessary shift.

>would probably be better to just avoid RMW-style handling in general and
>build a complete register value with exactly what we want rather than
>trying to modify the pre-existing value.

The Bspec says that we should keep other fields with their default
values.  So, I believe we do need to have RMW logic here.

>
>> +        usage |=3D enable ? FBC_SYS_CACHE_TAG_USE_RES_SPACE : FBC_SYS_C=
ACHE_TAG_DONT_CACHE;
>> +
>> +        intel_de_write(display, NVL_FBC_SYS_CACHE_USAGE_CFG, usage);
>> +
>> +        fbc->own_sys_cache =3D enable;
>
>It feels like instead of having this as a boolean flag in fbc, this
>should be a pointer/ID tracked at the intel_display level.  E.g.,
>
>        display->sys_cache_fbc =3D fbc;

Yeah.  A single member instead of one for each FBC seems to be enough.

>
>or possibly converted over to something tracked with atomic state so
>that we can make better high-level decisions about which FBC we want to
>enable this on as various displays get enabled/disabled.

That would be nice.  I see it as something that could be done as a
follow-up.

>
>
>Matt
>
>> +
>> +        drm_dbg_kms(display->drm, "System caching for FBC[%d] %s\n",
>> +                    fbc->id, enable ? "configured" : "cleared");
>> +}
>> +
>>  static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>>  {
>>          struct intel_display *display =3D fbc->display;
>> =20
>>          intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
>>                         i915_gem_stolen_node_offset(fbc->compressed_fb))=
;
>> +
>> +        if (DISPLAY_VER(display) >=3D 35)
>> +                nvl_fbc_program_system_cache(fbc, true);

One thing that concerns me here is that we are programming
SYS_CACHE_USAGE multiple times and the Bspec seems to indicate that we
should do it only once:

    "Configure SYS_CACHE_USAGE to setup the caching before enabling
    first FBC and leave it alone after that."

I believe we should get some clarification with the HW team to verify if
what we are doing here is legal.  By doing it multiple times, we could
be interfering with other agents (e.g. PCode) that could be doing some
dynamic adjustments.

--
Gustavo Sousa

>>  }
>> =20
>>  static const struct intel_fbc_funcs ilk_fbc_funcs =3D {
>> @@ -952,6 +994,8 @@ static void intel_fbc_program_workarounds(struct int=
el_fbc *fbc)
>> =20
>>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>>  {
>> +        struct intel_display *display =3D fbc->display;
>> +
>>          if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>>                  return;
>> =20
>> @@ -959,6 +1003,9 @@ static void __intel_fbc_cleanup_cfb(struct intel_fb=
c *fbc)
>>                  i915_gem_stolen_remove_node(fbc->compressed_llb);
>>          if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
>>                  i915_gem_stolen_remove_node(fbc->compressed_fb);
>> +
>> +        if (DISPLAY_VER(display) >=3D 35)
>> +                nvl_fbc_program_system_cache(fbc, false);
>>  }
>> =20
>>  void intel_fbc_cleanup(struct intel_display *display)
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu=
/drm/i915/display/intel_fbc_regs.h
>> index 77d8321c4fb3..592cd2384255 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> @@ -128,4 +128,13 @@
>>  #define   FBC_REND_NUKE                        REG_BIT(2)
>>  #define   FBC_REND_CACHE_CLEAN                REG_BIT(1)
>> =20
>> +#define NVL_FBC_SYS_CACHE_USAGE_CFG             _MMIO(0x1344E0)
>> +#define   FBC_SYS_CACHE_START_BASE_MASK         REG_GENMASK(31, 16)
>> +#define   FBC_SYS_CACHE_START_BASE(base)        REG_FIELD_PREP(FBC_SYS_=
CACHE_START_BASE_MASK, (base))
>> +#define   FBC_SYS_CACHEABLE_RANGE_MASK          REG_GENMASK(15, 4)
>> +#define   FBC_SYS_CACHEABLE_RANGE(range)        REG_FIELD_PREP(FBC_SYS_=
CACHEABLE_RANGE_MASK, (range))
>> +#define   FBC_SYS_CACHE_TAG_MASK                REG_GENMASK(3, 2)
>> +#define   FBC_SYS_CACHE_TAG_DONT_CACHE          REG_FIELD_PREP(FBC_SYS_=
CACHE_TAG_MASK, 0)
>> +#define   FBC_SYS_CACHE_TAG_USE_RES_SPACE       REG_FIELD_PREP(FBC_SYS_=
CACHE_TAG_MASK, 3)
>> +
>>  #endif /* __INTEL_FBC_REGS__ */
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
