Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A267BC1C9D2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 18:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D2410E816;
	Wed, 29 Oct 2025 17:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqJtoMyT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3B610E816;
 Wed, 29 Oct 2025 17:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761760569; x=1793296569;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=+xqdvUaUOo4JeamXSwYNZPyHcngC0wQZDUewcuwTcio=;
 b=hqJtoMyTbG9sxcjQHMckyg192pNgE8+5iPUUfbv+OGtmCzUYebW1uQH6
 LZjMSdFdQ2zh4IKFTeml/OqemuYwpRjVvhlFexHkssjoXCcWCN7an3cLq
 NL49qcZO9Dr8BxTHipE6p8Lwk24lfpGG2L45A8q3YPR7SBI39kOgAAly0
 DGUf6P+OfHc3atiql8x9tnNNJ8Alf3xCZpZlrZUMtcj1DG751D/eXRv3E
 dk14im15RhysN11jVU8FhiV+KcifCtul8PlrZGma/ZbR2+jVdLD4JttGA
 KnCHMaVyvuvg8F3mOw2CcJdKNlorlLTyl/CgRN724eziuC0MvmOgHrpS4 g==;
X-CSE-ConnectionGUID: q+QEMw2dQt6Zy7Q4Y85YmA==
X-CSE-MsgGUID: 4h7sc8hkTXm8uOFaY77kxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="81311802"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="81311802"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 10:56:09 -0700
X-CSE-ConnectionGUID: mvmD1w3UTTCuGkmMbvO3wg==
X-CSE-MsgGUID: XBssQpNHQ/mTNcD3/RNWJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="186077526"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 10:56:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 10:56:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 10:56:07 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 10:56:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQulT1BgxKK7NIjbRkYHyHQ/zXDld9yhgpcxF5pG3cASIzTTjqyhV2urSgj8LSgIQ96SWPfyjMY8Uoxc92rPgObpAaEDvosrJ7WhobuisjAjFDEF6r8MkGt//1IDJTQNCpv7EdwyD20N9pXiLhAuM8kOdpbabM4KSWwECI0CXmcQsZpjeVRJYoIhRFSRvvffMwFYPIVBMUHvB1+1VzAGa6BK7sBHV8Y4KGRIaruFPLEOOrR4uRN+8cAvzhi62Fryly0YLWmh9lZAagcRWk/5o2Ox94akZ0TsTl08/KsakaU8HG7MNFrCWuQM4kQKj4zMOckIzqa0+muZORntfynqpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XQ8YS3cEDTnoo5tM/lBUZ5QtQyXyYCidSUpTYvJiLM=;
 b=ACuS1t5UYbi6otXRr+IfZ4oCqIsOkDyvmMVc5necXVWXvEUaj3WffdJJKLn0E/6gbeZTv8axsc/J0CFecBWGPY2Kz+bq8KcVRceFWv6HHmeXsGC8HttK9XAr8ZRzgEjkjK5NA+lRWtwoEd0Ghp7B/c4VR7HRjQKD28z2/Ll3MmPNdidQtntEb2Vy7/rMbZ/UbFUlcetpnmtHALflKh25nPgHtZZt6eVGiiH5QJaqOpnlctQOrxQ977bvAtvyl5mWBHJjZEyza9RDVNPN8kMnWwEP1xROz56ZaGlOFy02ezLq37VgXf688rcCVzm5VZqeIwNAxACSNNP1cf8t5iExQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN0PR11MB6256.namprd11.prod.outlook.com (2603:10b6:208:3c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 17:56:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Wed, 29 Oct 2025
 17:56:04 +0000
Date: Wed, 29 Oct 2025 19:55:58 +0200
From: Imre Deak <imre.deak@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWls?=
 =?utf-8?Q?ure_for_drm=2Fi915=2Fdisplay?= =?utf-8?Q?=3A?= Extend
 i915_display_info with Type-C port details (rev6)
Message-ID: <aQJVLofJ-Ttfpr8v@ideak-desk>
References: <20251027200256.3058319-1-khaled.almahallawy@intel.com>
 <176168182722.64511.15630918636084271448@97596180aaec>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176168182722.64511.15630918636084271448@97596180aaec>
X-ClientProxiedBy: DU2PR04CA0269.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::34) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN0PR11MB6256:EE_
X-MS-Office365-Filtering-Correlation-Id: b661332e-d968-4fec-f815-08de17146d80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Eg7k0Y5YlWNRCgDMUdNOjmtdSWuhHTxT4z//NfFmkVkqvFXQSlhoHs3/pJeZ?=
 =?us-ascii?Q?V8RFD2vOysklWPhZWN2l3qr/ebm23QA/ihlDFiYBqJx1iaDtR+uCkAMBGA1z?=
 =?us-ascii?Q?242UxoA5NbQ7OmpYy2pFXO+es8eIRQvDaWZFcDWqo/DzORn/zk/i2PQTCy1v?=
 =?us-ascii?Q?0NJ0d84ug9R3ssyomkGKGHscxMR1CH/e2WKboLwo2YE7ALV6MGqZyG9rkkxo?=
 =?us-ascii?Q?uQzMYtbN/0xed80MQUfNohmHKjPYyufN5QnkvPjc4VwhLKHS2VKFZWBYdfvi?=
 =?us-ascii?Q?RSz2ckRV65WpUk1dpJCiq89jm44pjIGV03M4OI/DdieaWMhPuU2BwOWi4tuH?=
 =?us-ascii?Q?vetbXIJHlFHdMe14EZwcQtcG5TIhVWO4CT21m1wNCklV5c8Izj+0NEnEaWUI?=
 =?us-ascii?Q?6yS2i6aOeMP6EmoAZoo2sqRbtgOUZ0ooa3TTji6rYja3LYNzM8S8/lERKANt?=
 =?us-ascii?Q?UPdcPEYfIxBcKo1dJ33rBdZzfgq1QyVEzj169nwdd+beXJdedlPfPv6XclbO?=
 =?us-ascii?Q?4iSWsftMnH4LYfXNBod3OhxhdB5XLzMUxqUf4VHPmYvcOfAeWPlySxfcvNDn?=
 =?us-ascii?Q?maOSUVgE72wBaW8Ax7twjWLBq7zHuA4JeTh5GsC3sZRj37HfWasRJ304SPMG?=
 =?us-ascii?Q?mQL+iEl28lskdysVRXkUbFZEipj3Ggbj2meB6knYyAg1QtAHcbB6Q/V30TBq?=
 =?us-ascii?Q?KLgQaq9sjxjWDxTGZx7+n3WAJdtNwZjfpWjhNBe2swCCh82Md6Igfjk7lTBA?=
 =?us-ascii?Q?qd7oBshYp3gt057Z2DssY3i38Qdz4v6gS6fUC2jKHkgew4FeUz5s6EjVOFZS?=
 =?us-ascii?Q?V+agD904y7FeRqhTm7ndiqDpAzKqkIEjzQRRU1RoaPRGStwwaYCK9DUhfBtf?=
 =?us-ascii?Q?FENs4wLZZHjxomM4hk+ReKUTnd2LaDXbFhOKyZmovQU18mP1GQTpFiLVW6KR?=
 =?us-ascii?Q?/ZImteUoEjFIyQmzr4z3Iuk0aSt3f0VloPJ9V8LnTvDJi+iTMK2G7yHY8QzC?=
 =?us-ascii?Q?7y5/At+tB9p14wsw7+BYgyuwP3pE1yJoVnRk9ciydAYTI9sphuRVYBtvE5qv?=
 =?us-ascii?Q?VhsZrZfhvvT0aIAOqGB2+SaBlcs4jDYHqVKHjsTdoeSdqqfViAnm+eoy5U6I?=
 =?us-ascii?Q?yfylJeaLm/iT1NSUr2MzafscYkVRVPkqK9FHpjpHMUS1XqFzsmuDNkBc87BK?=
 =?us-ascii?Q?URfhCuvJDKXmU6U/pvGxJxvUUxLv7m03AoxeLttxukI99W4X5Ny4AHezHF9x?=
 =?us-ascii?Q?BrzenSqm9MPi0kuR4UOwwayi4ALjABYiQItmqj0Ik8IXhQfpuSqadUna0JsY?=
 =?us-ascii?Q?Gu304xguiEPBOUmitL+QoLSPk+OsozKVK5sQfIhcNwdFKxmkXNZUXuxMzCRY?=
 =?us-ascii?Q?HFhtdsNzdh8O8Wev6rZ2XPAeXEeiTgqMsZzEdTWipv763kjkxw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L0bzES94Uv9tRBLzJGCPY++T9LNen302cB4C2NMKaSCPhYM687ruxnuW8bbN?=
 =?us-ascii?Q?m6h9GwTjLITUQNT00ffjx/P3kZK7YnaqwRB01O1xO/lVVe1UDvTLlgsI4ie+?=
 =?us-ascii?Q?Ihc9V5pTtFsCfK32kVjqtmkQ9QxFiFRx/q/T+t99t2LKzaAUHld4FMwSs7Vs?=
 =?us-ascii?Q?8XPxeuGDos/526sVIsyIJoYely9xWFlZefAXlweRHgsmZioKolkH6nm0Z3Y6?=
 =?us-ascii?Q?pkzuZ4I9P00MI/tOXIN59T0A0JSNy4F8hD69HyEVGQYxmlw7LXRfYPy61nh1?=
 =?us-ascii?Q?FnPzn6CJ1KDkNjxe5BaVIvKpbsOtVrbFAe8ZYQUSCs2lwgqlHWhRzWW/RNPG?=
 =?us-ascii?Q?2BAK70DXS35NgL9j520amu+wsDL0Ugomhg6X+pFPpXEELpBO2nxbxfwKMSmo?=
 =?us-ascii?Q?ClczHVrOf4KjSadtNrVCm5KScDCmMOcsDRiygHb1JIqY3c9Kv731IX0E8+Ox?=
 =?us-ascii?Q?r3P6ws0f2CaqiScRxq0pCkcHZB9epA58lVb2gT9gt44JUFPo3T7nNt4fRY4U?=
 =?us-ascii?Q?XAqY0IEm67ReruDc2CV4dJvlMvX6c08Pi41U9hSGAH53m6ouUsuhdx5Zj2me?=
 =?us-ascii?Q?FnUzrmkVpz80BpFmQxsNtLH9UsEhdbOL1VPANl5sGaq6qz+ZBBwx8nWD7/WK?=
 =?us-ascii?Q?AkbRrI7JYygXoK66UiqRnEvsXWGdDcuSXpHAsrRKZ7l81Sz2TKfGvw51Fpd7?=
 =?us-ascii?Q?NdUvzOBpJG7PMP24pxRskrmtMO5m9NM0mjK3gSZaYwsrZecJIQGPnsILntDj?=
 =?us-ascii?Q?fcRYi4upWLm3ZIwN894mUSESVlbMuBf6BuE3Qv6hDXbpyHeT71AVe9YP4qTx?=
 =?us-ascii?Q?pz7n7UGP10fuWDQrxC4bphtixt5/hSaZATe9bDYTdSZHltoXX6SxgiKKh8p4?=
 =?us-ascii?Q?GOfL9N3pDrI6BRy/1yF0v4SeGPfPJtwDz/54QmXMyjLhuur3vDAZm2aHMSKF?=
 =?us-ascii?Q?1sWpX1yQ667qHWxcF1h8k2dIBz9lRiOgxnK6NdFkUt2h6UBRoYVcjp/iuWkC?=
 =?us-ascii?Q?Kl1Dh/jEyITFWF9gvapql4c3ibsQk2KZOr7nuMoe3SF4WwJQ5mu8MT0RuGLg?=
 =?us-ascii?Q?lfv7Ei2FEtLl3xallwLvXkQfnl3v3iQqAbmwlEEpbZ5O8Lp3Ljg4Z4OVixoD?=
 =?us-ascii?Q?ULXlUEKAjncNcTvHJd39OdDac1QLKkZnWId6+nR8s2sluQ1RGZXsJ1mXA6Ye?=
 =?us-ascii?Q?jmijdfXIfzkTd536dBVpqBmraWYaupYHr9tktCYdIqOKFkYLDi9Bx52MJ9lH?=
 =?us-ascii?Q?xIANKtBSNFIrIS45v1sOEywL1P/43nQbll4Bdm8PlPjBo0ftKQtmCe7hs2LM?=
 =?us-ascii?Q?W1zWFUmCvi7BgxKTWffChjn2UYnRb2OIljefWsmUPILP73BU5c/ljDAdf2Si?=
 =?us-ascii?Q?LJK2Y4s/+pWH5L9d/USNLQpElimr6xqfvv13UqwoP7J6L66KPi9uMQClKCy0?=
 =?us-ascii?Q?W8MRErrhRwvYO5Vct+3RTrKgS6jFRVNA26v31JtFxsZwHO8AOyl/W+FYdjze?=
 =?us-ascii?Q?OgbxCl83yS9fhCxgcOm79hAPVdTCwyqt3EyI+lIf/638s3XLtEHvcZ8FrG0H?=
 =?us-ascii?Q?BclYe6O/RZ8nTnKshftg8rWEFXfHWFvdxbd36tzLJrSO+DDaxIAljJsmEe7D?=
 =?us-ascii?Q?HIlbpblGKxxxp5v1yvJzihJRnj9QPNss80vmu/QvcNG2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b661332e-d968-4fec-f815-08de17146d80
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 17:56:04.2282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u89L8v4AifqQ5i5szmt7buZ9H3ZcbzTeNUyeZVeD4hRcVqyqmLqdibg6Otca9yl8XyKX0DwNRokm852MNhf1RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6256
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

