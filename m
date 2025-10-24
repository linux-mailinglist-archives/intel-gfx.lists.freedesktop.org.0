Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E31C044B9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 06:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4C110E0FD;
	Fri, 24 Oct 2025 04:00:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cS8miKgJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6CD10E0FD;
 Fri, 24 Oct 2025 04:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761278438; x=1792814438;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X+k7idRxyHxFqni/8GvqLpLqPs3xM3g1clO0/Id/BZY=;
 b=cS8miKgJKOYkeudZm+PiWHDZd4pwTYenfVodWY7a6uHL31rHy8+xgiQv
 UjKL2wRe9vXKQGzElNLmfYEhiubsewD23l0YUK4d3flr4d+HBEePhT5ij
 hE1gTE6vOX23XnMwZtcgWKF/j8xEOHtJg2RAS3haWUjsSAgWzAM9zl1KJ
 AoJsoJsZBwuq9jSwvbrJm3ui76x0nE4vEVA/tlaAOB6YLjHiUS3pDU88D
 4A7d4yo+xy32aNquI42t67VWb/7tbAhY1QSXNQoh3QFOXE7drlly0MUcH
 vhylIxjciEAB0DLtgv04ahBjDdGkWnNfMfMTNxil9njsPNiO5HjNycAE7 g==;
X-CSE-ConnectionGUID: 3cqpPZS3SZej1jbxY3Uqvw==
X-CSE-MsgGUID: d9yzzYRxQfi23/5guWfJWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73747607"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="73747607"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 21:00:38 -0700
X-CSE-ConnectionGUID: H3NSj+mVSxaKXg/2gKwvgQ==
X-CSE-MsgGUID: rJFdruWUR6OogSDDJdyXsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="188718913"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 21:00:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 21:00:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 21:00:37 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 21:00:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EeWE8wx9LnXdTZHvbhVh00NsJxQUwYHMvzPdcZIL1p99oGQPDMY8RST3RP+qm5sZBfbp4idxWG+bdzOaco9iUyxFJDMdk+amDyti+jHXO13CnPo6aVg1r28XkUviSLMTFP0v6Pxgh5ENLc9nsEkaUsKzS6BqRFjVz5McX30p+m5dPxgDNzSwobESFxQpdPhBQ7vYr2AW0zczJMsW/ZtYrV3g5D3ESOO++fdtRSIzictdMHtTQShBR+TEHg4VbaBUrT4hiBATVkeagvvWpTNu/rRf7mMi+hfCq50Nn0amOua2bCgr82Drm4fFej+799syJSoUQ8ZpZzN3KwDLlaaUsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/g8bo26ot7W8T2k4yaZFQbCGT3A8UMxJh+xlM12A0yk=;
 b=MpfyFBZaLaBUwRrFqJiPVuGFRn+xJEvSC+SkTMXNwWNEUK021edVfAh6wsCplBGwnfSeQNsoA2iVguLa8fmzcTm5jIrn/q7Bkn8d9fSpk+XxouaULi+rO09F6X/6yGotsOW8hT2wy09UN6CndN8tFAXYpZebwi//jWnI3AoMSBBHrzX3HlH83kJpuSBtt3OqzEApmVQuQ234teTILTbozhUshxttBnVDAhS2DZ5UoUCf0Jei06kJk66B6q0IoXlwlIecQNL512ww95VlsqFbMk779h8cspBkT2W4Prz+hXS2HbSSZ5wWT3C3hj5bxwu9px9ujtQU8EpFj1F53UaleA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Fri, 24 Oct
 2025 04:00:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 24 Oct 2025
 04:00:34 +0000
