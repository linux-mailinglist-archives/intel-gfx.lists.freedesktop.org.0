Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FBDA2A820
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 13:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688AD10E2F4;
	Thu,  6 Feb 2025 12:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JUVpOu4O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A0B10E842;
 Thu,  6 Feb 2025 12:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738843732; x=1770379732;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9/ZWWQDOPHZ49ETVhKLVqKNYL0I9hNy1ERQKmRc9I18=;
 b=JUVpOu4O2L1CxWK9OR6vZAQFsQWs6+KSFUMl9t2uLehXDN++L1e+pNJ0
 3APB2vNY4dsz3DiA81piN+oEfNP63a7XJGowLRSp6vRojY4Hd1Yftlhf7
 Lin2IkjnVla7rqtV8ttRDGlhbURb+q0+Y50aNVYRyN/6XflyIDjwUoomC
 kXkHLh0VzCHYQ/08ebXoLp/NvknJIsoWV46YYasD92vqOZSW0gvD7Wfpx
 /H/64C6DX5Iyn/EW3ZyM0kJqzz/Fay/uQTSWdLdM7iLmebmrUrXXS5752
 3CwR4qkyLE0DLFEXFuMMeSMxdOiGDMvzlCvyRKeGOybRYq5bnGXhx9tsa g==;