Hi CI team,

On Tue, Oct 28, 2025 at 08:03:47PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Extend i915_display_info with Type-C port details (rev6)
> URL   : https://patchwork.freedesktop.org/series/155067/
> State : failure

the failure is unrelated, see below, could you please forward this
patch for testing on shards?

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17437 -> Patchwork_155067v6
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155067v6 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155067v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/index.html
> 
> Participating hosts (44 -> 44)
> ------------------------------
> 
>   Additional (1): fi-glk-j4005 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_155067v6:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - fi-rkl-11600:       [PASS][1] -> [DMESG-FAIL][2] +1 other test dmesg-fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/fi-rkl-11600/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/fi-rkl-11600/igt@i915_selftest@live.html

There is no display connected to this host and - except for a
forced/emulated HDMI output connector on a non TypeC port - there isn't
any relevant connector (DP or HDMI on a TypeC connector) where the
changes in the patch would make a difference; so the failure is
unrelated.

The failure is
<6> [161.342222] i915: Running i915_active_live_selftests/live_active_wait
<3> [161.343422] i915 0000:00:02.0: [drm] *ERROR* live_active_wait i915_active not retired after waiting!
<3> [161.343426] i915 0000:00:02.0: [drm] *ERROR* live_active_wait active __live_active [i915]:__live_retire [i915]
<3> [161.343725] i915 0000:00:02.0: [drm] *ERROR* live_active_wait 	count: 0
<3> [161.343727] i915 0000:00:02.0: [drm] *ERROR* live_active_wait 	preallocated barriers? no
<3> [161.343737] i915/i915_active_live_selftests: live_active_wait failed with error -22

