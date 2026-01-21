Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOZ3BoSOcGkaYgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 09:29:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B5C53941
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 09:29:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6D810E6E4;
	Wed, 21 Jan 2026 08:29:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZREPjqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FF510E1A8;
 Wed, 21 Jan 2026 08:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768984191; x=1800520191;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hYMPz0h1V2grDWkNmaGTRkyoTBokE3fcl2FKAcMk+nk=;
 b=iZREPjqu+SbEKMMcmHGydUgwlKLWkw/nO9frLH/KjtNrUyMthmeSoCVo
 9814ktxpbPiakVyc22QJStr/A2Xm04PEtJPDS64+37JXcgkG4/mV7bgzt
 Odv0jTTIf6VAQJqtmOG07AzMJv5IiKgokaMOpYqnX31cePKKuAZqiIQCk
 lfR5W7gB1kRweYOg8K3iGquEkH9oT7Dn6zvPmr+Vrpeon7Ax4iswSovDO
 68X/grGq7TpcMcl+YqPglYR2RrM1LWSZ5Lud0ANV6RJUY9UQXy+vBySph
 n/tvF+1HXG3Gze+0tbRbIU8CdyAfeIRfLyFcu6DVrvobq7i/6jPhWPYmA w==;
X-CSE-ConnectionGUID: WzvKNZeGTGqjg9WR6MHBtQ==
X-CSE-MsgGUID: j9ygVOB1ThaN52FG19BiyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70118293"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70118293"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 00:29:51 -0800
X-CSE-ConnectionGUID: v1kJWuoGSv2ieYBXwfD0kg==
X-CSE-MsgGUID: F2TBADB9TeO4bK7TCHFxqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="237056367"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 00:29:51 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 00:29:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 00:29:49 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 00:29:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NM4yUykSsMz6AoghyUobuHQhf7syw+BUcRAOmTMgvsTiJoNwtE7/y1Su/+4SUjUu2/BkgPpmrxsStfU7W6mc+wJPlGni1XpjBqy4DDsIuX6yBuZ8P6grmbdXsYWaIfho/NP2aXrrY+pep6SCIf/jgMgM+iUGJijSLTA6Xk3K82H0fcno2/BLhpzTJyBFHDSVic6Mphe2OsUDwdHnFEx6XTyBupauaJEZ7kUD6r92E0F+3oge+1/oxI+PX7lelo8TXmcxkC0e3ssafRgQpqMTtlSLlYMZX2WNGvXYNPCC6RO3yr9sJRlIG8Z1jniJ/jikZhuQRHjeubBdnsb23xx7vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SCCqCIIpoCQftVP7fA42tPTUjx8bdJTqveQQbgSEnFA=;
 b=xLUlh0xGgpMzUCnPv6a0CUfdDOX7pe77OfWu8T0jQ/z1OOtzhWmLpS4acet/a0cyXCmkFRU8kPd9y7/TMg5q0U3MWJcQ/pNcc0tfqbIXKEHdhLssVeOiOgra7ahtD+lNvG2uUtCYyK6Y+GVXcdWL+IU2d3rTjQcjC01tYklXlBC4/2Q01iMEZS1NbzHG2GBtnKXmENH2uVqC1xIm5G/hV35XsLZj0TSFhPMmt6L0HL/UaRxCGPW99og9+dJSfKGTXZKck3WKnA4cTH5lhOb7Rt2viuK7C7YPc76cMO4xEH0Ik2vg3CaPSfU5H3EWz2uYyGVHMhn4EMMjMrWR7XnyrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB6620.namprd11.prod.outlook.com (2603:10b6:303:1ea::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.13; Wed, 21 Jan
 2026 08:29:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:29:47 +0000
Message-ID: <89de03a5-e5da-4d2e-8547-8e54ad73b324@intel.com>
Date: Wed, 21 Jan 2026 13:59:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20260115)
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: <hansg@kernel.org>, "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <linux-rt-devel@lists.linux.dev>, <sfr@canb.auug.org.au>,
 <ilpo.jarvinen@linux.intel.com>, <regressions@leemhuis.info>