Message-ID: <2be97649-cfab-4ca7-b895-83bd597bda4b@intel.com>
Date: Fri, 24 Oct 2025 09:30:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
 <aPoZ05jth8oGvoGk@intel.com> <b7971dfc-2c75-4a33-ba91-5a2d30339b35@intel.com>
 <aPo-STwN09z7qnFB@intel.com> <aPpE_z3rVxfv5x0r@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aPpE_z3rVxfv5x0r@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0234.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5183:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a61f448-717c-4e11-7269-08de12b1e17c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RXZMSElKOGtpL0RFU3lWeWJDU1BoODFaY2RxLzVMd21TMnhhZG5UOGphR09F?=
 =?utf-8?B?R0g4UDZPWUtLaUJIaTI0a2Y5RzU4RjhIQnQyMzhmTzRUOGc2M3VmcGIrbGdI?=
 =?utf-8?B?ZnFoY3ZiZEQxeVBNdE1TZkRZc3dCb0ZFT2lGdDRQOEUxN2diNDhpOVlsYkxB?=
 =?utf-8?B?a2pYMUN1RHA2dVgxaU9hN0F4SkFlbWc5VzhRR0ljZUFaazJHcTY3aC9uSmVU?=
 =?utf-8?B?RFpNM3NSY1dqN3JMaC9rbTQ4bWtteEtaTGtOMVVDbW4vdWVIbnA4UUtjbVNa?=
 =?utf-8?B?TEJQM0ZQcTZZOGhtTWRVd1RlSkc5ZjhHNHQ0N2dyNmt2bDh3VVNBL0g5WmV3?=
 =?utf-8?B?V2t6RGtldXQ3M1dseHRWZWt3TVRDc0dvS2IvWi9lVzY4SjVERjBuUGI1K1Nl?=
 =?utf-8?B?aVJqdjNrbWRqNWZkY1NERmphQmdrN2JVU3IzOXcyTjh1TURJNEtxTzFWRW5z?=
 =?utf-8?B?R0FCQ2FVUWEvenVxK2J2Q2IzZVBqRlJ4djE3d1hkTFlXcXdGK1dZUlg2a3dR?=
 =?utf-8?B?YWpSOGFmazluYWp5N21lR0VHYkJUM3B6Y2gzZVBDM0N3blpHWXdSRnpMV2ZK?=
 =?utf-8?B?L09PMDU4MCtlaHlKbzB2YW1CZCtaLzYzMUNCcmJFaWk5SWpJSGxWZW9SMFNF?=
 =?utf-8?B?bisrYmhNRzI3M0NJUkVtV2NuMStxNkh4QmNyY3VpZVFMTUhOUGRIOWVqZGF6?=
 =?utf-8?B?YUdZRWRXYzV1TVBYK3RRdUpCSTJXTEszUmFKV0tSTXpGS3cvUlBTbCt5dzlD?=
 =?utf-8?B?RysveUVtNXJsM21jankxaGxxLzZrSVZ6TGxRSUVuWUNOWHhkTUlNTUFHMmNR?=
 =?utf-8?B?KzFsYXdqNEx6OXRZYUhQdm9xNkw4N0RKOTNpV1UzRm9yZFRDbVVqVWl3OEdK?=
 =?utf-8?B?enZLQmFzNGdRR3IrdDJvRlppTVpza2JkYjFsemY0ZitzR3kxVld0bXdaZjlu?=
 =?utf-8?B?aUg1aElsMTVXYWNpUDBFYmZSQlorNVVjM1ozTGFqM3QxOVdobXViejlnNXY5?=
 =?utf-8?B?ejRLOFhaa25yemcyME1MME1aQnpTWUhKeFNQZW0zYjBvWVFkS3c3Y1lFWU91?=
 =?utf-8?B?R3VyUSs1ZG4ycWdxVHpBSUNPM2h2TWtJS2JCakdqeGVmMHNnUldVdnd6OHdX?=
 =?utf-8?B?enpzc0NDcnAyd3k3bTh0c2NPUXBBZi9adjY0NCtlVnRBR0lhNGN1anBuQUJz?=
 =?utf-8?B?aGtZY0w0bm4yVFVFQ2sxVTA4VW9HK1BEbWdGWDMwNEt0S2RDTjFRNUEvWGxu?=
 =?utf-8?B?ZWN0WFk2S3N3K0g4SXFHck5FMml3ZFZycHdzTHE4dC9JdmJ3aWNxYjNmOVJ6?=
 =?utf-8?B?OTRyUzhrSUVLVFlPbnRPV0hvVnoydUxZMWd1UWtQc1g3aUh2ZHlXM0tTWDZz?=
 =?utf-8?B?dGpPWXVXS3l3U29ZT0l5NjhqK0E2UjBveVoxc0hyTEErejJtV29ESHpqdVpY?=
 =?utf-8?B?ZUVLb2FxcHl5NUd6bTZ0bUdEeTJwRExVV21Uc2NmTTFIV3BqemxsdWtFckIx?=
 =?utf-8?B?QklPVTdNUUFNSVliaUpKY1V0MVBLcXR1ejExTXhQYWJJbkRFNGdvYmd2NFdj?=
 =?utf-8?B?KzY0cEd0RWxqbnk1bzJJNHh6UXRXd2FVOUZuWTVsbVdUMUtNRW9DTFdvdFZm?=
 =?utf-8?B?M3l1R2FQbEc2MVp2VlF0ZTM0bkd3ZWZWeGREL1EwMktLVTkva05pMHc2cGli?=
 =?utf-8?B?YzU0M3ZrYUUrYVBSNmU3dDFFc2Y4cmVjbHpEaVNwaktYdEdWK1BrU1d1RWdx?=
 =?utf-8?B?YlFGYkZxQi9mNWNFNWpUSHB5S1p5eXBNamVKRnFlZHhYM0FIQVVEZ0Z6WWxQ?=
 =?utf-8?B?SGtKbnhPdkxnUzV5a2lDVzliVTZPMHNxSzhSRDdNWGowaFdQRUtXZnBZZmlP?=
 =?utf-8?B?L3Q5a1pSKzhNMm14czJKaWluVUoraHcvRWhvL0daV0h0bEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnBBTkJ3Tmt1c29OanNvdkdPTnRxTUVFYlF3RVhNdjJxVUR4bFcxL21ZVy9H?=
 =?utf-8?B?bnJTWmxMcUFkTHJDaFUwRGRUb2loaVFkME9pemwrMTZuSHVlQ0JEUHhzSnRK?=
 =?utf-8?B?bjVjWDFVbk80TnhBQkE1U0JyK0xqWU5BODVvZ0RpeDBsdUFLcWxlWmxsWFlr?=
 =?utf-8?B?b2FQK0xiQk5wOHluUGdudkZNYlJxZHYrY0o4T3pnbHg5M2xsd1VZR3JXSk5I?=
 =?utf-8?B?UTgrbmJjNi9PcnVleXVZRDBzY0EzZ01nd1RUL0xHNnlZSlBxR09QMm95aFVT?=
 =?utf-8?B?WFJYTTdVSFFrZDdERnJoZVpsVHkyNTRyeWlxcnp6SC8wUHdpa1JjNk9MTEh3?=
 =?utf-8?B?WktVcEhMc1g5NjR0Y0kzNXlJK2gyL2krRGl0OXd4UlplR3dqVG1UNmdoK0x0?=
 =?utf-8?B?Y3dPMmlZVHUxeC96bFRmWlQrREVTY1dnVk9Iem5WZWVneVBQME9QYXZHaEt0?=
 =?utf-8?B?Sm9TeUU1UXVvMklXNjlDZTNzSTlDdjE4dnM0R3NaOXIvT3J2YklPa3Bkclds?=
 =?utf-8?B?QVJRUXZCU0Z4TngrWFJnZS9lZVpCN2dJMWxxcG1FWmE2M3BWTHY4OFRUeGRW?=
 =?utf-8?B?N1oreDF3NHRiS3RDdnpOTFBDT2tBVm1QbHNRTGZDcVRwYzdCbTd0dEpTSHB3?=
 =?utf-8?B?WEFTaUorbW5GZnBpQ3BVN1RYM2JYUW5QaHMyWkZKUHhVRXdKVGpYcnpZRmRH?=
 =?utf-8?B?RGdLZXQ0VXNuTnB1R015THB5cjlEUklTeVp0MXd6dTBOYm9qY0JxNDlJOWhv?=
 =?utf-8?B?a1A3d1MrT1Q4b0lITWlJSndYU3FkakpMQWM0RWRKYlZ3MHJTdTFWN000SDd1?=
 =?utf-8?B?Q2cveEV3NmJmYUwycUhlN2xDV2o0RVNxNkh0b0dLMFdsUEUvOFhxWndUQlpx?=
 =?utf-8?B?ZktPWlVEQUovSEduQnhoUnU4ZFlhalpWWlRZTENoUVUrLzUvdXVjY2FBMHpE?=
 =?utf-8?B?V0k2aWJhT3I1emU1WTdhOVloN25rS240U2FaSStOZUM0TlpJcFJ5Vm1GZThr?=
 =?utf-8?B?TksxTUwvNTY5b1ZNR0hudlJWWnJ2TXRIc2JCT1NDVUhGRFVPbWVFT2I0Tkt4?=
 =?utf-8?B?bytKVjJZT2VNK2pWYjJCSVNlY1ZUK2ZncWswZGh5azN4NEY5RzBZOTJUZDFR?=
 =?utf-8?B?SkVMUUdwS0R0MUtaMjFTcGp0bVBRMzNoSEszUlllNEV5RVc2N2ZXSkQ2aS9W?=
 =?utf-8?B?VTRmQmNtZVBpMXpQSnRwNVQ3cXJNRWVOMFlCUms5U2R0a1hTMEYycnlLeVZn?=
 =?utf-8?B?U2JVRFdFSzBFanlqbDVWeUdiR1g5VGU3ajB2ZUJ1bUpKVmxTN3RXKyt4TWtv?=
 =?utf-8?B?STFVOWdIVnFobm1zdE5EWU80TU9USHYvblVYbEtER1VPalZCWFRnTTYvbFpH?=
 =?utf-8?B?VHhHdUtXYjJpQWRFdHVyb0FocE9TQTBXK1FCdi9PQzRib0lxYlY1bmtTZUZD?=
 =?utf-8?B?clhsL3liTStGYmVPTE51ODRMWUgvM2Z2RWFRS2dNSjBYMnZZREVMajFEZnUx?=
 =?utf-8?B?YXFqSlhvc0M2VDByY05MSi94L3hwNCtoL0p5SUtMY3NDVS90NzVYQ1U3bDVZ?=
 =?utf-8?B?Tkk1MEZxZUtpQTJTY2xwOGUwY3A2U3Vwd1UwWEdoM2N2UzZ5SXZhc1ZudGRT?=
 =?utf-8?B?eDFiNXdNeS9odHpmdjdQelpIbEdoUXd3Wkpoc0taR1hOZ1hGc2xKVjMzUjFp?=
 =?utf-8?B?UThzMlE1SmJJaFVPekU1OE96dTFIU3NZc1MwUnI2NmovRW1BUFRKM1dEMGJ1?=
 =?utf-8?B?dy9PaEdETjJQa00xMmVNWHYvOGZNQTZEQ1hiREc1UGxWZFVqMGFNM1VBTlRm?=
 =?utf-8?B?ZW9hKzdjSTFSNGtyUE1od3BiZEtjYitBZ0tRcDBUTFBzVkhGQ2tXNmRjQkVI?=
 =?utf-8?B?QXdmLzdqb1M4eTJVdlJGdTBEYlFvM2J4UXd1NFQ2RzhGbGdNMld4R1JVMG8z?=
 =?utf-8?B?Q1ZYb2FmMmw3RTJ2R3NKc1huNXR2L1FKc0VhUmErNzdJbUlEYjlXKzQrZzVr?=
 =?utf-8?B?YVdEZXU2Y3ZKQXkxd1RLOXFLR2kwZElhNmk2U003U3I0ek9uRHJlQ3R6Y1RD?=
 =?utf-8?B?RC9wWGE2cTVTWGJFNGFqNTFIQmVxSXZLM01velZ5TlFzWVcrdDBSYlYrUWtm?=
 =?utf-8?B?S0JHdCt5WlBJVWk0Q0w0MWExekNLelhkb2wwOWxQYjVpZTRqYS96REMrRkQv?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a61f448-717c-4e11-7269-08de12b1e17c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 04:00:34.2154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lmdu6eYw91cm2bdoej8g/0zBt7bHisycDNdX+bc/B34IYElKRhS/p6LapDE07Ytl9QaXAP8miq+O/IYuPVhjKiiOj3hvw4mV0qWTwiI+pdY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
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


