Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FCCB1B3AC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 14:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B0510E0B8;
	Tue,  5 Aug 2025 12:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+RQ6Y5h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60D310E0B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754397934; x=1785933934;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+CeWe8RIOMovJchg0627/rzjIGaNG2A2DPc+tcAt1EU=;
 b=U+RQ6Y5hYWFPUD3n2BBI7XdBgB0Z2VbcqJeFgtf/rXWf+ng50F7yuIJQ
 zAfEK1SmNn3C/PP9EuYQCK9mJDeWYkI1Qw/yabSsLoEKNxQRXrHhoWaPP
 lRmhFralK8lsKgS7c1gsCzFZ79NF3y+033yn9jVnu+aate50/oDu8j8AR
 M+uIAnvvNA9+qfv22yyFIUN7s5p+ZshdRFo04QptKt5QhcMTOd2GTLb1s
 RFLlY02uotGnYPxXzoaMZqNi81H4fh3znHlsRltHyYadnhLhClkShqzcI
 UvdSKctSyrqM5ZxQMu09ux1rfw7N2cIGVbprrPncOlcj9lgCPqdRzv1L9 g==;
X-CSE-ConnectionGUID: 9htylYoMQTGbd6r77xQ+Pw==
X-CSE-MsgGUID: MbtBA7WSSw6U3ghECssvAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="55727892"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="55727892"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 05:45:33 -0700
X-CSE-ConnectionGUID: eG0+XHi4Qp2JaNnylTKe8g==
X-CSE-MsgGUID: VZVkB57IRFqhFPj1+kgaJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164493909"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 05:45:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 05:45:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 05:45:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.55)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 05:45:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sc0v8Azl80rqFcowV7VKs1c64OXriYQTuQjZSppZptKLHkrOB4hBcnP5jHpzJkG/M9if7NWgKhmXT8MDT8cDGNIvXjwEyfday6fCwng4JVqg2ppaGT2y15A1iziydgncTykdYVnytQVPPFntoX2M/ZT7HnSw3o96dkljJk0YX2VLgZBULQ3uW9EADsLHh500tQWHhzdgqy95Mthil8JWUqjk/xIlpy5cFi25VZ4Z7nebG1uwayw9c0NAkeVZSlcI1ctHnheaEEjUk718iM/RWZyhafBEaOuLjubK3QBWosfOkuL6Vdz6CzgTq2MMDv43rRUEUQHmZzsROLqBvPi/Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VGj0Xe2bPOXPUhUCuqwOXypgX4slYJrINRGQn5sPXlg=;
 b=IWJQgXkQbPKVWYvWMbmYSfJy+Ek4vY5qqkTOes/xQMF/+slyyBmkC/hMiQvirbeDdCaraNz+YFrO2ODrlOUWpjnK7n5+tAdJ8PNHQOM7ykI+qDbTHx3gPIq9AhEYoxgqUVKyhcAEsL/tBD1Dn/2X9X8F4TEx2OCIFIIrbNtHWPjBzCMp67yRiLCIivNhAuGyUKnVJ5/fqKpTY6msMJFEvSwrX5hcLOwu0P64sjScU4I/Lcx9iPeLJbzxijEkkE0HlndyLgjwBE7x73SNkKWD+KLIeoWjLMAG0yDbNJYXkpVj556qVnnj4GAjcEa/aJe5+eWwhTZtAIcXqzO0bec/Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV8PR11MB8463.namprd11.prod.outlook.com (2603:10b6:408:1ed::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Tue, 5 Aug
 2025 12:45:25 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 12:45:25 +0000
Date: Tue, 5 Aug 2025 12:45:15 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Ensure sleep calculations in
 wait_for_freq() do not use negative value of timeout_ms
Message-ID: <l2iqzdsj6uhpzya4eu4iaught7pbpmrtnfv6okgfa5hephl34y@q6oajdfdi5ha>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
 <5963b8713d45a543d5d35f43d3478ed9643a566b@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <5963b8713d45a543d5d35f43d3478ed9643a566b@intel.com>
X-ClientProxiedBy: DU7PR01CA0038.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV8PR11MB8463:EE_
X-MS-Office365-Filtering-Correlation-Id: 7eb09846-a82a-48a0-d809-08ddd41df319
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dlJzUUZhMXkvT2xNSFA0Z0ZyWDZjM0pobVo2cStlWjdxMmRxMUZlWjhGMERL?=
 =?utf-8?B?NmtmZ1ZNbWxpNHFPVW44MEVRaWVwRkNvTk5iczFPeHpWQXVqVCtkeUhjZWpl?=
 =?utf-8?B?SzdqRitHekVvYW9URmk1TXpnN3k4eDZPYXM2Zm1zMndlZjc2WXcwYkJaQVVa?=
 =?utf-8?B?WnVWUFVMQTM0SWY0RlJKZUlNVzBGWUFEeDRPNi9hWmxhZ3A1ZjdldW4ydTJT?=
 =?utf-8?B?eFg5elliSW5aQ1lLc2lUNndYSkQ3MlJ6SFhXMVhFWWZqaUx0cngwUmFmMTBM?=
 =?utf-8?B?SkRvbVlCbDVPTjlXZWVhTGVld21qSUtaT0VmMGlYNzZjRUVublFMamdUSUow?=
 =?utf-8?B?bDRZMkRHNTBRc01JdVd6QWhhdXFoNFMvc1lIdGhFVm1SQ3hoNkhnMk90YlhI?=
 =?utf-8?B?OEFmNFo1bzVyTlp4MzAxVmlKdjBnV2huMlloemRNS1BEazBLbnJVaFFmZFFx?=
 =?utf-8?B?cE55blRSL2ZycmRITHI5MHRHUUs5Szh4UXZMdVdieDkwVUZkbHJjKysySjdK?=
 =?utf-8?B?OWQxcGNNamc3TG1ZR3F2YzVBSy9XM20wSGs5NzVCNGtBcFhkNnBiUGJOdVFO?=
 =?utf-8?B?dm42QW01eGFaRUUxMS9WbWo0OFcvcy9JSkdWV09nNzdTVHBsMlE4bE5KUkZD?=
 =?utf-8?B?cTYyRU82c2tqbmtVK2tkWXlOaDFnOEJnNlp5UElBM0dkODloS3RyRFZkK0hC?=
 =?utf-8?B?djIyNFBPcWpTdnpuSHorOXRQdithSGZEakJnUHg1VHNkUlA3RFkyMkpZdDJR?=
 =?utf-8?B?ZTAvYncvU2xNSTVZbDBoUkJyMmRvS2tQNHFoRkwxT0k0Z1BndGxOanlzUlln?=
 =?utf-8?B?NnRnWldVeTNqanIyTWJnMXBJK21vM0cxOHJOdnBJT2RUYVF5NURXWk56MGQ1?=
 =?utf-8?B?QnVhL0M0VzBSdHVMNE9sR1B1Sjd5WFBZOC9XSm53SXhYcjFPS1pkYVZxdm53?=
 =?utf-8?B?Z0hCb3dGdFlmekF5SEt2SjNjQXBXZHk5WjNYT3VjZzFlVXN4NzE1cktpM2VD?=
 =?utf-8?B?a1ZBTitublE5NTRPWUNyd09jZVgxL2x5Yyt2VEFPODZoL3JGNlNKK1pLQTl4?=
 =?utf-8?B?YWpzN2hwN0wwaUhpTC8zZ0owS1o5RXZjVGNXb0dGc0FHWlE5WGRLYWxNV0Fm?=
 =?utf-8?B?cmdyVmVMWFNmM1JNRzRTaDhlWnJDcVVBNlpZZ0U4K0JmR09YVE9uQTFrNkxy?=
 =?utf-8?B?OTliL3Z2Ym9HaWVGaXFlSEVOczRYQkViQ29DK0kvY3czbHlaV3hWcmIxZjJj?=
 =?utf-8?B?aDR0eVZIZ0NQVDNVaTcyWlpEcjNCODRMRTlkckM3T1g4ZWhQQnpDYTBKbS96?=
 =?utf-8?B?cGdNTU40UU50S1UxQ1pDUnJkSnVWM2xnUmhkOU5ZamduNUw1aFpHbjNZSE1o?=
 =?utf-8?B?akNhZ1grQXJPTmhxVk9mVm9DOHpLZExmelplWE1FcWkwQUhMUnBaNWdPdy9F?=
 =?utf-8?B?V0g2cVVZcG9nbnFiSFhNMGZERElvMTIwOFFrOS9obmNNL1ZXb01KRkROZEZV?=
 =?utf-8?B?NUVncWlTdS9WQmNXREFOalpZV0pDejQ5YnhGaDMzdUw2MHgyMjJtYmlaRFh6?=
 =?utf-8?B?Rzc5YUExd0xCRjBJbXh6YVY5MGtlM2I1OXNlU3lvaEhQV3UxbXlFTWtlLzRB?=
 =?utf-8?B?bUY4Zis4Sk1NOEtNUTUrbUN6cmkwRjlzaFhsSDF4Skx0blFYUG14VllPREwv?=
 =?utf-8?B?Y0ZaQmY4a0JOZXpsY0J6eXpCV2syNHdKeXFqZ25LZUhzRWxCcjRSajFuUVRh?=
 =?utf-8?B?UEdvOVBYTFNkdTVjNUpGenUvcm1LTjJuQWs5T2ZQWVlaY0xWdUFnOXJrTUdj?=
 =?utf-8?B?cHFHd2FpOStwanl5SXF4WW1zQVJob2tKZ3Q0WkNnaDdIeUlZcVZWcDVuVW5i?=
 =?utf-8?B?NEY4UnA3VlFKd2l2TVV4SFRrT0ZYdzZ4Tkx6bmNPTTdYOXNndnFwaHZzOUJI?=
 =?utf-8?Q?ZXEabNeGj0s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TG1qL2YzNk1DTmtTSmpENmJTVWpoejNuVEdyRkQyN1FUV1FsQmVMd1RJenlZ?=
 =?utf-8?B?cCtML3NqY3p3dWZDWnNWUiswT1V2Z1BjOXdxdFRJTm1wTDBNRDlWRmxIelo4?=
 =?utf-8?B?K1d5YnRHMS9RM2h2YldyQWtEU1dpVHV2Vlp1SmJ6LzFoY1EyYTJpRWdYQ0VN?=
 =?utf-8?B?bU9jd3h6OW00clFEbjdNYXRxL01GelJMeTllQzVVMEw1R1M1VVVIVnd1Mmcw?=
 =?utf-8?B?STFzL2Q3Q2dFaDl5cW1SRHlXTzJyeE1jYjNVSExqYVRzQlJRYmpSTGJzbzRM?=
 =?utf-8?B?YUs0Tm1QOWlOTExMd2pub1NLQTBMNWE1eVhKR2c2TkgyOGtHY2NUSk1qWGZx?=
 =?utf-8?B?NjBxekFSekMwS2gzNjZlOGo0NDdmWmNnL1kyaVBCQnVhTDREYmdxQ3F0citW?=
 =?utf-8?B?LytGQWV2ejI4Y0hNL1lQZGVtWW9lbWh4M1BKcVk4M1BZVGNlQlg2Uy85NWRH?=
 =?utf-8?B?WEtTY3h4MVI5RkNsS0FCb2EzNWk5ZnhPajJFVGx2OElsa2tScjk3RUxTTTNO?=
 =?utf-8?B?T1Q3dVlYVEtKYndaZzZiMjBoaGlyczNZVkxyc1pQNG13ZW45YytYaXZXWngy?=
 =?utf-8?B?cVdlVndCM2R4MkRUSzd0NjZVUldNdzh6Sm5uMjZEQm9WbTVoTDU2YnVzMlRq?=
 =?utf-8?B?c2dLQXhVK0xra0tPYVZaVUo3MmhDZktwMVNFOXhhSkMvRnFRVlZNd2xyR25U?=
 =?utf-8?B?eDhvbnhGNEpWN1AxbjJrWVlzc2JqeVlNMGJtSGxKakVjU0ZsQms5ZjBqb0ZL?=
 =?utf-8?B?VENWTkkwQTlENHNIeDZWenF3TGpZK04vdHR0L0VCVytiTkloaFMycUNxZnY1?=
 =?utf-8?B?RmRJU3EyaUxBOGg2dDdhWkVOdEt1NWJWQm5PcGhycWtyL0lBM3JhbzRxRE9n?=
 =?utf-8?B?UGVxUSs2dXR0V1pFaVo0TmJTQ0NqTktqbU1sWnlXQTFyQ0dZN1dESlFDUVM3?=
 =?utf-8?B?QVJQaFVyZjMzcCtzN1RBeXlNcHRlcm9YWEZtZmlsY01yTE44c1M0YjhMNWpi?=
 =?utf-8?B?bUtpVDhpdUtHWTRLVXlKOXk1SmM3aUgxVjZDdzZ2Q2ViaVhuOTJMdGx5aWU2?=
 =?utf-8?B?cGUyb08vRlVvQVBRRDdVZ3c0K09YR3BwbzhtS3YxeHhkV1B6dkhCRnAwWmtp?=
 =?utf-8?B?Rkd0ZlRTdzVuQVBidG5ONFlnMzI2eGVLcVlCNEJ4YXFlSVJXTVNQalptUXhv?=
 =?utf-8?B?NndJNzQybGNMb2JXMUlBUTV2U0VaT0RCUkEyVGI2S2VXUW5wanpjYTYzUmk5?=
 =?utf-8?B?RkE3cHl2QjdBSlRlWnlvWDlzUzZmcUhRVU9HRnN3Z3pZSTdUc1dsS3VlYnUy?=
 =?utf-8?B?a0pUWkJtNW81QnZBaWdwR1c0MTRMZ2RWdmxFeG9oaUFhVk5JMTRLTnJ4Nm1z?=
 =?utf-8?B?ZDRKbmxJMHFBNVVDYkl0OW8vSnY4TmhEc01sUnA5V0VUK0NreFZYQkJjbSti?=
 =?utf-8?B?M25oOGRQck81cExXQVh1M21tKzlRNDluNG5sSGtKRzdMOFFxOTFwdFkvck4v?=
 =?utf-8?B?WTZkakl4TkwrMHlhNkljMzN4SHBUVm81SUlZb2x3SWRqU1ZiWGd5M1R2cjhB?=
 =?utf-8?B?aW5LYzJxVVRKR2pzZnJiNTRoTUZqQnhxbzBEV2dmWHd4V0tFYnBuK0Uwcmdh?=
 =?utf-8?B?TzBjL1lxREl0bXBoR3pJV2p6Y1hKRDNIcWdjRXd5bjAyb0FvT2VkSitROU0y?=
 =?utf-8?B?Uk9QOGdkUU0zSndQN09IWjZGS29TaGlvMVhTdEFDaGdWakZUSlI0OUpOc1Vz?=
 =?utf-8?B?V0R4bk1ub3RPUGc5QTUxeDY0cmI1K1BCTmtzMnhoSjVzblpQYzA2Y0pHMFA0?=
 =?utf-8?B?bjlIVFE0KzR5OXA2RUJBVnFYbFZoY28zb2Q2Qlphb204aWZTbzFkN2RINitK?=
 =?utf-8?B?YWhMcFdFdGRjVy9Zemk3YnZZV3grcldLZFMrdzduYzlDQnNDVW04WWQ5ZTlT?=
 =?utf-8?B?cHY1Tk1hZ3JIbXM5WGNQNXk1T3BhOGNrUGx2a2E5QzVrcmhUTEp3NWI3Ymd2?=
 =?utf-8?B?cjluWVNZSGxTS0xvdlNqbmZZc0pHNDdKK0UxdUJwZ0JGcm9DcmI1amczbVJO?=
 =?utf-8?B?dE03ek5kQ0FyYzd1bzYwUFBxSVd1VkJpR21PMEZrNXkyRzhOTFpEVVUyT0Vl?=
 =?utf-8?B?dk94U1RkVGlZdzN3UUsrZjRGRVhEREtQS0tVMGxHYnc4cnJCbnpaZ0RNZjIx?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eb09846-a82a-48a0-d809-08ddd41df319
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 12:45:25.6418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b/wwO+LxIOWvsJ87yEu45Mb3CiMX7uHDKj2evtk61I5z2VCTQn3nGy/1AHLMh9PlOluanG62HL/GHLhcUbAma3EBwhgMb+cpBJbCLhzLh/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8463
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

> On Tue, 05 Aug 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> > wait_for_freq() allows timeout_ms to be negative to pass it down
> > to msecs_to_jiffies(). If the argument to the latter function is
> > indeed negative, then MAX_JIFFY_OFFSET is returned from it.
> >
> > However, later in the wait_for_freq()'s "do while" loop,
> > "timeout_ms" is used to calculate a new value for "sleep", which
> > is a plain integer. While "sleep" being negative does not lead
> > to erroneous behavior, as the "sleep" is cast to unsigned type
> > in usleep_range(), it does not seem intentional.
> >
> > Change the type of "sleep" variable to unsigned and ensure it
> > does not use "timeout_ms", when it is a negative value in the
> > calculations.
> 
> That's an elaborate explanation for a case that never
> occurs. wait_for_freq() is used in three places with fixed timeout
> values.
Which means that whoever decides to pass a negative value here
in the future will be met with an unpleasant surprise when
looking at sleep values, because we never validate the input to
this function.
> 
> What's the real reason for the change?
Do you imply something was obscured?

This patch is supposed to try and fix mishandling of int type
variable, which represents time to sleep. Time should not be
represented by a negative value, unless we are going back in
time. Hence, the change to unsigned and additional check on
timeout_ms.

-- 
Best Regards,
Krzysztof