References: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
 <20260121075348.5MyqcHFB@linutronix.de>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260121075348.5MyqcHFB@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|MW4PR11MB6620:EE_
X-MS-Office365-Filtering-Correlation-Id: f1a57af4-8671-4b98-420d-08de58c73c8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bCtJRGd1cXNyWDdQUWRZYWVVRkhuVUQ3S2VUd3FtUlNnaDNWSzNXOU9CWFVs?=
 =?utf-8?B?eVlJSlhpYUE4NjByRG42UW8wa2FKRWhySm5vZENTV3RQWFYwbEV0Yk5CVm9L?=
 =?utf-8?B?ZHZXZStFUTdpZVVrd0JGY2tMVytlbFhSSlpLLzlBU0NZWDNicFYwRDNvTUwz?=
 =?utf-8?B?R002WUdnTmpUYms1WE1pb1pISnJGUVFta2hkZkdBVExxbXJUVXkyRGlVS3Zj?=
 =?utf-8?B?YW9TZVNzMnlxaUF2aU90NjRHVWJZR3dGN3pZM3dWeTljaHZOaXdILzB1KzZG?=
 =?utf-8?B?UkJPL2M5MGtJK3ZrWU5nZXZ4V1VZMDRiTDM3SEpUTVJjbHY1VWpMRGVLYlNU?=
 =?utf-8?B?Mk5FYXdDaWJFMG41UitDb1hMOHJIQ1A2QUJCcDlOaEtHcnFWTEhlY29NaXR3?=
 =?utf-8?B?ajVyaUtFS3l3Z2FLdkM2MDZJN1Z0K1ZZaVVUdmdHdVJnRHVxRlI2Q0VQUUZv?=
 =?utf-8?B?TTBaL0tkRnczRHVwN2x3cGYvUWpjMGRnZEFtOXl5NE5zVkJGTm1Ia2FjV3FG?=
 =?utf-8?B?UXNvbEFtV2t5VEFuWm8zdHpucHM4OFhETS9raVhQeXpoWXAvcVNIODVIY0JN?=
 =?utf-8?B?dmJqMGZoT3ZYRDhSZDUyaU50dzRCcGdRaVZtaVVlbWtWQVI4V0Z2cHNNcFBr?=
 =?utf-8?B?cjJSd2hzTjJWWXFxYkNrRGsvVW9GbW9SMGsyOFhpV2ZxYlN1SHpmZkE3MUhk?=
 =?utf-8?B?SFpGeVV2aU53K0t2OGMvUm5pZlJOd2lkYXhTVEt0YVhleGtqZVNpeXpWcUhW?=
 =?utf-8?B?VWdEdU42S0pxV0FjUjRCV1lIRGRHVDQwblFQQnEwRTZ6WmRtelUzYktnaEN0?=
 =?utf-8?B?VmJ5VWlxNWh6VjV5LytObVp0cDUrSVNhNUMyZml0eDNsUWVodS9DbzFBRDVv?=
 =?utf-8?B?bDBSTmlHS2dsa0xiQVhJWmNsMGl4c0txT1gzUUZNTGZEcU9ZSlJ4djRFSkVv?=
 =?utf-8?B?MUMvN01RUFQzeC82L0tUdzQyUFhkSUYwVGxPeEhwUU0rRERqc2haVzV0QU9t?=
 =?utf-8?B?bmtsSHpPWXgrM2lGRWpSTFQvQVZjN3laT3FmTXlJVGwydWdoN2FZVnRSaDVi?=
 =?utf-8?B?SzRQYW9CbVMvVGxXclNNQ0d3aXc1b2JRS2V2UDJEL3gxNm5icG5NZHNKVzdu?=
 =?utf-8?B?VnBJYWZ0dzRSRzU5VmdoeG14VHgzUWtrY2JweW55MFNYa0hDNHcrc2ZuUGh2?=
 =?utf-8?B?Z1FNWFI0a1J3UUE2bDdCOWdkMXB2eVkwSGUrNDIzZHc2aGhXQ01EaVY3Mkk1?=
 =?utf-8?B?R21ZZnFFMkRKODZ1YVY5U1RqREl1dHRvUG5Fb1p2cXVBblVzck43SXZLVHhX?=
 =?utf-8?B?RnY4RW1vRUJyNVIrMkVXeHdtMWNMZURGZlBKendMT3FNTGhaRERYdHMyeEJD?=
 =?utf-8?B?K2NEeVVaR1hFSTdvTm5UQUxxRWE3b2F6eW9sSjNwSFF6eXhZM1JySmVNckU0?=
 =?utf-8?B?STZBamRFd0tVQTc0RVIwSzNyR3VXTmdWVDhXSDc1UWowakV1bWVPakRzRmZy?=
 =?utf-8?B?MTg5UlBMRCtGd2J1VWt6bkVVUll4U280UzMyaXJGT2p3aFZweUM2RW91Wm5N?=
 =?utf-8?B?Y2QyREl3UWRjcHNvYlRpeGhvN2NlNDVIV3hlSzhTeUdZNmFtOVo0b2tzSWND?=
 =?utf-8?B?ZW1zR0I0YlVndHRKT1RVb2VvSm93TjZnR0Zpckk3ZDdaOFRhYnFIMDB5aTlk?=
 =?utf-8?B?M2Y1YkkvM0Q4V0xCYmRhZ0E3VEowQXlBRUI4azlrLytsYW02N3BSQzVqWlhI?=
 =?utf-8?B?STUyelJtOTNaL3p1RURYWGE1RGp6ME0zLzQ3QVlRMUhSWFhENWV0UzVDS3hZ?=
 =?utf-8?B?b2JHOVNtc3U5eDlNVzdFY1JockEzaGszR2VQMld1V3ZQT1ErK2VhTnpSdlQr?=
 =?utf-8?B?Ylh4NmFBSXV0NGdoQTVvVC82bmlKWjhQZ0lVZ0FIczVPT3QzRUUrK3ZWeGdq?=
 =?utf-8?B?OTR0ZE1aWDZkQWJrTGd6Y1RrV2FuZlNLaXh3QURNZ0ZuYWtFQ01LblMzUW84?=
 =?utf-8?B?aWZvcTdib1ZQRmpUOFRYbWowZHMwMzhVQXJIRkJOOTBnTS9GT09CZG9MQnd6?=
 =?utf-8?B?dGpaZVUrdFB1Ri90NzQ2Zm04RnRhV3dtaG5pWDFQV2RaLzB6Y3R2NE9iTVBH?=
 =?utf-8?Q?+FOY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmxZMnJ0dS94UkI1RG1WVFI3VVFFWXJHeFpKOVFMU1ZjeWZicnUyQVM4Znpt?=
 =?utf-8?B?bUVkVGdOSkc5UWRXaGVkYXRkc1ZHMUs0ZjN6RGdKa3hxRmZSODFNdUxDNEtv?=
 =?utf-8?B?ZU53eUl0L094MnllcUtyS1BnQ2VSZkJ2c2JpeWE2bXlnU1FLVm9SenMydlB3?=
 =?utf-8?B?REY3UmphK3pjRXZWejVlZ2p5cmttMHlBNWpjOTcvdFBqTXZvWGdVNzF6NWli?=
 =?utf-8?B?SWg1SlFValQra3dRbkdyNUxpalhXcmRYcEJoV2htOGhpenIvTFRndCtNcUlz?=
 =?utf-8?B?YkRkWkhSQ2JKeXJyaUI2Tkp4bnFMeWJkODB0Wlp4WlVpam1JRFdPbzhLZ0Fw?=
 =?utf-8?B?N0lVNjBseDFha08vTHdadHlLWEkwZExSTFFiRFRxSVQ0WUNZbndHZFV2T1hs?=
 =?utf-8?B?RERyZjJqVmNTVFV4dWV1YWZFVmo0cUxqc1pNNUpYMmFjL1ZGRnFsblNCdzJX?=
 =?utf-8?B?NlZHYi9GVHkyTFNWeDZYSGluOSszTnVMUjhmLzltTmJFU0hkcmVYc2tXVjNy?=
 =?utf-8?B?WEpZKzV5VnIvUFJCOWxuV3NWQVN3VTJvNU94MUJLQ2VLSE5ZeUlJNkxTRk1p?=
 =?utf-8?B?NkNldTFGMCs4M0VEQjA2Q3VKby9sN1VZVmNkZk1ic01RVnBSVEFrRXRXYlBm?=
 =?utf-8?B?bVhOSTFvQmE1VjlRRnZxQmJ3Qml2dHRmUm9idjBNeTdqRGdrY3NqeTdZc2ZK?=
 =?utf-8?B?bUdoOW9xcGlqQStYa0VEeHRBSzdaNTc2R0cyZXVuVnNjK2lrUTlaTWhlZmRr?=
 =?utf-8?B?K0lPZXkrZ2lVbHh2MFVaV1NpM3NDbkdENkdhSGVhZUNlZ0NpTm5Fa2FIc2pF?=
 =?utf-8?B?OFNmL0lwR3lscVg2SUdndTZDdVFwdGROL1pCRmRrcTRId2VKVjhlaUNDbmtL?=
 =?utf-8?B?SGgzOUtwWXNJdkhnNmx1TDJJQU5vOFExNWQ3cGhSOHpYZ2tpZzEvWVczeURL?=
 =?utf-8?B?dlhLUi8wVVZOWkkvNVNHRmFzZGRod0VBYzFBak5aVmFqZGJqTG95b1dpRTFK?=
 =?utf-8?B?RDErcDNFRVVmaHdkWjRHT0NEbnkwWVlMdDg0Q0cxZHRtbkF0Z2lHOXR2OUxM?=
 =?utf-8?B?eXRkbTdYWkxkVUd5NWN1a2RDcFQ1TEMrajlPV2xPakdNWXo1N2FYaU15QzFj?=
 =?utf-8?B?ZnRpRHptbWJwb2hIc1dqbHV1cU5ZT00yS1VvdlNhaHRzbkZwVmdHa2NPM05J?=
 =?utf-8?B?L3dVTmpzWXI1ZDBUMmJNZ3JDTCtRZlpRendUN2xKc3VHRU1wWjZabVRIdGRL?=
 =?utf-8?B?UkJpTExBaHhIb3NFTkRuL0ZaTkVpOVY0VmwwMXRNeUxhWlRxK3pDVEhUZEJw?=
 =?utf-8?B?ekJ2bFVydkczbUtiY3ZFak1OMlFwWlltVE9jMXpTQytpU0tzb3hrN2NCdHgv?=
 =?utf-8?B?aTNBN2Q0VmU2Q1FXQ09NZXBWcGlTK3V4YWRmR1ZmRGtreUNJSVhMZ2diNzVX?=
 =?utf-8?B?M0ZYR01iRFNYRU9vdXN6dndTUS9iTXlZQXRKR2xWN1kwTWpxTWlraW1DeUZN?=
 =?utf-8?B?aWQwN2cyM0MvMVVTd2RyZ3lXUHBNM0ZTcVVpc2dRM2pYK1F4L1JZdnFSaUx0?=
 =?utf-8?B?eXpTS2pFb3p0azdLYkdva0RMdldMUXBDL3BPSkZLMlYrV1pOUE0weVhjTHVD?=
 =?utf-8?B?bm5rdkhLWHY5MzI5QjJuelpaeDRoUjgvMnZKbWtTZkp0WnYwcEJHTWI1amNj?=
 =?utf-8?B?aFZmS1lqSUwvazRYaVc2M1MvTmZENXNOazhhNkV4YWt2bG1Cc21EbEZHZEM1?=
 =?utf-8?B?M0pYZ0J3L21ZdGlGcFVRZ2d1K1RFYUZrWnVrTXZyU1FDUmM2MDNjU3JQZzZt?=
 =?utf-8?B?ZDBJSmJTNXB6SkFXN1NiNDIraXNoVHVNOVp0OVBnODZ3Q1Z3L3NVV1BuWmdt?=
 =?utf-8?B?b0VjL3hnNVRqKzh3aUJac0VCK3JrVytkekxKRXJLNlg1NWxqNmV3YmJDSi9X?=
 =?utf-8?B?NEdoeG4rblNIV1ZWb0lvZHN5eTlBRU1sUnNaV092azhuY3p2V1BYQ1VPMERS?=
 =?utf-8?B?NjZhaGVscjNFdGFnTmFjMDNNN1JsZFM4OEpHSGtuVjdybml1UThSQ3ZKQU9W?=
 =?utf-8?B?WXFwOTBpdisxdU9CZDVLVSs0M2JSOEpLdGpGRmwyU1pQSGYxbzlPNFZtcSt1?=
 =?utf-8?B?aUlJZmZrakRHNnVwckY1WEV4bFI2c0RBekNxUkwxKzZYTnZtNnNHUngrU0FR?=
 =?utf-8?B?TGZ5K0h6anFjZmhBTnozd0VDdDNVT1lmNm1uRmQvNWlKanUzeFFlbkwxNE5i?=
 =?utf-8?B?ZW92RURHTzFSMXZycW9hOTBtMEtaTlZ6RkJWeHZFbFRPWjVqSEFpM2ZUZkhl?=
 =?utf-8?B?YlIwZVQ4TllUZ0Z6K29jb3QyOTAxcVd2WW1PeXFZYitRd1NiYW83UlpqdWdU?=
 =?utf-8?Q?o4U1VWPyN/y4E2cM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1a57af4-8671-4b98-420d-08de58c73c8c
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 08:29:47.3824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: md/2O1tAOeNHULg5RQk7Lj+aWjIrZde26iELZOBp6ZNKI5HIbBrQW+QV7s9kbtN2uVPpN/UktGthtLcQyJmPIBno3z1eiq7urqzx4I+wD7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6620
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linutronix.de:email];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 65B5C53941
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/21/2026 1:23 PM, Sebastian Andrzej Siewior wrote:
> On 2026-01-21 12:42:16 [+0530], Borah, Chaitanya Kumar wrote:
>> commit aef30c8d569c0f31715447525640044c74feb26f
>> Author: Sebastian Andrzej Siewior bigeasy@linutronix.de
>> Date:   Mon Jan 12 14:40:13 2026 +0100
>>
>>
>>      genirq: Warn about using IRQF_ONESHOT without a threaded handler
>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>
>> Looking at the irq register code in int0002_vgpio.c, it seems the warning
>> comes from
>>
>>          ret = devm_request_irq(dev, irq, int0002_irq,
>>                                 IRQF_ONESHOT | IRQF_SHARED, "INT0002", chip);
>>
>> Looking at the history, this flag was added by the Commit 8f812373d195
>> ("platform/x86: intel: int0002_vgpio: Pass IRQF_ONESHOT to request_irq()")
>> to resolve another issue.
>>
>> Any proposals for solving the WARN_ON?
> 
> Do you have the ACPI interrupt also on the same interrupt on the board
> in question?
> 

Looks like it.
   9:          1          0  IO-APIC   9-fasteoi   acpi, INT0002

==
Chaitanya

> Sebastian

