Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNAJDc1teGlSpwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 08:48:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BD090D46
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 08:48:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CF310E041;
	Tue, 27 Jan 2026 07:48:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WBm5W3lK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FCE10E041;
 Tue, 27 Jan 2026 07:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769500106; x=1801036106;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TOv4DGx6C75jfY2M5Ar4IG6646MKNZM0Zt0/5Fzf8T4=;
 b=WBm5W3lK3QqIHGIvEbBd2+iSl+HX7CguE+Pbp73HCM+Ar5lQ/X0OtzId
 S3sHpdhlBLDZ60mXwoyAPwaDyKJNpN/NIhJq0DVEl0ppfLMv1VxcGso7J
 7gSy446AYvXM4Lsiz52FD5Cd8eYGbhk/XgSbS+EWTzcYuIOHL0Py7KfKf
 ofdkW59WCxyrdoo/mEmHzPDSjwOh5qPIwZTgwaMCe5ENuj58+VrxmrhKl
 1h8RM9VB19zkn9TuwZRGOw3Eb0obE5eUgjWRp0N4gbEptjQWuXxmjIvjv
 ju9Ynbw2a/MC1dnaMhlKcV+420z4zLDJPvzzBsqjZzaPDGqIE6B9xjslj g==;
X-CSE-ConnectionGUID: Bif5tDfUQUytmfxHmxIOlA==
X-CSE-MsgGUID: yJsM1+dAS12bCfWHfuKuUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="80990135"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="80990135"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 23:48:25 -0800
X-CSE-ConnectionGUID: 1ntwiB6kR4Wi+0ay1+ks0Q==
X-CSE-MsgGUID: 0VKQSLmgSqq7GeX+/7MjLw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 23:48:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 23:48:24 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 23:48:24 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 23:48:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=npuOFO9ZapJUW1Zivw9rtiD2rCXGpTdwD22SLX/wi16PCHN/wTEhPyAxnSLYG2m9avr5l7nNcNQthcXsrCgtxKnBRF8DdhTEdiy4P5z+37NU6SbbtgmtluGpvoOmM1BS9j3z+CtQK3gpMPtStdmjyjGs+erky6E5CVfAC5hov1ev3C7VkhUcK/FdoIL0EGVqiXAPHWuCsn6UoFSIisGE29+2V4ZsgzxSpM4iJRhYWG6eo2/JD7gHh08DdFXmZcJS8/+sN1GHRAR3SXKxqkPXnEn8JHxV2CU4uukOfEETLEHIPARX2OZQ8WKBPrOLhlSgWmtUgPeojr3s9yJ3js0DOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SAPbNiTmm5499wmCU2Y0kkAVNCUmT/D+5t550AJWMUc=;
 b=kv1Gf7CpFTa7lw9krWyRV/T8ngfISZI7PYzvKkAV6oIpvDj7kM30WjVyzs45CPbKCTUbEmf2J4Fl6xbjggM9cjr/FW7ReYbVov9pxKsri7Gqs04skj+AivdcHUym4+ym0O9shF339Pcc3j6xPHf1S1eZVnchD3h33nsIx7FzBdfUzdzr/sQcb2lTmlJNKYfzYao7i1hu91IJbB0mAZWd5hC3jX/J0aWycBxWdi+FXbVHCKmWDhhPIO4mI9YU108V8XxgkhkYHbEJJXoXA0hU6QqRPsgDXcdwNMQ/VpRmS34uOcMlvp+D/tyept/Ehi5iQLRNhCLQF1KXc34+InAftw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Tue, 27 Jan
 2026 07:48:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 07:48:17 +0000
