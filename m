Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5D3B0A1D1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 13:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AC010E96F;
	Fri, 18 Jul 2025 11:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N4lRnzlA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9DF10E097;
 Fri, 18 Jul 2025 11:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752837710; x=1784373710;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=G8Bbk8JVc+HvjwA/CXgejwGMg+Qf82diihlslceccK0=;
 b=N4lRnzlAEWD1kye9y1oB0itSe+blpEEieqag8aSqAgvdpZYcz20AhMBB
 HrKMPd+AXIo5T7TnR+y/uVaLtCu7jdwoZ3vI2AqDsnICFawKPYQXWdR8N
 C9DHGqkW/6x6B3GajzHJPcFa6/DlpVak4feK34dGDOJtrayayPFgmqz9Y
 BC9Cp8+mZGpvtJXopU06PItx8gD+vwE8g3khWTagxtoqYEeTu3Yr7Z24+
 hd1eQq8u5DJa5VefCvBafNvvTET01g6VFP6Z/kbSSMApqygPSHHeC0H9A
 /7x7a50cIjuLN295JGvBbMxhIE7I6hwHzmJJae3Xa4SuiaD/K8eg5t+yv g==;
X-CSE-ConnectionGUID: JsYukiCXQDKg+OA3Q4KXUw==
X-CSE-MsgGUID: +K37oP1CQRespJjlx0qQ6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55095362"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="55095362"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:21:49 -0700
X-CSE-ConnectionGUID: wef3ZwT0SDqtBK66EM8Odg==
X-CSE-MsgGUID: nyeytKdnSRGl6qc2xUhgMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157421704"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:21:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 04:21:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 04:21:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.70)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 18 Jul 2025 04:21:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u8JHjrlkTyEAlD8HSF6N+ibrkeK27iOCK/wWDg973hr6HVkZsImbvrZnjN6CZm3K2QeeehVPInnJiGoI0XmQP3aLWv5CoWJUINv8ucBM6D7d8D5jCm42j1k8s4IJ1TCsWltNXOJAkxoUTcXSr5dsW+orCpKhdUG0E8t8zTIi9J+YVIj+4VWgrX7Bl1/6cFmzVgmAE5QzeND1tdzB6xYmWMEiufzt3Fs7r8RHddYLSGt8fon/m9wQLyTut1P/2I5SfiSFT9Q/o2iA4H+AomChpdyEqeBNY2ZnQqs4lFVQtLibi4Y6iV2CJrnW2vfB8WT4H2khaZqIaNTawCPqL0wUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h1fwXIOEitETexTXpAon678GLDTQIkpDyOn2NfojF90=;
 b=GlaS9p6b1w5WIw6yYOXC+Mp3dYuVWbTvJYUlErhoOdeF9zetFhGlpM0ZehhoDmTe1I4R0U2rsUGC9v6dZC8M62TnkaBoDrzy/1Y5ZGInn4dXIBpr3/uiuCt3NH0sFR7feqNB/CgY6KMYyUJUZ3KJ2Ps/MXxzEN8TKVVlPRXPLZKDuAQWLuC84TgxwiUg3uEzd9tCZCrjt++Fpt4qZhXEgOOdehoi5jUBILiau3RsR5FCJ7V7HcL4T81MWIH44N41irVSWlZbioRTKozaLU6jx+7kI2YKUrPsX22ZMCXDun5Ef/BBVdGPW+0R+8SUlRnuULPD2n6YmD71UlBVlr0T5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPF7A0031045.namprd11.prod.outlook.com (2603:10b6:f:fc02::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.27; Fri, 18 Jul
 2025 11:21:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 11:21:41 +0000
Date: Fri, 18 Jul 2025 14:21:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Maarten Lankhorst <maarten@lankhorst.se>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/xe/display: Block hpd during suspend
Message-ID: <aHouONIZJ3cBHvl2@ideak-desk>
References: <20250717085425.1347043-1-dibin.moolakadan.subrahmanian@intel.com>
 <47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <47db7bc5-2e0c-4d64-8d74-db5d3f90fa78@lankhorst.se>
X-ClientProxiedBy: DB7PR05CA0070.eurprd05.prod.outlook.com
 (2603:10a6:10:2e::47) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPF7A0031045:EE_
X-MS-Office365-Filtering-Correlation-Id: ad30350b-344b-40e9-f641-08ddc5ed44fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?R2fyATS0kV3gvk8O5tbMxuvuMCztUhM9YYyco25GrygamoDo8EAnDOnn6/?=
 =?iso-8859-1?Q?lMRK9u7nIB+gE3mnGkZ8tRan1VE0xyK3GPJ8NKrmUw/lto38c8r8SmtBdD?=
 =?iso-8859-1?Q?uFN7j0SZzMcveBKgzHb++mTfeRo5yisV/8iit9GrcVem5YeqEwnVQfiRpX?=
 =?iso-8859-1?Q?Xayw6pdjY0qLKLrA2yNyQ8JHIGYLdNbAleV2RmTUI3QTAiqYuMzgDNuFv4?=
 =?iso-8859-1?Q?3IkMKpn0mg1pP9xnyi7GL4fEG76i01/wbTbpAHSmXvVMy4KE1YXSrrlZJi?=
 =?iso-8859-1?Q?d3bRuOFpVOWnGNukcViMUaHN7lJ1j7b67394JfvhHLhMyj7dJ6HMNaTNNn?=
 =?iso-8859-1?Q?TZguQP9WojYUdHJPjbnkyeFEFj/MJA+S1ReWi+uLvUUpnDitqvN8p+EV6W?=
 =?iso-8859-1?Q?ltK9IGc9MTvOaVolNsdr6l26wjSMkt3WDK6skmnglX+VZ6UaPZJFkxtJnF?=
 =?iso-8859-1?Q?etjj6kjFSHjijuNrRLqQZ0+AnrU1aYnRBl8sEMy10MG6YTHaAXkdybzPQa?=
 =?iso-8859-1?Q?kwildzSpEEOeXOUiwFKSbIB+NezTuxUQ+igQ3vj8WERpf1ru1VwuCghKwZ?=
 =?iso-8859-1?Q?9DAsHw0XR9DfNG355I2GDxShnJJg6VZYT/SuAbBXrlfQfIEVU2jKS+Vjx/?=
 =?iso-8859-1?Q?TgwvPB4S6Vd3QEWOdmu18WJ203skJVMlWtEeDuNJBceFpSzBmVnjEx/ieC?=
 =?iso-8859-1?Q?ZmCyqd0nSvilAEDqdE01Prz1rn53cd5bj+2b+Mjio1MgltIJLKdRMEAa/f?=
 =?iso-8859-1?Q?f2CFGtpmMsqI2zW8oAmoRk3OSIeHVN6tFJll64meCErMbhd0izoOjFJX20?=
 =?iso-8859-1?Q?ATd6grNtYj5s513tq3d3Jmr5+25MNZj5B/w+6Iv5RXcbRioh4yUcR/n5N3?=
 =?iso-8859-1?Q?YvLI+lAyIAiAtxYbYASbwIN3U38/DxoQtlzZxMoYSxR0e9uFMRzj5QnAuC?=
 =?iso-8859-1?Q?znZHsuY42nMd5FDFSB8u66/4kV1UK4wgFEcF5Eb7qrduLAwyhPq+NTaatf?=
 =?iso-8859-1?Q?Cte8rUdkJBeWG3tt8XpiVbUVtLO4t6ll5jSBFAgkIQEULMuyzo6vJtwKCw?=
 =?iso-8859-1?Q?l/SZqEfQ4oCSh286eDWWn/cJ+QVSYwQRHApShiiG8dHj6mozABBPWM3Z2h?=
 =?iso-8859-1?Q?alPP6arorAJs3W0k9Lb1QAG3925X6bVhFwxLQdEYH9FoLZgQBoGiBkddIU?=
 =?iso-8859-1?Q?ss4VyUFVD/ky9S3aG8uefyDx+szWQQHFB2f7Jfpo1Gm2u+w69kb0sKrSaj?=
 =?iso-8859-1?Q?GD0p+kNnn5DeIr2AnVB9jgnNdkhGF2c/G9tki2EFHucfusxAOUr4hH6z/0?=
 =?iso-8859-1?Q?DT0JQAR+brifCXH70uyDjocVNvY3ruCkIvP/0gR7Nm8+UmeqmYh/tos5aw?=
 =?iso-8859-1?Q?0FfffAqwxrfVJnPEOyWOyEC7Bibc4P50eXMD5zDMwfJrGv4DWKvzI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gSYTsT19+lwBfzgfWREjOur7TZ6ETcp5dFACHH90f/eSxlQTq1l4ACToXn?=
 =?iso-8859-1?Q?GRnHDZ8aXAi/QxUMTP+Bg7aGlBksxAb9SmB8f1/5p/4iEB5JGOhhYTjFWX?=
 =?iso-8859-1?Q?GpbiT0a6PBJ3ZBG4KxiPQu0eLJe2USAl0Lyxk64iTSASIrvX0ZlIhxU9Bk?=
 =?iso-8859-1?Q?FIodoYgLq2GDiXjxKkaOmI+q8cNAvSdLwwBZ3xT7cMUngUMMT0e073vQIc?=
 =?iso-8859-1?Q?hNDdKT0/cuzYRwIcrLTjHytJQo++3ZyLxvxNq5PAiKX9v66Yr9HNad6+Qy?=
 =?iso-8859-1?Q?lmtM8oJGshVq5ntGW/dBYJRGoceY8qVdQF5QT0riDcafyjoWxk+bCdTM8B?=
 =?iso-8859-1?Q?8BEdIbZUsI5GzhstaY/m59qUlREv0mV6VHpoo9lPv4Ml5laZvn1EZf46nW?=
 =?iso-8859-1?Q?nz9dIoPg0Qdm/66NRCGOOuNau83dcukPMVjJLgZJwof96252hdSJMRe7Y9?=
 =?iso-8859-1?Q?6AfZR6WKG4G5mE9g3CU8O/3YJjVxhj2sqoFbLBe51KaKMtWkpOGDYOyg3i?=
 =?iso-8859-1?Q?btat8SH5U7NsmaNwiKHWuIJw8/Y9xo47KjB5TdY6GG7ajr4v3gnNzAVREz?=
 =?iso-8859-1?Q?ObcGHS+PtB4BHy0uBL4guZir8AwCeszjH6r7z9uklT6K7lu17D+SzoMelw?=
 =?iso-8859-1?Q?DF7jHbtiqZA78o4yJGlo2f0GbivqBlSX6M8SndOIkX//Zr6/P6L0fk/dEO?=
 =?iso-8859-1?Q?N1mqc0BJvKbQzEHbj7GHXnySS6ZImAwNBezJwdPOw9Ea3/6jMS4C5AW2Lr?=
 =?iso-8859-1?Q?pmBInwMhCxepKTKP6xF52Odj2DPkI/t+PQr1vdCLHQpTx+mN3HB+crSgrL?=
 =?iso-8859-1?Q?wlZx8EFOr0mS14MVKG6laX33YldzXWWYf7eyk57iCn+Kis5wCTYdWYI2QQ?=
 =?iso-8859-1?Q?N6V9q7RWv7jjptQP4ARkBQgrdSRk00VRrJsfNjrzq9HypXUmdM74V4Dd8I?=
 =?iso-8859-1?Q?N+C8TVicG8xkt1gOpCOGb8micPV9Q6OfvEx5nEEA52Qsyb0JGQPnt6BklK?=
 =?iso-8859-1?Q?ODhGKJTxhEYFzustGk7eBIVudhrzyl6awFhkHmYZksj3eoRCTZWOdcI83n?=
 =?iso-8859-1?Q?xWx3pBWnqTLoHaEyZ8JixHVBDDc68t1Xhwu4mLplg4jXBtRH0WXjihiF5y?=
 =?iso-8859-1?Q?7riIsojPrjNoWoYVxGTLaUVqT6ov0prOOQFadvh7fr8e9wj3I+2j0yN2jZ?=
 =?iso-8859-1?Q?FC+Od+i29M8Gw/miDZ+HZTiOSEqQXCQfSxclEegbLUP9WL4d0uQ+roC6dV?=
 =?iso-8859-1?Q?ULU5vIvR9idUViNnEgIIbHM3XyA5nz/B0A4iZabsrQIuorLSwz7lerGtHo?=
 =?iso-8859-1?Q?IKPEWoRdnjmNYEJO1fW0ZzXl0M9/WKCUi85sTb12WRzaNLCRdW4PI75iU6?=
 =?iso-8859-1?Q?Mn3JmE19ooYNNCiReKI1WQHle7LU+ksK9ZJThFQVXqZyRAsAn2TPnFXj57?=
 =?iso-8859-1?Q?EVzIsVViqCd3bz1+J7zWsyMIEbmRA8kTQ4+TXJji6O6WUGLlVlPa1FfqGV?=
 =?iso-8859-1?Q?okPzGKus/sihKTDwuuJ5Ti9O1XIBoEe4Bbk80lFomU2Mug8UFyJsA2LS6X?=
 =?iso-8859-1?Q?jA85iDHe/JLwdrreS5cswBAYsYr7VR93SSEjdX7YH6Y34FUi38eUNUR4Iu?=
 =?iso-8859-1?Q?cT6LoQV3Pvepf5FXCaKQyPXce/LTegWKFGHbuNPulZf2YlZ/QEGIr65lEw?=
 =?iso-8859-1?Q?+143k3S7xPDUejJwZfQAWcjE0dr2qvwlGC05n8eH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad30350b-344b-40e9-f641-08ddc5ed44fa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 11:21:41.4472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: stM/5sQBGOQMP3c6NBHPvrY2E0OWJaWNhgi5oZ6VGFkbO8nKulAjp/NIdKSqduUaBeCQxXngK652cWNhQ8LdvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF7A0031045
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 17, 2025 at 01:54:49PM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> When I looked at enabling -RT for Xe yesterday, I noticed this trace.
> 
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-151626v2/shard-bmg-6/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html#dmesg-warnings488
> 
> I independently discovered the bug as a result, and sent this patch to actually disable the irqs.
> 
> https://patchwork.freedesktop.org/series/151728/

Display IRQs in general are still needed by the encoder suspend/shutdown
hooks, for things like DP AUX and I2C. So I'd only block the HPD IRQs
right before intel_hpd_cancel_work() and disable all the display IRQs
only after the encoder hooks.

> If you have a reproducer, can  you confirm this fixes it?
> 
> Kind regards,
> ~Maarten
> 
> Den 2025-07-17 kl. 10:54, skrev Dibin Moolakadan Subrahmanian:
> > It has been observed that during `xe_display_pm_suspend()` execution,
> > an HPD interrupt can still be triggered, resulting in `dig_port_work`
> > being scheduled. The issue arises when this work executes after
> > `xe_display_pm_suspend_late()`, by which time the display is fully
> > suspended.
> >
> > This can lead to errors such as "DC state mismatch", as the dig_port
> > work accesses display resources that are no longer available or
> > powered.
> >
> > To address this, introduce  'intel_hpd_block_all_encoders()' and
> > 'intel_hpd_unblock_all_encoders()' functions, which iterate over all
> > encoders and block/unblock HPD respectively.
> >
> > These are used to:
> > - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
> > - Unblock HPD IRQs after 'intel_hpd_init' in resume
> >
> > This will prevent 'dig_port_work' being scheduled during display
> > suspend.
> >
> > Continuation of previous patch discussion:
> > https://patchwork.freedesktop.org/patch/663964/
> >
> > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
> >  drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
> >  drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
> >  3 files changed, 28 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > index 265aa97fcc75..7ffd8ded1c26 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> > @@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
> >  	return queue_work(display->wq.unordered, work);
> >  }
> >  
> > +void intel_hpd_unblock_all_encoders(struct intel_display *display)
> > +{
> > +	struct intel_encoder *encoder;
> > +
> > +	if (!HAS_DISPLAY(display))
> > +		return;
> > +
> > +	for_each_intel_encoder(display->drm, encoder)
> > +		intel_hpd_unblock(encoder);
> > +}
> > +
> > +void intel_hpd_block_all_encoders(struct intel_display *display)
> > +{
> > +	struct intel_encoder *encoder;
> > +
> > +	if (!HAS_DISPLAY(display))
> > +		return;
> > +
> > +	for_each_intel_encoder(display->drm, encoder)
> > +		intel_hpd_block(encoder);
> > +}
> > +
> >  static void
> >  intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
> >  {
> > @@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
> >  
> >  	spin_lock_irq(&display->irq.lock);
> >  
> > -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> > -
> >  	display->hotplug.long_hpd_pin_mask = 0;
> >  	display->hotplug.short_hpd_pin_mask = 0;
> >  	display->hotplug.event_bits = 0;
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
> > index edc41c9d3d65..3938c93d2385 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> > @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
> >  void intel_hpd_enable_detection_work(struct intel_display *display);
> >  void intel_hpd_disable_detection_work(struct intel_display *display);
> >  bool intel_hpd_schedule_detection(struct intel_display *display);
> > +void intel_hpd_block_all_encoders(struct intel_display *display);
> > +void intel_hpd_unblock_all_encoders(struct intel_display *display);
> >  
> >  #endif /* __INTEL_HOTPLUG_H__ */
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index e2e0771cf274..51584ea3ed09 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >  
> >  	xe_display_flush_cleanup_work(xe);
> >  
> > +	intel_hpd_block_all_encoders(display);
> > +
> >  	intel_hpd_cancel_work(display);
> >  
> >  	if (has_display(xe)) {
> > @@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
> >  
> >  	intel_hpd_init(display);
> >  
> > +	intel_hpd_unblock_all_encoders(display);
> > +
> >  	if (has_display(xe)) {
> >  		intel_display_driver_resume(display);
> >  		drm_kms_helper_poll_enable(&xe->drm);
> 