On 10/23/2025 8:38 PM, Ville Syrjälä wrote:
> On Thu, Oct 23, 2025 at 05:40:09PM +0300, Ville Syrjälä wrote:
>> On Thu, Oct 23, 2025 at 05:57:02PM +0530, Nautiyal, Ankit K wrote:
>>> On 10/23/2025 5:34 PM, Ville Syrjälä wrote:
>>>> On Thu, Oct 23, 2025 at 01:46:14PM +0530, Ankit Nautiyal wrote:
>>>>> Currently the EMP_AS_SDP_TL is set to vrr.vsync_start which is
>>>>> incorrect.
>>>>>
>>>>> As per Bspec:71197 the transmission line must be within the SCL +
>>>>> guardband region. Before guardband optimization, guradband was same as
>>>>> vblank length so EMP_AS_SDP_TL set with vrr.sync_start was falling in
>>>>> this region and it was not giving an issue.
>>>>>
>>>>> Now with optimized guardband, this is falling outside the SCL +
>>>>> guardband region and since the same transmission line is used by VSC SDP
>>>>> also, this results in PSR timeout issues.
>>>>>
>>>>> Further restrictions on the position of the transmission line:
>>>>> For DP/eDP, if there is a set context latency (SCL) window, then it
>>>>> cannot be the first line of SCL
>>>>> For DP/eDP, if there is no SCL window, then it cannot be the first line of
>>>>> the Delayed V. Blank
>>>>>
>>>>> Fix the EMP_AS_SDP_TL to VTOTAL - (delayed vblank_start - SCL + 1)
>>>>> Internally the HW computes the value as VTOTAL - EMP_AS_SDP_TL.
>>>>>
>>>>> Fixes: e1123e617e51 ("drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP")
>>>>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> Cc: Jouni Högander <jouni.hogander@intel.com>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 12 +++++++++---
>>>>>    1 file changed, 9 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>> index 92fb72b56f16..dd81d2133aba 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>>> @@ -655,18 +655,24 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
>>>>>    {
>>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>>> +	int transmission_line;
>>>>>    
>>>>>    	/*
>>>>>    	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
>>>>>    	 * double buffering point and transmission line for VRR packets for
>>>>>    	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>>>>>    	 * Since currently we support VRR only for DP/eDP, so this is programmed
>>>>> -	 * to for Adaptive Sync SDP to Vsync start.
>>>>> +	 * for Adaptive Sync SDP.
>>>>>    	 */
>>>>> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
>>>>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20) {
>>>>> +		transmission_line = adjusted_mode->crtc_vtotal - (adjusted_mode->crtc_vblank_start -
>>>>> +								  crtc_state->set_context_latency +
>>>>> +								  1);
>>>>>    		intel_de_write(display,
>>>>>    			       EMP_AS_SDP_TL(display, cpu_transcoder),
>>>>> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>>>>> +			       EMP_AS_SDP_DB_TL(transmission_line));
>>>>> +	}
>>>> Pretty sure we are expected to send it at vsync_start.
>>> Hmm.. then do we need to move vsync_start too similar to vblank_start
>>> for optimized guardband?
>> The vsync pulse location is dictated by the timings.
>>
>>> If we do not move vsync_start, and set the transmission line to
>>> vsync_start, it will never fall in the region SCL + guardband with a
>>> reduced guardband.
>> Only if the vsync pulse is early in the vblank. That's up to the
>> display.
> Oh and I think we should get rid of that 'assume_all_enabled' stuff
> for the AS SDP, and account for it only when actually needed.
> Which I *think* means PCON or panel replay with AUX-less ALPM.

Currently we are enabling it for VRR and CMRR with AVT and FAVT mode 
respectively.


>
> There's also that t1 vs. t2 setup time thing for the panel replay,
> which seems to be telling me that we could sometimes transmit the
> AS SDP later. But if I'm reading that right we have to switch to the
> t1 (vsync) transmission line whenever we switch to live frame mode,
> which I presume can happen basically at any time. So maybe we can't
> actually use that t2 transmission line.

I think it will be prudent to set the min guardband to accommodate the 
vsync_start as done by Jouni in patch: 
https://patchwork.freedesktop.org/patch/682984/?series=156341&rev=2

Need to remove 'assume_all_enabled' as mentioned, and have some check 
for whether AS_SDP is supported (and can be enabled later).

To have this check is a bit challenging in intel_dp_sdp_min_guardband() 
since its called from 
intel_crtc_compute_config()->intel_vrr_compute_guardband() also, where 
we do not have obvious way to get intel_dp.


Regards,

Ankit



>