Message-ID: <2af649aa-4b90-4f92-926b-2447686d8340@intel.com>
Date: Tue, 27 Jan 2026 13:18:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 09/10] drm/i915/display: Add
 HAS_PSR_TRANS_PUSH_FRAME_CHANGE macro
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-10-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-10-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CYYPR11MB8386:EE_
X-MS-Office365-Filtering-Correlation-Id: 693b90ce-da3c-411a-2d3c-08de5d786ed9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RkZCaldnNXIrRXZDNkhmcGpnWnlvMjVBc0hFUTlwVnI1cFhGTTFzNlpQdEF2?=
 =?utf-8?B?S09FOGtrMjhCa2VkR3RUaWh4K1QzU2lZaHJ4ZG16VUhPb1VtVmtLK1VsTXZE?=
 =?utf-8?B?em1JcGU2aTVVZzVnRmhSVkp2ZnVCNDFQOVVQbStGVFp6VGZ3bG1NY2Y3cFlV?=
 =?utf-8?B?Q3J2OGNhUFcwUkNydHRqMHIwRnBEQjNjQ0l1MjhWWjlzajI4NFZWajJEVEtB?=
 =?utf-8?B?VlZUQzgzV2piODlZUCt5ZUxLaTY3MXZxWjJhdDVFdE82NEsyTFlFU0ZyK0M2?=
 =?utf-8?B?UG9aSXovZlNvRHdVRU1hNE9namZQVHRZUWhkS2ZCczdKemhqZlVlTWI0OFBL?=
 =?utf-8?B?YjE2TytXUFZINUsreTVMaW9YWUhNcjF6bEROY0QraEl1Nmltd29COW50MTc4?=
 =?utf-8?B?dWw2V2NJejlDTVg4dHAxR3Vta2hwN0FqQVdwMUNjc0dtMTVUQ3FTak53S2di?=
 =?utf-8?B?eEJpN3pKdW1tRmlGR1lEb2NBb3duM2ZOc1ZqNEh4YnJyVER0MmdRZnl0MGs2?=
 =?utf-8?B?SWhPRWhJdk1vZVZpejRESkVaRktiM2YzRXJrK09CSUZXdFV6NHRLLzhtdlRD?=
 =?utf-8?B?OVNGVWtiL056aGRLMVZDWmI1QVVwK29hWnpzRTI5RS9DMjJ2N0hyYXN4Z2Jl?=
 =?utf-8?B?OTVEandpWDY0RHJBb0dDeDY1ek1SaUN3WGdJVGpuYk11MzVOTXZsVGE5aW85?=
 =?utf-8?B?YTRSQndKWWpxUU5RQlN3a2gyc3BOZmtIaGh1c2tuR21oZXJqbTlTaXFwaDFX?=
 =?utf-8?B?ZmxyeVMrMnFnbFlBQ0U0RkU4aFJDbXdUU01Bdy96YWIrWVp5TFNIWG13TGEx?=
 =?utf-8?B?Z3E3ZDBZM0wxaGVMa0JPaFZCRWFaL2d0OWpEcGFJL0RzOUlRWEszbGg3NzND?=
 =?utf-8?B?ejk2Wm9IWldqeU9uakp6RUp6QnR2ay8rZ09kVU5VREEya21adU1BRXZXVVdP?=
 =?utf-8?B?QitBVTVLZTM4YjBtN1pwZUtqTkRFNzQ1OHBtWWNtT1pwaXVyV0ZsYTBYWk9H?=
 =?utf-8?B?bHhVdU0rK3RBNEt5Wkx6QUFSVXdxN3BmU1hUMVBhK0cvRTdXWGQ4TisyeGp3?=
 =?utf-8?B?MFRTRllKU0drNDcyM2lCZHNkdEZYZy9ub1g2ZGY4YVlEejVzRDdIU29uS1k1?=
 =?utf-8?B?dkRLRjZOenM4MjN0cWNkQnFhTTFOcUU0bnRPS0RpZGxGL3ZsODIyS09XSVJp?=
 =?utf-8?B?ZGdzMnpPYjhLV29FNUtzQ1poQjE4UW5SOUpqR1NWeVFaWUJrb0pTM3RnMHVR?=
 =?utf-8?B?NGd0dTF2MUVZbmNvY1FiT0VoVHRSazlUYnQyM0ZpcURna3dlVFh4dyt1bGRF?=
 =?utf-8?B?OHd3VzRQbjBZV3VBZHZ3aGd0TTBHQmFYN1I5aXdKTDZNbXphUXN6UThZR0pa?=
 =?utf-8?B?UHRVdlAvMm5pQ1NQbGp4Mm5KL0t0SnRnUmFPWVIzRXBvRC9rdTVIVVppU2Ix?=
 =?utf-8?B?dTI3RTVEWEhJaW9zbkpROVA0R2pIcUFOckFnbEpuZjBzQ0lXcCtYMVVOa1VF?=
 =?utf-8?B?b2t4MWpxRnFRV3JEVU1iR2pNY0VzL2phSUo5R1ZFTFFFNUxGU2RFUi9aZTVH?=
 =?utf-8?B?cTFmakxhL0hSQkhmLzJucXJMT0NiMm1mTzlITDlQUnNaZThPRThVKzJDRm1k?=
 =?utf-8?B?ajZkTS9XZWtpY3FoMlV4akZvVzJHRGlCZm5RVU9vRkRhcW1MdndJbG14ZnJr?=
 =?utf-8?B?Nm9PdUJ5VFV3aEpiQzlzTEhjOWpKeHpJbldvTTF4OTYzVXh0QmtYaDdyblZ2?=
 =?utf-8?B?MnFvZFlreWVML09Gempzb1FEeS83M3QrY2E1R1dOK1FreDg3YW1QU0pTWEps?=
 =?utf-8?B?ZGpuaTMxSkU3a081VHhiUVdwSmduTFcvTi92Yjh6NkhuVzl4Y1REbVRNa0RG?=
 =?utf-8?B?L3U0ZmpIdXlNK0doSHdhMm5QMUpsMTllU0xhMEFLcFppMWlsNjkxSnNCalVF?=
 =?utf-8?B?dHpmZ0gzanZIbmVRVE5JaFJHZ2ZLSjhGQkNiUVdTK0hjQmtRRVA2TmdpVFhT?=
 =?utf-8?B?RHY1Y2VyVkkyOWR2bk15clY2TXIwRzFyNytKd1VtNnZJUXpnMHVCczR6M0dI?=
 =?utf-8?B?QTZiVFFUaXNiTUNKcGE4K25Rb2d1NjU4eHN3MnkwOEFZWVo0b2F5Q0hJSlo0?=
 =?utf-8?Q?ddkI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVJVUmI5STNISDVrNXJ5QXFZN2szaTZiZ01Ma0RGZW9uSitqOVFHYWNXOURr?=
 =?utf-8?B?S2FGbVRyZXcwSk00TjZtSDdGckRSM1V0Tlk2R0VxTzhRRnhlNjdSdVJsL08x?=
 =?utf-8?B?VjFNdzRsMmhzRmtNZ2ZyOGpMK2NNQm1xZnVpTDBVaUZDK0pWYjJvbEtnV1lk?=
 =?utf-8?B?V2tKZnhPUi9iVFliN0NoR3ozMmtBUWVPNnNRTFNib2NiQlU5Q2RDc1l3VWhO?=
 =?utf-8?B?WFZQbllsM3k3YnF4TXpoNityOEtKWi9Sbm1SMTJzRnZjMUR4eVU2bnB3L051?=
 =?utf-8?B?Z1BxUkVCZXRWalNuL1VkL083clg2T0x6dkY0SHJwdGR1QWVSdzF2T09iVnIv?=
 =?utf-8?B?TW9NaDV4Q285cGp0V09IWWRwRXAwZ1JNdTBWUmpyM1JqSDlqeDgyMFdZVlRj?=
 =?utf-8?B?eDRzVlByTDVuZVM0NjVqMWxZaDZsUnBPSVpCcUozc3VJQjNvbDVqRithVSs3?=
 =?utf-8?B?N2hjQ1dTM0FOOTcxbXpyNUN5NmE3ZWtueDhFTUgyeSs2L0ZUV1FPVmRXcG1V?=
 =?utf-8?B?OGFmZjVkcmVYYXlaWDFCMmtrQU52Wi9LQ2ZTNk9lL2RmaU9TNE1uczR3eDc1?=
 =?utf-8?B?cmNKc0dpSjRkNUdXRVVrRHAvbkg4YjhEQys0aEZjQjEza1pNdTNVay9UV1Zp?=
 =?utf-8?B?S1UzRkxsTFpUeTZWMXg2dEkzSHVXQTBFb0xYYWRwMkNXT3JuWlVlMEpQS1Ir?=
 =?utf-8?B?a2NjMjVSbFF3aVhXdUNRYzJCYTYvazluQnltazRzMW5kNVBEOTkvUjlxQnhQ?=
 =?utf-8?B?MXU4UXVNS3c4eUZNeWlSZit2Ynh0MGFpREhMZHVEdXRXNE53MVFXcnNDMEdJ?=
 =?utf-8?B?OUlSeFYxaTd2SkNYK2tIV0ZaZmdxTGQ4QUpkci9EVlMvSTFOdW40cU9JQldZ?=
 =?utf-8?B?L2EwK0lhSmhOMWt4NklvMjlNWnlvU0JUdjU3eTVXbC9JQmNYcTgyUGJwU3Zr?=
 =?utf-8?B?Zm9uU3dadkFtcjlIZnFyLy9zNzB5elRYWTh6bmUyUWdXbldjWWp1ZUxXd01x?=
 =?utf-8?B?UGI2WlFUZ1drSDF0ZHVrbkMveEpaN0Z5cFcxdE14M1BPR3kyUTMxclRTdjJa?=
 =?utf-8?B?MUJ3bUhuNzRiMHI3R0QrNkpvdVZtdkp6Y2VUdFM4VXZib0ZpMFJ4bUVQTXVt?=
 =?utf-8?B?c3JQTlBIZHJReTRpRlRGbk1yZG5TQmwzMDZWRVdSNE1Gb2E1enlIMHd6OE44?=
 =?utf-8?B?Z0RBaVc1MGtPZytnZ1I0dXR4ZW1IWFM5cjVPN1JLbGw1VEVEcXlkRm5KSFVF?=
 =?utf-8?B?OGZzaVhLL2ZWUU9lMUh2ZStqU2tpV2xqL0lLS21qUXY5bnR3Qzl3aXppdjlp?=
 =?utf-8?B?WmxEL25LaWQ5aUlmN1BZS1RvMGJubSsyejlpbkIyMWE1SzlJK21DL0V2NE9L?=
 =?utf-8?B?Ti85SWpBVXY2RmF1UXBZRjUrZllJVHRiNHBsU1RaM3JWQjNKRXZSTCtBSkNF?=
 =?utf-8?B?MzlPQUl1QTVFRDdGZmRwS3gxcEtxMS9YaWJhQWdoM0NWMDA1ekJiVVdPbnpT?=
 =?utf-8?B?cEp5V21UMUtFamZhMEpQa3BTOW5rT29HUk5WWkxJQ0Y5bDNEcUluMkd4MUhv?=
 =?utf-8?B?cUVWLyt3aUFRbExGdzM2NThTQVIwZjk2Z3lPSEpWV2k3OERnOTBRUmNwY2lW?=
 =?utf-8?B?Ry9Tc2FMRVQ1RnRrbS85V3hzQWVKZE9lR2p5ZU9yYWJOVGJZajZFVzgxS3hI?=
 =?utf-8?B?Z2d1cnFjTUd5SzB3THUrTk0zdHlWL2VjWTlJYmo1Z3c2Q3doeUkwL3BoRWJB?=
 =?utf-8?B?VFdZS2VaZ1FFWlkwQzVETGtJc3N4Y1ZpL2c3R3VsNWFBVjlEblEyaENJWi9w?=
 =?utf-8?B?VnRvYjFyNE10SmNWU09DdVg5b0d5T1NEcFJCZ2NjUmEzTmZRbm50SnZUYVZp?=
 =?utf-8?B?WitFelFzakQxckJmOTJCMG05bktEMUlNZ3dyb1JXaHFWc1pWUGVCcHcrRUo4?=
 =?utf-8?B?QUZNSzhiRGZSeDE1ajRBcWpkeU56OHRCajVUbzNmNk1DMVN5Q3dOTkhRWFZE?=
 =?utf-8?B?TlFaNVlEL21FeUhJd1BxMTB6UFJYNnIvcmE1Z2JwanVZVnl2YzNTMUYyZmFT?=
 =?utf-8?B?V0NxZm1obFdlUmFaRHo5T0tEbzlNN2x3ZnRzS3dlTGg1SzZMV0tkRVV2TGpW?=
 =?utf-8?B?K1NqbXhIQVduZDdzS1RBUjB0YmJFT1lFVUxmMnh6QUowUENmRUFCcVNDQWNk?=
 =?utf-8?B?WlVDMTJMUmdWbEU5NEZxOU9OZE5ERDNTSVhvNWlSeWhFWUtISG1kWEkwL0RR?=
 =?utf-8?B?aytpcVRNbWR0SmsxbWFsekdZRDhmZldSMkFiQ1o3Y1gyZHZkRG5VbWN4cExz?=
 =?utf-8?B?TjBGWmM2bTlmTmhQNEsyYkdVVVJwVk5OcFVobTFhbEFSdExhS1F1djNPR29t?=
 =?utf-8?Q?Kk5ruuxIVmglvnI0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 693b90ce-da3c-411a-2d3c-08de5d786ed9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 07:48:17.3893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SgfifocKnbmZlmhD8mIovQKOJhTVgpwNlcy4fC/zwHgDBymrv8hF5q1KkyDr1fEsgwSj0kNnAHFbUX7RSbfFritLfgruPx6FHFzyMkkMs24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 99BD090D46
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> Add macro telling platform supports triggering Frame Change event using
> Trans Push mechanism.

Perhaps :

Add a macro indicating that the platform supports triggering a Frame 
Change event for the PSR HW using the TRANS PUSH mechanism.

>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6c74d6b0cc48..13558bc648ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -196,6 +196,7 @@ struct intel_display_platforms {
>   #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
>   #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)->has_psr_hw_tracking)
>   #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >= 12)
> +#define HAS_PSR_TRANS_PUSH_FRAME_CHANGE(__display)	(DISPLAY_VER(__display) >= 20)

The HAS_PSR_HW_TRACKING should be below HAS_PSR2_SEL_FETCH, but can be a 
separate patch, as not related to the series.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   #define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
>   					 !(__display)->platform.broxton && !(__display)->platform.geminilake)
>   #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
