Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8F15BA05E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 19:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C79410EBA1;
	Thu, 15 Sep 2022 17:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF7810EBA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 17:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663262749; x=1694798749;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=P+PKXEAN177Sd7dHjxlNpRNSAFcaoI0JGv7zoSwo1yg=;
 b=HRi4cTNG/jVk7AMAfcdi7lxg4aBnae5/wWEJPNH/AOpT6kpLadsBX7i0
 atHehe3F8zrYIea8cLk/JiYzw9S6xVaupbjejWJLFxoGNoNeq87aIJ+q4
 lpA5srkbpUYd8HTEfS6whsiQGAUIMvuzu28Tgh+nWMNva4jt+RTFwRESd
 3SKGZHvvvG8Tuuqqu9QbUgcedS0x0RBV934MMD7K+pYkGsblGQwgszQSE
 6vpEWRweThKbui8v1vYAzSNhJPplYvkCzUKrluEWNQnFumdilO6Vtk0/E
 zVQQDPScZ8X8WrxQU2Md+eFQaKXOSGbtuJLm3AtKZCXmjmklVBYj+feRT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="285827837"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="285827837"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 10:25:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="568519515"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 15 Sep 2022 10:25:48 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 10:25:46 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 10:25:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 10:25:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 10:25:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPap2+AH0gHYRk1FZ0u8214FWQMsivkENPsYCInlfe3Ks+GNIUp4O2tcg8r7j0YIiW/ngfM46NkJ3uMxFmtB9P1jTjxKPmI3eyIRoSHI8uZDuftK/h/KGCm8UhZzOTSuQToaqr1esm16c8UFjES7PglCmuezVLuO28QJ9wExs2jYWYePpCMiuPORY5+IfnVPDcyERET8AWEqx4SpMyB+9SAmMdKTn1Xo9lMzL25AdT2TBKApFp8Kg6s8HAzzkA03Tw/LFffSfOfR+0hRkrdRGWVLHoGdYKcX87rqnc7BplYCqcmL8qaXNPkIk5ASrz3H9FhxP1wEgpgKuSRHMO2wdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7AhJxeJ83nC2124wMqWH/HlCA9KZnQ5pFCGOx2414Lk=;
 b=WlSwWEioPI/2AeLzDou8ExTE1+HHsN/sJ+viJcssHqXYK+Z/YEHVXNpRdmgEJRSXAFoWHHnS3FFhY/GX5MylhDnU+JMDS4Um5kNeCiclO7P72SsyqHEKND+Z/Od8AHhaqqcGM7Pm7aj1WZAQ+HLpL6IKxE1YaHPJLIQ0JurEV7QtyCKfFpGOQCsZfpP65N/Z6xGcNWb4pUi8PHMER5pnELl7TMR6zSN3Yme6BuLRyZ7NenA8Dsnlm3aFLenybIfY8t35EDvf40dAZsji12dkVoUvkoUm2kc1375JVTFuFAQpzFrG5DJ8wx8v1YrlzM0Jj1PDIlxYF6DNhRqJxeCTzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4842.namprd11.prod.outlook.com (2603:10b6:806:f8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Thu, 15 Sep
 2022 17:25:44 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 17:25:44 +0000
Date: Thu, 15 Sep 2022 10:25:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20220915172542.ld6gjcvsgcona6uv@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220914204339.4063942-1-lucas.demarchi@intel.com>
 <166325149992.11971.5415740713808867616@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <166325149992.11971.5415740713808867616@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR17CA0031.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::44) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4842:EE_