X-CSE-ConnectionGUID: dbMS8vlUR5yHwGDN32wIRw==
X-CSE-MsgGUID: HMZsK66iQ5+YTiUXkdZhiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39337418"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="39337418"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 04:08:52 -0800
X-CSE-ConnectionGUID: XW55JAK/SnOwvu9ZahW+sQ==
X-CSE-MsgGUID: oS0N/hxUQDCAe9ayyxb9uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115808957"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 04:08:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 04:08:50 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 04:08:50 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 04:08:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IoLuqtUwP5jEHhuWaN18BeJWH/c3aQXEcqapa9bZ16T9D8OOmgCOpRkxYX5lKmjbRTTmfPIt5kpI4gZ0RgMjX3Ipk/X5pBI+OOKGt8Pkq0sOkXXNhSB7DexSgWUGkLxroDjZpC1CiyfPz8C0zHNPNpa0HEHRiGKOrSu9xUedRX/s09wvgO/qOjpUpzmzXm0ulGJ7UjufkMrX4NMYnfcvfg23CosADYRKSYNpcSBAdW0H5utuz/o9NoLXtm6q6xNBTgaDETQ3oWZEAlQAG00LNsEPPfZHXuwZwCNdF0jDAOR3aTrZRXtUs5tIbeb3cuxQnAH9n/O2esNRipCSOKPnXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6v/i2mcJ23154cyWNQeVbokWKGQ6qRDOCsK4e8HrXY=;
 b=FlShNA39Ve3aTdn9gTV7DykjIq0rQfdvcKpIwR5RHAxTSdliPCVkIzVRXj/WvwVbVXUgy2+7dJd1ZDbq0lzbTKi9VG4AZrmmIm8B2oQym/ut+/3W/hND/MfaBJ+DAhTZjpO4NBRUCNYc+f+Jn8bXSaIEqYpp/UGJ47COpxX20aXW50yz8ZI9UIhUK3qUCff3ycQyttjkPQmNhxdjykQfg482RXvbZRS64n1XZ08TZQL+3gUjcXvv873Nfz22nyVmSUJqMylpRDweEBL0yVh3P7KeracBUyc384DFcI7QXuCMKu+3W/fr6l6o51tRWnTKhuMAYx5wOWs8l4nStMGbsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH3PR11MB8443.namprd11.prod.outlook.com (2603:10b6:610:1bd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Thu, 6 Feb
 2025 12:08:48 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8422.012; Thu, 6 Feb 2025
 12:08:48 +0000
Date: Thu, 6 Feb 2025 12:08:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
Subject: Re: [PATCH i-g-t v8 1/3] lib/igt_core: Add tolerance and
 measured_usleep utils
Message-ID: <idxrv5fk43i5f7tkykzillknwjx2pdmoqnd2elum2dgxc3qi5g@lwh5hikbeps5>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250205021056.1539902-1-vinay.belgaumkar@intel.com>
 <20250205021056.1539902-2-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250205021056.1539902-2-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: ZR0P278CA0030.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH3PR11MB8443:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f2e4835-a000-4ca7-8c80-08dd46a7034a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzR2NVNPMGlKNThFMzF4SFZNTjZ6aU0wK3NWaHJsSmtGK2M5TmJTUi9XbkUv?=
 =?utf-8?B?bWlRcFE2UTNiS2RwWjFrTEJVb0taeDRqZkJwNFpKek4yOEJmenlndittNFoz?=
 =?utf-8?B?WHNEaDhTM1h1bjl2NlBkS3d2TVZqMEJrMUdMOWZWWkJKWHkydXlIZllyeHlz?=
 =?utf-8?B?OUV6M2dzUlg4M1VUSWZCUHFBM0YyT3N0NXNhM2JjanpiUmhTUWZyeHhhT0M2?=
 =?utf-8?B?dXYray8vMzUvU0U2OUlNa0hTUlp4U3MzbkFMYlc5V1NMaFZwOExkMjNiOGpy?=
 =?utf-8?B?bllNK291WkxwVWQ5WThZczBvL3JMTXhtbklldFJVdWx4a2dYOE12cFhNV0pD?=
 =?utf-8?B?Qm5qWG5uYTdZd3RxUmxQZGxVcENSUHl1MEVDcnVTN0hBVVVORXhpSVA5aWNE?=
 =?utf-8?B?TUcxZTlwcmppUUZJenNwOHhHNGhoWEtDZm5PZHl6a0tTb3RYbFlJMHZieDhv?=
 =?utf-8?B?a2x4Y3BxNlhmSU9saVI0NzhkSGprZFZuVDNWdTNUei9xRkhpa01JT2h3RDNU?=
 =?utf-8?B?Nm4rejhnKzZPVnl6blVWSEE3UDBkVFk1VndWbVo1Y2l3RysrN2U3S05pQ0Fw?=
 =?utf-8?B?ejR1UHBkMjcwZC9WV1JTZk5Cb2hIb3NEdEFndkthT0I2WURBTi9XK3N5RVBm?=
 =?utf-8?B?Qm8rRzM1eE52MGVlOHBoV041cmNoN3dreTFrNVNsMmNYRzZxcW5DK1dOOWxT?=
 =?utf-8?B?RnJPbDdtM3pnQWpxMjVXWHMxdWRLM2hRbThrYWM5TXAvMGdGb2FvQ3h2Zmxh?=
 =?utf-8?B?bEtTM2lYaW1hUnppcE9uZEx6Nk1iRGhxRUZQc3hIc0FSdWJQVHcyRDhzbmdr?=
 =?utf-8?B?SU1mRzlNN3MxNVBTdXNOSWNuMmlkNExrSGpGYTdXVThVelNuQ3Fqb21ibHFk?=
 =?utf-8?B?MGcwamx2VFlFYmxPM3ZPTW42a2xScHI2dDFnMDVRcXovYlNlSUNSdUNyd3Rh?=
 =?utf-8?B?aDNtdmc1TGFBckdwOHFjSUJ0d0E4c1YyZXV1Q0EvbmtPYUpjT0tBNG83Nytj?=
 =?utf-8?B?aXBkOEY3Z0IzUThHaTBlSzBQN0tkVDB5TTVURy9ORytNNGkxdE9pNkUzQVow?=
 =?utf-8?B?ZXRwaHdjcG5YYUw3TTNsYVB3YXMxUjV2dnkwWmxtZ0cvaXlkUWp6dG5xUmFT?=
 =?utf-8?B?YzFjM1kxNDQ0ajVxMVlhWG5BNEJQWWNFaCtINzVaM3Y3RW05Wmtpak1rbnNo?=
 =?utf-8?B?Vm5uUlVhQXFxRURnMUdVa3RGVmNCQWhmc24xcTlJYitqTTVXOWdldjNQZ3A5?=
 =?utf-8?B?ZkFJY282eWJXVmlkSjdXS3dESTc0M21mWDd5d0w4RjJzV3lVbWJtcUxHdmdE?=
 =?utf-8?B?NWN3b08xbHFlVXJ0YTVjalJ0U2NMaVhhQm9RcTk5clRieXplZmpad0xlV1Zs?=
 =?utf-8?B?dy9BSm1FUVc3KzFIZDBzQ0VQUlB4K2dQYWpsMWdWdm4vUXR6S1QyeG5yelhv?=
 =?utf-8?B?d1d2RG11U04xTjhwd3U0ZDNOaUdTamlXdWpoVllMK1VGc0ZzUW9VekoxSXZS?=
 =?utf-8?B?SCs4bHB5cjZoRDkyaTgrdkFoeGhFdFhKc3Flb01hWDc5ZFRJS1BnTnlNUG4w?=
 =?utf-8?B?V2NmVjNRMUNRaU5IN3ZWbkJSOFZMS3dja29LYWhyeVIza1ptODMzWXFRaTV2?=
 =?utf-8?B?NlJFdlZRbmVWalNZenFqbjB5SUU0a2xEM21pa2NROUlhS2lDMEVQcU1BTXBr?=
 =?utf-8?B?UXo1OWp6OGFGbEQ1cldoR0QwTHJrN0t1NHAyNDB4YWFkVUNCdVljbjFFeC9P?=
 =?utf-8?B?bnpMa0xqdUNjZHcraUozV0gyUFgzRlRFVkVqNTFqR21BZkZTbDRRajY5QVVs?=
 =?utf-8?B?UFJ0bmg5YlIyMEk4WWVySldzSDdyYUhTdE83SVVsaGNhQTUxZWhBSE9uV295?=
 =?utf-8?Q?l1L3XxhWdGtaH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFdQTUwzTWJGNWVKM2V5WkdHT0Qrd013bXhmdEc3Y0NXL1ZlUlNReDVIRVlU?=
 =?utf-8?B?ZjllTzMwNHlzSzJlU3I3SFhOcnBKTGYyb2tQelcvS093M2JBU2RaQk12NkRs?=
 =?utf-8?B?blQweGVoTEN6ODRyNEZOQmRBTDNzUFpRVVQ0TytHMkt4bFBXK0U1V1JSZGp1?=
 =?utf-8?B?cWJlM0ZHVTVyc3JEb3dkVzJsWjEycFM4ZjNLL1JwVnJyZmgrcVh5dGdmZFR3?=
 =?utf-8?B?Q0RRRXh4VUNwUGh1VW52UGVSZlJPMVJnNXNqeTdmemZLZjNqcFpPbnVPZ3RX?=
 =?utf-8?B?aHpoWXhhZitNd3NHYnFucG4xdGpEY0kra0kwRlBqandSQ1NOWmFwTExseVhn?=
 =?utf-8?B?MURlOUd2TnBuZFJydE5VUEhQUmJVNVFtRlJGZGpUV05QKzRGSDJhQ0JaeVR5?=
 =?utf-8?B?SnM0TFVMMDFTb3A0bzlWdDNacGVJUUlsZ2lTdWYzK2cycVdGUVJ2M0tvMXZP?=
 =?utf-8?B?WHE5ck5JN05OWVBJWUdCbGJMaGE2UXAwSmpnQnFneVBTdEpVNGp0Ri9oMXE3?=
 =?utf-8?B?UmN1QmxGSkJ0Q09wYjkzN1lhRmQ3UkJxYUg2T0FIb2tXWEN3eXkvVW5pa1dV?=
 =?utf-8?B?aVFNbng2MzF1R0xRUHprODlZMkpyTUV5OVRZZzA1QURvSndzWUZnbDhXZURs?=
 =?utf-8?B?QU5pVEtUSlJqN0VzeVNsMDVhbGc3RFZoQ1RHSVY3QTFnZzNaakJDdkphWkVx?=
 =?utf-8?B?TkRuY3dFZVZSem83KzZGemJFRnE0S1hHL2RYd3J2QkJRYThzMGVQOW41Qm9K?=
 =?utf-8?B?MnNJZEdYNEdYblFmZnRZVXBRNGdaOHdCR2k1dUpvYW9wYyt3ZHlQLzIzZ3Zi?=
 =?utf-8?B?ZFlhaG4wTkxDcTJjU3ZWNDZ2YzB2MStiY29JeTFwTEtyZjB2M3FrYVp3Rndh?=
 =?utf-8?B?Mjk4ZTRqZ2VNZFNxZHl3cUVVVFNRd2doanJ4Z0RMbFl3WEc4Y2lFdVdqV0xV?=
 =?utf-8?B?OG9vSU91ekQyc2ROdkNqK3JwUEc1QUpjWkVyZDEvUzVwclZtMExReEhJL2Vl?=
 =?utf-8?B?QzIyTjRpT1dtaE5PUFRjUlZLTUNJK3ViaGNWRXpsVmFvWTJ1SGo0dlpTTjNK?=
 =?utf-8?B?ZWlDbjBpMEVPUk5VdkRYUG5GK0djajJvMkdPdmVZOHZxY3REcjBVSFZOMVRi?=
 =?utf-8?B?Y1V2SHc2M09vYVNhV3Z4QU1FczBLWng5NkpnVkMvYmRUbDFZYk5kcnNZM25h?=
 =?utf-8?B?MUJoR0MvU1lWNzgzNlFSTERPQkk4REx2SVZvdmg2MnFpbm1jWW1aUlpuTkRt?=
 =?utf-8?B?SnpUaTYyYlhoN2hDVlp1V3V5Z2JQSHJxVUNJdlJ2MlJzaGlSMVlyd0FQN0hE?=
 =?utf-8?B?N2d0cyt3WExrajhhcHY0c0VPRjFkNXd6MUVGOE9EYUlUanErcE5UMFh0bUFJ?=
 =?utf-8?B?WHAzWXBIWS9SRnNJZ3hCL1JKK3R6N2paN1gyek5VeVRCVzRnTVhKM1BIdjRU?=
 =?utf-8?B?aEJ3ekJyeXpOWW1Gaittbk84dzdnc3FnTDZqSk95YUFoZWpGcG4zOGZRRUtR?=
 =?utf-8?B?cEtFclYrUGZkZWJ1QjNoVk9EVnhXYkhsTjJFWHRIcjhtVUNlaDNDaTdTRXFy?=
 =?utf-8?B?S0U3dkYzZmd5dkdLZmR2MlJTREFkRVBnWnlFNFRwWHMrbGgwZnJjNFlHWUJR?=
 =?utf-8?B?Z21Fci9vdmowTE9vblBCNjRYUm9ENkkrenQ0TkNTM2U1alA3UVh0TUZDS3VL?=
 =?utf-8?B?NHcyZ24rZk85cDJ1bGZpaFRmYlU3V3dTZmIwTTVKeUhMaWd1RWNTZm9MMTFB?=
 =?utf-8?B?L2tLM2pOVkd3d0FsUmRHOVZpOUVlYUhNUHEzcVV3UDYvcjhZZnVoUlRFeXlj?=
 =?utf-8?B?aEQ4aUEwSjNFcSs2djduY3lNNlo0N0lJazJqSnZUbGhpZitac3hXSG5pcVg1?=
 =?utf-8?B?KzRUNCtvNHR6bVVwQ1YveXJaMGxxYmc4Y05XNDNrZ3hoZmxScWNrREhwdmM1?=
 =?utf-8?B?V0RFaHgybnJmTW5NM2pqN25GS2JGRVI0emozT0NOWXBlRE95RXV5cmttSGVi?=
 =?utf-8?B?akwva29PWDhibCtSenp4eCtiWXRKTzQvSzRoS2xRKzB5NDVpaGFjUGR1aTVZ?=
 =?utf-8?B?aDZrTWJaQXREc2h1WmEvRlZTMTZVZFdKTW9KR2ppeTc2WHVDajZxQzlVbnNr?=
 =?utf-8?B?bjJuUUVBUGhDK2NmR0doakdqSkMzbEh0MFFWYW52YU9oUVRNd1hsKzBOcG9D?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f2e4835-a000-4ca7-8c80-08dd46a7034a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 12:08:48.6490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TTDsTHW5awLQ4m7Xgp7rWAsrbbCtlEDsKpVSLZOnF68VfK7MWk4DEWOHfJucLS5WNwXcvZgAPStwVzRf0F4QzAn/Zz47t3gZJ31LoR8kKk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8443
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

Hi Vinay,

> Add these redundant utils to core lib. Also fix the bug in

I think "Move" would better describe what you do in this patch.

> +	slept = igt_measured_usleep(batch_duration_ns / 1000) * NSEC_PER_USEC;

Since you return usec instead of nsec, you had to add
"* NSEC_PER_USEC" in many instances that this function is called.
How about dropping returning usec alltogether and stick to
returning nsec value? (and rename/modify the function to handle
nsec values as well)

Krzysztof
