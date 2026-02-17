Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGWBALJelGnODAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 13:27:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BEB14BED6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 13:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282DE10E4D0;
	Tue, 17 Feb 2026 12:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZYGmHNt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EBB810E4CF;
 Tue, 17 Feb 2026 12:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771331245; x=1802867245;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tDUbJzhpSAl6OK3uVCvFuBlhcWer/BcuLlsqqernxdY=;
 b=aZYGmHNtcwuf6h1pFe6njNuNB2/daEzh9guENy0/AGyp4iRcdPADDjKY
 RBvwYHFZavFegMyozFxOvrq8dZkdTD9TQG1jHe4fNZhr76s2wfFPI9cc8
 wzuBm+gTe3ulCYX22ZRNbXrR2EyvNx0y4RM4kV58i56KeYGtH5/BFx19o
 AcLqcCuJIK6xY2SANTb1vmFD/Bx8DCXuSzWjFhoNlyxiylwIOS1u4R3j0
 su4TQPIPrAk1cSL5r8e+DBpAPpnN88SQziSGo4E5OdEAQYrneD6Qu8Suz
 AESaTUQu1k0a3c3TRGNzVuYDRls8ALF+rAyRlh3m+ZdY4+xKUH2u/e4z5 w==;
X-CSE-ConnectionGUID: X3YYEwW0RvenCW2oVgGVkQ==
X-CSE-MsgGUID: OGGXp9LyS+OlICKf3c0VhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="74996724"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="74996724"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 04:27:25 -0800
X-CSE-ConnectionGUID: zU6pxIiASVudliPBEFiiXQ==
X-CSE-MsgGUID: U0KFoz+PTuuJpJHvtget2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="218398169"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 04:27:24 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 04:27:24 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 04:27:24 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.69)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 04:27:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=toWr23mvxT2DS7wfAlQUqNeJR6a+bCRq+awAQM1qdouchXtjBXyg19VhQLBtQ+PKG1j+tWSy/YRHmjC4mCNZ+bUkOiG0Dn7DtuuDbrLtfdk4d/gvbr3H1gvPao78qyIDESS2Cs6GdCrp8xHXp/leYjdevg9rvogpEs8M1alp6ANIODF8F/VKXhvELB4t07cWmCYXmMI+bVklGQOvaZy3Hdutf5gUFD46uWN1BhlXQtYZ8fDLxTzk7OnaM2G7iLmL6ArC12+YRBj9dSIC+nOVCFtoiCLHDPUJhUBbp3uW4h938mtgw8dArAU0gncL7DjEX1/pJaoZrS4cfA7lTZnRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFeVhzeYYqfa3Ulm/021CgesPUxs/eegdL10P520AnU=;
 b=uh14wMHmVLR62v30b/Rx6rAh6SVQar9ULkxXl1rme7SjEaAAcKzAxiXgA8cXf+O41REqmUlJpN2KYX7yPibl4LAHZtCQp7EUIlIQYaiAcsLXOaqxk9J7EtRorTClGVGXNctSYolJqRDS4mc2bcLu1Qs0YDeZFUUXWwCmSAdHXU/Z5iFQ1eVhQWjZM4BqCTNZXypH+/2RnD46VmbKNmm/Q1Ahbto1pCjGe/TCJ7eLTihX4u/Zbw2ULp33BvtxhC+kix/F0YsDjqGjl2Kmwz/r3/6X6twpjxd5mgjQpU0z3DUth6doRwXENuqtNovYzuSC+bFYkYhHjhYVyM6VDZ51PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4756.namprd11.prod.outlook.com (2603:10b6:5:2a7::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 12:27:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 12:27:17 +0000
Message-ID: <021a1f3d-d1a9-43a3-8ebf-84c312b21527@intel.com>
Date: Tue, 17 Feb 2026 17:57:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/dp_mst: Allow modes requiring compression
 for DSC passthrough
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260216070421.714884-1-imre.deak@intel.com>
 <20260216070421.714884-5-imre.deak@intel.com>
 <9961da24-68c6-4633-846e-7b059b45858c@intel.com>
 <aZQt5Oo7xsRCM7CX@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aZQt5Oo7xsRCM7CX@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4756:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e6ceaa6-ce41-4521-f326-08de6e1fe288
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cThxT2FxRTNrYWFoZ1oxZnlJVUI2NU1JcFBTaC9XTnlLczk5NjJNZG5FTU9V?=
 =?utf-8?B?UDN3ZnpMTGRKU3hDaHBzTjdBVWEvRlJVcXZQZEM2clRVY1AyUU5ocXBKaGZ4?=
 =?utf-8?B?ejZFZGVZVFVEbUZZa1dMVlJSU2J3ZjB4cUpUVGRka1hETUszc0JEcGR2VXJO?=
 =?utf-8?B?WndkdFhWbGY5ZFRraTE5ODAvcEFvQ1U4dFZSVVlYUTQyandzeXU3OEZqVE90?=
 =?utf-8?B?dVMyWGFDWlJxVzlQMklhNUV1b2tTQk9HbUE1azdiTFRlZ21DRzh1Vmx4blFz?=
 =?utf-8?B?WUVEL0xWM2tpSEQzZERsQWNuTUhrWnlpOGRwcmJPeFkxWmJjWTM3TXR2SHd3?=
 =?utf-8?B?YU5JeUplVVRzeFVHT1M5R2VDeEZWQStlZ2Nqa2FuckRzblpaajhkeTdRcmlB?=
 =?utf-8?B?QmlXTDB6a1g1MWRVbzhMKytUU0ZhZVc1OGdqcHR4cXlPTVpudG4ydDgvZEtK?=
 =?utf-8?B?NStsdWxuc0p4YXgxMHRJcDJpYi9oSXRNanM1QndiTFloUFN2NFQ0RU50aWxS?=
 =?utf-8?B?b2tCTUpKMWYwVVpkVEY5WWxlNkl6WkdOcUQ1Yy9DYk9YTXNzcDcvcHlWaFQx?=
 =?utf-8?B?TWdDSEpjd3lkbWRBU2NUWHN6SmYrUUJpTnk3a1o3alE0RWVDM3RwdkZva3l4?=
 =?utf-8?B?N29kTTB6NzdiMG1nemFNMnFLQ0tKcGhYYTFSOWxycjFsZmQvMm9PandyWDJ0?=
 =?utf-8?B?VUZTVGdPK2QzbTFMaXh0c0hyc0g0bURaRFh0L1dhd1lSdGxRd2JkOThFeUFn?=
 =?utf-8?B?QWs3WThySUdtTVVjNzZONTRpay9PSnBEdHE5YjRyZUsrc0xnMHk2dk42Tm9Y?=
 =?utf-8?B?cUhvUENXZExZMWxCcG9SV1FBOVEvR2pNS1FyM2JSNTZtaFBQOUxvQitUZUhL?=
 =?utf-8?B?Q3JDMEozdVFQRlhGdm9iaWNxakFpTTZOY0I0RTI5TGJ3N2cwb0Z2MVpqQ0tv?=
 =?utf-8?B?eXpIeXJTSzYzaW9BSkh0S2NqTnBnTGc4UkUraDNucDFNdFdNeG84V2kxbEJi?=
 =?utf-8?B?VGZUb0wzRHlDVlQzNS8vZ01KS3VMMndjejJhRFI2T1hXRUdUamNVL0tJcDNL?=
 =?utf-8?B?UnpLU0hWWm5oY1ZsT3FieUkwdWd4blRGbDQ3ZnNkTlFWSGNzclRVNkN3MFZP?=
 =?utf-8?B?Y1liWkppZE9kdXFQYThld0w5U2dpSEF2Tk8zYkk2UWhLZWR3dnM1K0JkdXhN?=
 =?utf-8?B?STc5VnRMSTFRUGltTDVyN3BNZWhUT2lDUkFYMVhNOXZ3dXFMWnVNc09LbE5M?=
 =?utf-8?B?dHNhK00zZFhxSVVYSlhCQjkwRGczVlFORUZUUnNQdUx4c25XTXBIZG4ySnBr?=
 =?utf-8?B?VStyc21PQTc4eno1a0treUx1R0lTVXM3a1YxZW5QSUZIMjdScUwvNml4cHQx?=
 =?utf-8?B?dkRUc3pjWi84UUhwM0RIOTVNVkVBQmhmMmFTMFVPdXRyTGthbitzZW1MRS9G?=
 =?utf-8?B?NEswVjVJNk5YZkMyaktyZ1pSRkVyaU9DeDVSOGFTd3NFNnJsbC94aWVFUndK?=
 =?utf-8?B?Y3Q3T0xwZW5PTU53VEVnSkxENFFpWHVuL081ckhURFIyMXFqTlhkYTRXcG5I?=
 =?utf-8?B?UmdsZDJsVEZjUkMva3ZzejAwblM4L241N2pTYnNpVklRaGo1cVBVTHl1QW1i?=
 =?utf-8?B?ZkhQcVNia3VwWnhHMFlNNXBBL3VPYkdDdFlLMThLRFVUTUNzd2YvNTEzRjdG?=
 =?utf-8?B?WEYxbWlJb2NtQkpXZ243aktuUmNZZEl3cHp6RWMvV0ErVUZuSFdBMjR2UU5M?=
 =?utf-8?B?bTlTTytuV1AzRWFyWE1sak5HSm9tVEhwNHZOSThNNlp0djBRenhGUmdUcWZR?=
 =?utf-8?B?RjAwN0RYajMvUFJuREt0TnU5RXhOVGQ3NzhEcEJiQzM3R2J4QitnaEg3eGd5?=
 =?utf-8?B?bGF5UFZBV2k2TEhubU56UVhLNFpPcU1lcXRiNmFjQXUraFk1ZU1POWtKekdv?=
 =?utf-8?B?aVhGOXBmWGNpVG1EeG9md09LQ3hkZG1aTnFnSW5lV1pyczVod2VwVVh0dEQ3?=
 =?utf-8?B?OXlOLzJ1bXpXMFV3dm4xNDNURzQyeURhRi9aNDI5eFAxQ0paS0h6Y0VZTlRM?=
 =?utf-8?Q?BzHLnL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmRHNVNSTzBuSkZiQTkwOGFMTEhSRUVENGVuTURRL0dIR1dIdTJiTDJhcUVu?=
 =?utf-8?B?eTBNem1yOUpUc29DZWZ3UEZqdmp5U0toOXozMEVaT3ZnQWhQeDU4L01yYjRi?=
 =?utf-8?B?OC8zdnhBV0x3NnlZblVSTEI4OG5Ebmt2THdNcHRwbk8zc1IwUzdLUEl3eFBo?=
 =?utf-8?B?ZHJjbkxrRlkvZXY3aWZJRjFpZ2E2bkVCd0loUDRKMGs1Wk5nTzB3WmVJenk1?=
 =?utf-8?B?ZHRnaXNqWFJSNXVPZk9CQ0xtV0hTbFhZNHdRNERIZm9hYm5oOTYxUS9CLzFQ?=
 =?utf-8?B?eS9XaWl2dG5ZWittTEVLQjc3NDEvcGlmNTBqTDBrUU43aG9kTkdzSHdYUFRO?=
 =?utf-8?B?QXF0bWhBakFnaEl0UzRBRjE5YVJhZCtoYzZMQXU0YWV1QVZDUmw3cDR6MnNt?=
 =?utf-8?B?bWhvVUdlaGNPNVo4SHF5cmVSU3BnNWdmaUliMHRCTzBVYUhPM1RpYmRLclZl?=
 =?utf-8?B?cEJFbmFCdUVoZVN3L2RWd011N0xPMFhJWUNWbDlpREtaYTdUK3dPQWZoNFJC?=
 =?utf-8?B?eXFQK2doUVE3RE9tVytublZBcjlVek45V3U5MmQrbnJIRmtVN09FYTNFMng0?=
 =?utf-8?B?M2xqbDZlMkY5MEUwZ0ZTY21pQnpSYUo1cEpBenk1OUlrTEFRc2dtdkUxakpa?=
 =?utf-8?B?ME1QQk5yS3FSSEpSNzNrWmhlN3dPU1R6V29iN05GL0RYY3Z0Q1Y2R1hNQTlQ?=
 =?utf-8?B?SHpneFArMzhOZmxvNmp1T0lpU1g4RlhQK2ZlekZuZ254Ykg3T1hHdEx4d0U5?=
 =?utf-8?B?UEpwaHVvV1A5UkVkclV2MEVoUFhncVRhZFc2VFpDTmtQN3VSS1U1ZERZQjNE?=
 =?utf-8?B?N1BKWUNRRW82YmRjYVpiWXFTeWpmRzJwY2VkK3BUUU16ODY0T1ZvS0RHSlBz?=
 =?utf-8?B?bFBzZk5aRVF4ejY5THRKcXFrNE9oMGVWaEhiUC9iczhMWUQwQ2VtV2dnTXlO?=
 =?utf-8?B?NFlHMEpMc2YrN01NS0ZrZjBTeWlWOE9mN3ptYWxreTdWOVdDc3RKZ3NjVlkr?=
 =?utf-8?B?S2trWFU0dXJ0VFNoZ0VMY0UyS29iVlZKazFRVFA4c1duSXdXMlVkVG02VG96?=
 =?utf-8?B?cEtPcGlybi92YkFuQzdyT2ZTVUNFSysralgzZitiTFR4QkZzMDI3cHlVQi9P?=
 =?utf-8?B?cmM3SEY4R1dmcEp4Z0hXUVhEYk9reUk2WXdIREltdXhmMk1oUXJKOEd6UVhk?=
 =?utf-8?B?VG96Y3ZZb1VjSWhrbHVXWmtkeDFldDN1bXgwYzY0SmxHRXkyY3hBM0owT1Bv?=
 =?utf-8?B?OFpTU3d1WVo2YXQ5bC9Pb0VjeXhjYmhmTE1LSTJWYXZwdldZbEwzTmFzZEZP?=
 =?utf-8?B?Nm5JZ2NocVBJTTZvQW56ZExhVnI1eGEzeExYVEloaDRHTXdwbHlGQVd0alpJ?=
 =?utf-8?B?NzZma00zNzZLN0tNS3RVSW9iWk9mK2JmQnNkRnJOZlFQa2szYnp4RzZTYkdq?=
 =?utf-8?B?VnB3UklTL0pUZE8zbGNFZXk5NUsybC81ZUdaOStqRTROVjhheG9TUjhVQzB0?=
 =?utf-8?B?aFB1eEtDbVVtckpSeHozUmhxZWVrd1hMN3lmN1JSbDVSU3U1cERWLzFMUzdL?=
 =?utf-8?B?YkFOdDVPb1p2b2JJcGYrK1JHRnoxZFJheTF0U0ZRVzhrVDEyYlFsV3lrNHRB?=
 =?utf-8?B?Y1RFekI0MGpneWJwUXB5b3dXSnNDVzBhUUQwTzVmcTM4a0NpY3dtRVRNSjIr?=
 =?utf-8?B?QmQ5V1pjQmMwSXN2VHhLbE53OVdYQ1VvcUpxNDBNamxQalJLcU1jYXg0VzBQ?=
 =?utf-8?B?a2NQN1UwZzN5ZVlQUDZTd3hCRVVrMExxNyt2OU4xNEo3MWZaWEJuZnorcHBC?=
 =?utf-8?B?aVZXM1ZjWG00OU5tVmp2bXZiYmI0Y3dNWWVnTWlQTE8xZW5uNHFFRHVCYXFL?=
 =?utf-8?B?ekUxRHptZ1JDVHBXK3l3R1UramJWUkM2b2V4QS9ha2FVT0k3S2UrbGNzMnZz?=
 =?utf-8?B?SzdtVkJXM2ZNbmhCakNsRDIyd3hBVUgvdE81NkIxOHdDZjF1a3ZzMzlFMUd3?=
 =?utf-8?B?QWtxOWJyT09UVjllZXQwVXVPajkrZ09QejdHSEZwY3h4dHJITVlhZ001ckZP?=
 =?utf-8?B?cW5wU1M1N3dwMExYenB5clg1cmZSMW5hN0d6bklPcjNVVGhMZGVtVTNpc0Q0?=
 =?utf-8?B?RS9nZkdualcxUE1JMmdHYm1BUHJSRWhkYTZnZzloTy9jSDJ6NU9kOVFUeFpM?=
 =?utf-8?B?TTl4ZFRxOThvYVc0SWs3REZQNkVsbnQ5TUpqS0t2Z2l5dFk2cnZEQXY2a1RZ?=
 =?utf-8?B?V2xkYU5yZjdNeHpnMXZkaDMyT0ZLOTVYandVT0k5dk1xWU5oNThGKzFEQzNG?=
 =?utf-8?B?aldwS3BYSzRnUzU1V3Z0YVZEejRHQ0hXZkdPV1IzS1hHZituRDNvNXhUUHpI?=
 =?utf-8?Q?/GP0YUFl5s0j7DPo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e6ceaa6-ce41-4521-f326-08de6e1fe288
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 12:27:17.3728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iWdK+Y/f2Hdw4EhKni+QdokJQn6l3aJDPG6bJ7rV812SRmyEM1OG72bvEUm/b5trC5qWBbxEm7zpSolOO7GBhuupMQ06Zd1IhKrB/Z1JgNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4756
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 54BEB14BED6
X-Rspamd-Action: no action


On 2/17/2026 2:29 PM, Imre Deak wrote:
> On Tue, Feb 17, 2026 at 10:23:51AM +0530, Ankit K Nautiyal wrote:
>> On 2/16/2026 12:34 PM, Imre Deak wrote:
>>> The DSC passthrough mode allows a compressed stream to be forwarded
>>> to the sink instead of being decompressed at the last MST branch
>>> device, provided that the branch device supports passthrough and
>>> the sink supports decompression. This enables modes that would not
>>> be possible without compression, as the bandwidth required for the
>>> uncompressed stream exceeds what is available on the full MST path
>>> from source to sink.
>>>
>>> Currently, MST mode validation assumes the stream is uncompressed
>>> and uses the corresponding uncompressed minimum link BPP for
>>> bandwidth calculation. Use the minimum compressed link BPP instead
>>> when DSC passthrough is available to enable the modes described
>>> above.
>>>
>>> The non-passthrough DSC mode, where the last MST branch device
>>> decompresses the stream, may also allow enabling additional modes.
>>> This would require determining the link bandwidth between the last
>>> branch device and the sink based on the
>>> DFP_Link_Available_Payload_Bandwidth_Number reported by the branch
>>> device for the sink via the ENUM_PATH_RESOURCES MST message.
>>> Supporting this is left for a follow-up for the following reasons:
>>>
>>> 1. DFP Link Available PBN reporting is not supported by any of the
>>>      available MST devices used for testing.
>>> 2. Non-passthrough mode would enable additional modes only if the link
>>>      bandwidth between the last branch device and the sink exceeded that
>>>      of the full MST path. Unless multiple MST devices are used, or link
>>>      training forces a reduced bandwidth between the source and the first
>>>      branch device, both rare cases, this is unlikely.
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4332
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>
>> Makes sense to leave the non-passthrough mode for follow up.
>>
>> Perhaps our kms_linktrain_fallback can be tweaked to test DSC
>> non-passthrough and passthrough modes.
> Yes, it's a good idea to test whether, with a reduced link rate / lane
> count, modes that did not need compression with the original link
> configuration continue to be enumerated/enabled correctly when switching
> to DSC.
>
> I don't think this should be part of the LT fallback test; it could
> instead be a separate DSC test by just forcing a lower link rate / lane
> count there.

Agreed. Can use the same debugfs and have test in kms_dsc.


>
>> Not directly related but perhaps still on the topic: currently we are not
>> exposing dsc related debugfs for MST connectors.
>>
>> With the recent changes and checks for intel_dp->force_dsc_en in place for
>> MST, can we start exposing the dsc related debugfs' for MST too?
> MST connectors, and in general the whole DSC debugfs interface, need
> some changes. Adding a way to control the passthrough / non-passthrough
> mode (probably just a disable_passthrough connector debugfs entry)
> should be added as well. I have some changes for this and plan to follow
> up with them.

Hmm. Alright, will check that out.

Regards,

Ankit


>> (Though, there are still things which cannot be tested on MST - BPC tests,
>> output format etc.)
>>
>> In any case the changes look good to me.
>>
>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com
> Thanks.
>
>> Regards,
>>
>> Ankit
>>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 ++++++++++++++++--
>>>    1 file changed, 16 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 7ca2e2245fc70..f833f47643271 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -1467,6 +1467,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>>>    	unsigned long bw_overhead_flags =
>>>    		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
>>>    	int min_link_bpp_x16 = fxp_q4_from_int(18);
>>> +	static bool supports_dsc;
>>>    	int ret;
>>>    	bool dsc = false;
>>>    	int target_clock = mode->clock;
>>> @@ -1491,6 +1492,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>>>    		return 0;
>>>    	}
>>> +	supports_dsc = intel_dp_has_dsc(connector) &&
>>> +		       drm_dp_sink_supports_fec(connector->dp.fec_capability);
>>> +
>>> +	if (supports_dsc && connector->mst.port->passthrough_aux)
>>> +		min_link_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
>>> +									   INTEL_OUTPUT_FORMAT_RGB);
>>> +
>>>    	max_link_clock = intel_dp_max_link_rate(intel_dp);
>>>    	max_lanes = intel_dp_max_lane_count(intel_dp);
>>> @@ -1504,6 +1512,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>>>    	/*
>>>    	 * TODO:
>>>    	 * - Also check if compression would allow for the mode
>>> +	 *   in non-passthrough mode, i.e. the last branch device
>>> +	 *   decompressing the stream. This makes a difference only if
>>> +	 *   the BW on the link between the last branch device and the
>>> +	 *   sink is higher than the BW on the whole MST path from the
>>> +	 *   source to the last branch device. Relying on the extra BW
>>> +	 *   this provides also requires the
>>> +	 *   DFP_Link_Available_Payload_Bandwidth_Number described below.
>>>    	 * - Calculate the overhead using drm_dp_bw_overhead() /
>>>    	 *   drm_dp_bw_channel_coding_efficiency(), similarly to the
>>>    	 *   compute config code, as drm_dp_calc_pbn_mode() doesn't
>>> @@ -1527,8 +1542,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>>>    	for_each_joiner_candidate(connector, mode, num_joined_pipes) {
>>>    		int dsc_slice_count = 0;
>>> -		if (intel_dp_has_dsc(connector) &&
>>> -		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>> +		if (supports_dsc) {
>>>    			/*
>>>    			 * TBD pass the connector BPC,
>>>    			 * for now U8_MAX so that max BPC on that platform would be picked