X-MS-Office365-Filtering-Correlation-Id: 60c04e4c-c8f9-4f85-c695-08da973f5206
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wwhkOkhACZ0RcPUnswsZa7gZfkuOgfSeLW7+AxNGgtOY44UYr1Pk/MNRAdVDa8kY3GNvZlNaCIx+lev2pEKTXOAhhV+wnPdq/Su75qdMBYABBuRaESlsvlw1JdUo6DItTkl/N4pJhieUuE9ZgjBFWgyRZxzhiS7AEaz0AdEIi65Q13G3j0Esr8ZpRHy/Shmic4MbU9G7kvX1HgcubG5LwiuO+Ro78ZE802zeftIpSqaaOjuIeOrHzw7Xt+j8EpRpf+Fo4sh4hHc36WiNEYC9A0EwPPjXlVkhyDOYjygEUrBs7tAfcTMnGQpOhluZbX2LOIEOSxD6y07yvfqQkzbjifMuNsu+QFKrNlMYpuoL+dbuFx6gJgyOVzCbX28nkApl7R80GJBr2x5AJzhjIOdcoolhb3tBnNeuT7RCiqU4VJyTNqv1nnRPeBKO/+0nrnDqp0bhzlPVPbUoJB8RTwze8qGb5ddU415dAFgUWi7TpWn/r0vJ8tZw3ljHyRg4fAX2cPK1+5n7JRffk5Xd3D5/rwqMyB8hlr1Y1W7ohrn3M1k/LWvkdRW37a95QenlBr2AZsytBvPC01JhHkV+X7+U8X6luBjSXVvOnB6152GBO8r2NTSDBWfv5CQW/WRkZss26lBtyU8egbrSk/hsaNDd8ZFteVHynTXPbBHiCIGjh8ZB8CajfdMbk7MZbqXc3oTlCEVFfFWWrutHhSeM8mc8HkOVPGus0xBmoT64WnuIQdHhswxmyZ5WI/UUmnc8ONSdSqe/qxfqbLP5SuRdHK8Xyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(136003)(346002)(396003)(451199015)(478600001)(186003)(6486002)(66556008)(8936002)(66946007)(2906002)(9686003)(36756003)(6512007)(83380400001)(38100700002)(82960400001)(1076003)(26005)(966005)(5660300002)(86362001)(316002)(41300700001)(6916009)(6506007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LApbyZNZu6ZUX5Qo0+AUwA3HyUenZePtZaEGI7v/HZD9LFeSYcRiD1Ewrqnm?=
 =?us-ascii?Q?bw1S9l0ToiJugqTDbF6L5s5kdHXGNnPw4KmkxHhbKX9Ynn5Ep+uBDpRYWjyp?=
 =?us-ascii?Q?SAmDMWRCu1y4hompXRoNFpdH6VVj5DhZyPjKw9l9fLHAoXjHDIQ+0eKGglmo?=
 =?us-ascii?Q?Z7iEOVaQWKAd/eJoN0hFEnGXno5zIY3gH+OcxtS8Lh14m+5+fcx5k87QQruY?=
 =?us-ascii?Q?No0IXZxfAPWj1mv5KO2QgVBtOFh5sZubid3AFY2QtP1YT7faLVASWCkkJKFJ?=
 =?us-ascii?Q?71EGcjD1A+LB1646W399e4Yqu4je9y9URjWPkngl7CWHMoDA63Fyq948ddzQ?=
 =?us-ascii?Q?ylKmVud0pH2PEnAg14p3uu1+k+orEePeS3pLnhfvpNFq3WxGCjaqB0Nc7L81?=
 =?us-ascii?Q?p8FOT4GZtTmXB4UKxFGkm1nuLUXg6KYtvgl+bz2XNWYiwm5Xx9iP2o65nmPU?=
 =?us-ascii?Q?c1gsrxVt1p4DdTVArdApmDpgs5FHPiNiVbz2bt9Npt89/jrwlDurD6sf9kiB?=
 =?us-ascii?Q?OfYBOKyVBtN8QWu2pJvoCSxADMzJICK8miZc5Sz188maBgwDNWrI4Bgl5R4Z?=
 =?us-ascii?Q?ohfpqEyx6bOVgDt7rDOQKdT5ZBp0bU6ig26gSA/KHX0Wj8utBmLNs95fh+TW?=
 =?us-ascii?Q?AVWQ4wwORq78UzHrabh3EPnxLGIdQzf/XXyEIVt/PL+vooBxzA2YXyw2J84B?=
 =?us-ascii?Q?dEKGuSPJDIH6RmKAzVabUy2YwX1ymL8u1CCdekpV1Y91FLc9ol3OOSztOUR7?=
 =?us-ascii?Q?MNbb3ZwzXBD+pXDujheHhDn8H6hJQ/fNJGdPpngu7VH758y7RV+K8Fm5i7jC?=
 =?us-ascii?Q?y4jsWGa2AJWFxxY2YxdbZCyfq6x6HdK2oe3ZUBDFK7GpTixPxKGN5njwClCd?=
 =?us-ascii?Q?c5HvOgvd8858JyS/pgIVPgDe3MLRg4JTmXyLO9sIEOt6gkzwjCinD3pplRQ6?=
 =?us-ascii?Q?I+AJ6cUFBGzVe4gu5bVZZNv9YNeXrAh71bBkvPWqp5FsSX5hv6EvDVdmDFZB?=
 =?us-ascii?Q?4rW10SQ0F0Yn7e/WdSdFirj5x3Hagmvxf/KtJwCfZJ/zMQNhD4EKtLi3kucb?=
 =?us-ascii?Q?QdQBX1CbSoOSeeNgTG6+nhe+mSnqE7IsrZDd5jxpCAOGzAuGqhhUh5GADkxt?=
 =?us-ascii?Q?lwgLUCSaHjaH56FY/JHGNtPtJuytZv27zYrE69aeFUDykAceXehEsWSmh6ch?=
 =?us-ascii?Q?XfIgrqTag9huVfCZb3zJtZr5T/WDp6+EPgn3rGc9HKw+SJ0Ho1nK5nf/WF6c?=
 =?us-ascii?Q?KYY/O+hrmRA7Z2zqfWmlYXVerrgoMKr0K93KmY9dUJV4bF2WQDrgg199gB1N?=
 =?us-ascii?Q?PKvWMKpxHnzqirFIF4pmYRULFfHkKSqWN4WszNSniakYxwGMmVykUnzlhcE4?=
 =?us-ascii?Q?X1QuLNoTfPBT3X1rcaE5HNwnywgw/H/oYEO9TY8net+Qm41nYiQ/rpoZU+BA?=
 =?us-ascii?Q?Cs2UekTBR2VMrMVuDUh4bybYEBC/PafWXYWBWMyjTO9nGleOD/UFHnIA2L/v?=
 =?us-ascii?Q?p5Bi4zi/LXHri+bfURy8wNH4N8OXvXn/2tVjROLrXW1yQEia2RGzXodv8tLD?=
 =?us-ascii?Q?VGKQDGpGP8d6541nH8bXBad+tFDYJNsNCg+BPcIE8j7niJUm6aaH75OuuNrO?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60c04e4c-c8f9-4f85-c695-08da973f5206
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 17:25:44.2974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yp6qzW7C7lNcVlE+qlGF4O4D/9DAeCEaNzqcbLCksokShggDiS/VQ6nkTdMPJH3gvZLBHAyZGphwOkNmoMv0tyjbvSSR97/lg3qtjaM6C7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915=3A_Force_compilation_with_intel-iommu_for_CI_va?=
 =?utf-8?q?lidation=22?=
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

On Thu, Sep 15, 2022 at 02:18:19PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: Revert "drm/i915: Force compilation with intel-iommu for CI validation"
>URL   : https://patchwork.freedesktop.org/series/108576/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_12136_full -> Patchwork_108576v1_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_108576v1_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_108576v1_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (10 -> 11)
>------------------------------
>
>  Additional (1): shard-rkl
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_108576v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1:
>    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12136/shard-tglb8/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108576v1/shard-tglb1/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.html

Unrelated. In both cases iommu was disabled. It's not coming from the
compilation options though:

$ curl https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12136/kconfig.txt > /tmp/old.txt
$ curl https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108576v1/kconfig.txt > /tmp/new.txt

$ git diff --no-index /tmp/old.txt /tmp/new.txt
diff --git a/tmp/old.txt b/tmp/new.txt
index 5ed7667..45a8983 100644
--- a/tmp/old.txt
+++ b/tmp/new.txt
@@ -28,7 +28,7 @@ CONFIG_BROKEN_ON_SMP=y
  CONFIG_INIT_ENV_ARG_LIMIT=32
  # CONFIG_COMPILE_TEST is not set
  # CONFIG_WERROR is not set
-CONFIG_LOCALVERSION="-CI_DRM_12136-g37b0cd34584f"
+CONFIG_LOCALVERSION="-Patchwork_108576v1-g37b0cd34584f"
  # CONFIG_LOCALVERSION_AUTO is not set
  CONFIG_BUILD_SALT=""
  CONFIG_HAVE_KERNEL_GZIP=y

Applying with ack by Petri.

Lucas De Marchi