and looks like
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808

so the bug filter should be extended with the above rkl host.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_155067v6 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@fbdev@info:
>     - bat-dg2-8:          [PASS][3] -> [SKIP][4] ([i915#1849] / [i915#2582])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-8/igt@fbdev@info.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-8/igt@fbdev@info.html
> 
>   * igt@fbdev@read:
>     - bat-dg2-8:          [PASS][5] -> [SKIP][6] ([i915#2582]) +3 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-8/igt@fbdev@read.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-8/igt@fbdev@read.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][7] ([i915#2190])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/fi-glk-j4005/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@i915_selftest@live:
>     - bat-jsl-1:          [PASS][9] -> [DMESG-FAIL][10] ([i915#13774]) +1 other test dmesg-fail
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-jsl-1/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-jsl-1/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-arls-5/igt@i915_selftest@live@workarounds.html
>     - bat-dg2-9:          [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-9/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-9/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - bat-dg2-8:          [PASS][15] -> [SKIP][16] ([i915#11190]) +7 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - bat-dg2-8:          [PASS][17] -> [SKIP][18] ([i915#5354])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-8/igt@kms_flip@basic-flip-vs-dpms.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-8/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-tgl-1115g4:      [PASS][19] -> [FAIL][20] ([i915#14867])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_psr@psr-primary-page-flip:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][21] +11 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/fi-glk-j4005/igt@kms_psr@psr-primary-page-flip.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-2:         [INCOMPLETE][22] ([i915#15175]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-arlh-2/igt@i915_selftest@live.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-arlh-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@memory_region:
>     - bat-arlh-2:         [INCOMPLETE][24] -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-arlh-2/igt@i915_selftest@live@memory_region.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-arlh-2/igt@i915_selftest@live@memory_region.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [DMESG-FAIL][26] ([i915#12061]) -> [PASS][27] +1 other test pass
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-11/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][28] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][29] ([i915#12061] / [i915#13929])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-atsm-1/igt@i915_selftest@live.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-atsm-1/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][30] ([i915#14204]) -> [DMESG-FAIL][31] ([i915#13929])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-atsm-1/igt@i915_selftest@live@mman.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg2-8:          [SKIP][32] ([i915#4103] / [i915#4213]) -> [SKIP][33] ([i915#11190]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17437/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>   [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
>   [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867
>   [i915#15175]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15175
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17437 -> Patchwork_155067v6
> 
>   CI-20190529: 20190529
>   CI_DRM_17437: 5742fc7aea99a1326637a7106eeaeac383a1c76d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8598: 8598
>   Patchwork_155067v6: 5742fc7aea99a1326637a7106eeaeac383a1c76d @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155067v6/index.html
