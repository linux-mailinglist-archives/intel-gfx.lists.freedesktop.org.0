Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F9774ED87
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 14:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D52610E381;
	Tue, 11 Jul 2023 12:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8E910E382
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 12:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689076955; x=1720612955;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=+0gzb42tJTpThxo6RWZtD+hu2OsfklnPwr52OgXeBes=;
 b=A8+0cTgDI3hlus6PJgIny4jCJo93tKlvreU16OaOVhYK5MzaW1jVAE8q
 VCiehQvfFQ4Y3d8LkaDH/JAPx7goA2rERBW2dQXGfOZkf2JQVw4sAuCpx
 L6XhZXlsjCdvx0H9xGqo7DVdwZMxeCxpc1zcnvIBow4ULaT05WsHztt0t
 LVw3aBj3QX22ISrmSQl2KNbTHJRGQ9ltdB8LQ3IMlMOUcqiPELWZdA7g6
 QjFGYjMHaJIGitzPWoDrlHtv0GyNAuPdbZYUxB4aPzycrylXFhHQLaCJ7
 F7YJr1lrWrni064GTo/NCzWPyW2/TzlPATxtBBwAf+v5kzf6l3+iVCXnl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="395385817"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="395385817"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 05:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="698412569"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="698412569"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 11 Jul 2023 05:02:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 05:02:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 05:02:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 11 Jul 2023 05:02:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 11 Jul 2023 05:02:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B3rfioRbSlM9b6B1Lm0T1Ne2UAPsdfaZRswrMiN0R8QbwtSty4wHL3GVTLDRbmvb7IVcOENeua04jIx21yb8HqURCPFnHr8yOHE+5IlGo93q2te7Emix1X/QFQO+R8yU86IdRW/vvTySxlIG1OyGcsCHTNYmLG9De5lrXwlYth82dOuPOLR1Zw8f1cRTY+GapHcXUvAn92OMQQRLBEKOjVDOvaus6i8r10PNfsVEeq0MKqyhJ4cX8fYVtA9jB6vq7Q5t1txreyAq6WhMIGyJ78xLdsSbj3SAFNlN0/Ua39Lj/uQyNj0/nPlLfl2R1C7oPbNffVh5uaJaUgGBR+Bhxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0cKkN9h65vhkA3boC4tS1GaR+0IGYZX5x0+Olrm3bMY=;
 b=OGZugA/oB9RFasMEvfoknJQY7/G7BEzrf0a9RJrypB3fsC/bsKz1a64DrYfVQlCRjOG9+0lQrbVGxyDypCTbN+HbzGNIZ7EvuAzNpsmxRDwoA4qRvEQrPJw+x1vbW2bpKg/JjkBnApdjJlfP7HoGXLqTqawBCGW+PWEuOe94sSFx87whTtG683EGagc7P2++EVkHyBFHjy1cuOcKmx2GfyqngLaSS0F6c/bJ0bLpCvUz466zH/cad5d+5g/rpHoIDkhq5HDyUpTGRI2HH/p73Xat+4xwOavRq7FdJdYi6Bs5Efbg/bsI9YaAbJKKTC3tn72Sn27C45VZDE04YrRHmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS7PR11MB7888.namprd11.prod.outlook.com (2603:10b6:8:e6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Tue, 11 Jul
 2023 12:02:17 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::76f1:f126:d404:9ed5]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::76f1:f126:d404:9ed5%4]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 12:02:17 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230711110214.25093-1-jani.nikula@intel.com>
References: <20230711110214.25093-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 11 Jul 2023 09:02:10 -0300
Message-ID: <168907693005.135984.10580237550326861666@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0037.namprd04.prod.outlook.com
 (2603:10b6:303:6a::12) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS7PR11MB7888:EE_
X-MS-Office365-Filtering-Correlation-Id: bd507083-878e-4deb-61cc-08db8206abf7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2JU21qvd4sp90CyQs7kAodZJ+8lq2C0NEOTdyx5Utxay44JnIgmIDKP3VNjSyaRieee1T3A1YdF3T5r2H6EjMu1MbZ1deoSA+vCt4BRcA5aKAOle0AazL3wubsAIg5m4tQeuG/wqxUIKZGoqRij0uwHB0HRgdj3O6LxnGjH9WQeTv6yD62BmSpsCQfy7PkyDWHAelTwzfkAk2xTB49XScbT5udB0TnstOQbnixi1BZn6YLSe/jwPlJqcUFhwIRGm9hfBj+0FWXlnrbBSxM2MvO/D804nQhwUgIBFu4nUthNYRV1x7F5/GyIrFC2DN7aGle9dtsccDLw+zHeinOFLkoc4iUF0bUtuu5LRuXmzh9+E9Ira1Y8w97UIbhM9SmOTTs5Gq1KFEXqlDkpSkP0EYJY2qyuAJOfaCNtgJ/tLNQghgWd9PPXQO/5LBATAnnqlcAjD/PWBQqbbcIwl90dJ8aP2ev8fF5zebLclnw9uvL26eZIJaqf+zNkJ9vKHQEFhcZcgQF8bwM2ktLXTPlDBvTKJ853YOz/pjzsKJ5q3nO1Y4IwlEo7ktWcF3BWsfOG4C3oryuxggffoc7DBb0Hx5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199021)(83380400001)(41300700001)(44832011)(2906002)(186003)(38100700002)(5660300002)(82960400001)(26005)(4326008)(8936002)(6506007)(66476007)(66556008)(8676002)(316002)(86362001)(54906003)(66946007)(33716001)(478600001)(6512007)(966005)(6666004)(9686003)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1R0SUZFVy9ZSWQvUmNMdlhRRm54dEJhaXo4cWc1akY3YXVFWWo4ZWM2b0Vk?=
 =?utf-8?B?cU9MRDFIYkFSeFFmMkVNYUlBdmphR1VtM1RlMGlUcjhEQXFpejNpSGF1Vi9O?=
 =?utf-8?B?MjlYYVI2UDE5cytabi9UVjk4bDVleWd1MjZMcklaekFSWDBXVVdmaVdZVFQ3?=
 =?utf-8?B?RVhGQmRlUWlwQkkveU9neG1XYVoyMkNyeDNxU3ZxbklTY0lFWWZCbEYwcHJq?=
 =?utf-8?B?bWpFalB5UEVkTTV0ZmEyd0FwWFNIblFvaFVrd3pWWlFiZjVSSVZyZ3JWblpv?=
 =?utf-8?B?RnVKRFFBSEMwUWx1UjZnbGxmdWxpSHJWc2pVWG4xZlF1RGJIcVFQYjlENy9B?=
 =?utf-8?B?blNZbkZYU0REalE0ZUdvQ090eWlpWXZmelZuZm9xbkZCWEtpTU5Zak9mamtz?=
 =?utf-8?B?TFZnSDBNNnFXYUZUWVlaaUw0dVg1WHFFcjBwTmFPdGh0cXBXSVdTMkNqOEdi?=
 =?utf-8?B?b2RwWkJCWXpjR2FYaWVLY0N3MVFXSC9kVTJaMzZmbkhPWSt5Y24yOEtQVGZI?=
 =?utf-8?B?ZTB1SHdCMmRXL3N6SGx1cmJzaXl5V2JBak1pRVl2R25RMVFVM0pDTHBrb1BW?=
 =?utf-8?B?aTBPb056RDh1WlFWUm9uK2N0Zk5kWGtrOXBNSFlQdFBVTWZLUXVDWkVlcFdz?=
 =?utf-8?B?aUM3Y3JodUh1ZngzVGhXZU83N3M2R0RNdUNLYXBHSm96VlgyamJsMmNuSldj?=
 =?utf-8?B?S1pKR08ySDdtR2FhQWxrMUlRczFaNUZuQlpZQ1kwaXp3b21PZXJwNTZpMzZq?=
 =?utf-8?B?N3pmTURZNkl3aDJPTWZ5aXVSSWI0L1dQWjRrcmJ0WlVmV3BGVC9YbWcvK3lx?=
 =?utf-8?B?RExFTktqRUd6bHZGak8wQW1Kd2Nrd3N2Uzk0NHlGSVQ4QnRhTlNOMXQ1b0kv?=
 =?utf-8?B?VjRKRkpPOFJjc21UMm9aeVN1U1F1RWJweXVnR2NxSVJzRFd2Tm5Ndlh0ZVh3?=
 =?utf-8?B?U3Ryc1NnNjJTV1hFWVVWMTZySkoxSWY0Z01zdlBDWG9sUDVQOVpMemFSSHFt?=
 =?utf-8?B?amsvLzA5WW5jSlZHVEpxQ1l4RTBEMnVubEVETjlLcThadGp2RmlBeWVFM2R0?=
 =?utf-8?B?UG00cXpNbkpYbm42YllJalF2TE9XUzBxa2xvR2dTQ2ZvK3YrWFVCbVRiWnpS?=
 =?utf-8?B?QU5SeWxjTEs5UFd0aTBhT01JMGg0Mm1ma3JtcWZkRWtIN28zZXFTdFlLcFhh?=
 =?utf-8?B?aXF1NTNIZU93cGZ2d3VBYWJjVVlaS29YY3prSkN1b29hQ0JIcW5oUW1tSysx?=
 =?utf-8?B?Q1o2Z3hNM2xwV1JEaDZMS1pjM2Niek1OTmJxR2lsL1haNitPcDFSN3VqT0lH?=
 =?utf-8?B?aVRzbHBqbnBFVWI2N0pobDVnUnM5OURUUmJyeTV3ZVN4dHhwZ2xIbTYyUE9Q?=
 =?utf-8?B?T3R4R1BKMUtoOFpEUFR5Ry9kTDJCVjhGODJrdUkrdG8rV0E1eGt4dStDVHhQ?=
 =?utf-8?B?UUdjOUw5eFRCL1laSUlKcFZxT09zODRMNXVTbW9NTlZ6VDB0eHBVbVpHL1c2?=
 =?utf-8?B?dDMzS296SGExMmh6OTJrSWQ3NEZpMG5aN3BVankxVkJzTE1mRzdDdW1wcXZa?=
 =?utf-8?B?NXo0eFNhL25qaHhZR3NzSjJtMjBmOEV0dXU4b2c0VURaQ2pHNzZqQ2NKSmRj?=
 =?utf-8?B?QVluQldkZlBScUxvQmNqOEc3MjByb3YzVzBjSllPL3JzanJJTDlwMnlscGx0?=
 =?utf-8?B?RzZ5YmZXelJLSlNJdlE1elAvN1BLREkyZ2J5Tm1SQzV6OVR2VjZtMUIyZEFL?=
 =?utf-8?B?Qzl1ay84QnBLQ1lwby9uL1JmWnlsa2NFcG9JUjFwQTZzUXp2Yld0S2R6Q1VW?=
 =?utf-8?B?WTE3VEpCaUxKUHlIdTdEVnI4NmQ3aTlYbHFtRk9BVzZmdFBMVkN0azU0aUgx?=
 =?utf-8?B?cFJLTXhUa1BYek1WZllpaUNQTmhSSW8xQTg0QythbkxYZTE5UUFYVmFnZExp?=
 =?utf-8?B?R1lPdmdIMVU1UmhBSUl3Y2FCaVI1RnBsTVVHZWZRV28zaFNNS24rQU5IY0xn?=
 =?utf-8?B?NlIxWCtnN0Y2bnh3TnVRT0dSZjI4eWIxc2ZyVk9UOUxqT1dORW5JT3lGZkNS?=
 =?utf-8?B?UnREQmJ1enlRenpGS1EzQ09BZmpISFhTa25vd2I1TXBPYXc2MlBHNjEyMUhG?=
 =?utf-8?B?bVkyTjRvM3I3Qys1eVAxSEdHMGRBZi83akVMUTZRd3JOMStnbkozNzdBc3JN?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd507083-878e-4deb-61cc-08db8206abf7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 12:02:17.5547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OlRYmgFIoz8yNZU8qaKZGUKDvn+3bpe8SyZ3u3FdbayGIkNdMpfXj/E3xuPDleJ8uwRZqq+0qCIzge8+zgSGMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7888
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: use localized
 __diag_ignore_all() instead of per file"
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 John Garry <john.g.garry@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-07-11 08:02:14-03:00)
>This reverts commit 88e9664434c994e97a9f6f8cdd1535495c660cea.
>
>__diag_ignore_all() only works for GCC 8 or later.
>
>-Woverride-init (from -Wextra, enabled in i915 Makefile) combined with
>CONFIG_WERROR=3Dy or W=3De breaks the build for older GCC.
>
>With i386_defconfig and x86_64_defconfig enabling CONFIG_WERROR=3Dy by
>default, we really need to roll back the change.
>
>An alternative would be to disable -Woverride-init in the Makefile for
>GCC <8, but the revert seems like the safest bet now.

Sounds good. We would keep it compatible with older compilers and still hav=
e the
warning enabled on newer environments.

Another alternative I thought about was to have separate files only for
initializations of that type (i.e. that would need the warning disabled), b=
ut I
guess we would need to expose a lot of symbols for that to work...

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8768
>Reported-by: John Garry <john.g.garry@oracle.com>
>References: https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c=
@oracle.com
>References: https://lore.kernel.org/r/87wmzezns4.fsf@intel.com
>Fixes: 88e9664434c9 ("drm/i915: use localized __diag_ignore_all() instead =
of per file")
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                       | 5 +++++
> drivers/gpu/drm/i915/display/intel_display_device.c | 5 -----
> drivers/gpu/drm/i915/display/intel_fbdev.c          | 5 -----
> drivers/gpu/drm/i915/i915_pci.c                     | 5 -----
> 4 files changed, 5 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 2be9dd960540..c5fc91cd58e7 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -23,6 +23,11 @@ subdir-ccflags-y +=3D $(call cc-option, -Wunused-but-se=
t-variable)
> subdir-ccflags-y +=3D $(call cc-disable-warning, frame-address)
> subdir-ccflags-$(CONFIG_DRM_I915_WERROR) +=3D -Werror
>=20
>+# Fine grained warnings disable
>+CFLAGS_i915_pci.o =3D $(call cc-disable-warning, override-init)
>+CFLAGS_display/intel_display_device.o =3D $(call cc-disable-warning, over=
ride-init)
>+CFLAGS_display/intel_fbdev.o =3D $(call cc-disable-warning, override-init=
)
>+
> subdir-ccflags-y +=3D -I$(srctree)/$(src)
>=20
> # Please keep these build lists sorted!
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers=
/gpu/drm/i915/display/intel_display_device.c
>index e4afa7334c82..8286e79522d1 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -16,9 +16,6 @@
> #include "intel_display_reg_defs.h"
> #include "intel_fbc.h"
>=20
>-__diag_push();
>-__diag_ignore_all("-Woverride-init", "Allow overriding inherited members"=
);
>-
> static const struct intel_display_device_info no_display =3D {};
>=20
> #define PIPE_A_OFFSET                0x70000
>@@ -727,8 +724,6 @@ static const struct intel_display_device_info xe_lpdp_=
display =3D {
>                 BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_=
TC4),
> };
>=20
>-__diag_pop();
>-
> #undef INTEL_VGA_DEVICE
> #undef INTEL_QUANTA_VGA_DEVICE
> #define INTEL_VGA_DEVICE(id, info) { id, info }
>diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/=
i915/display/intel_fbdev.c
>index 1cc0ddc6a310..80c3f88310db 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>@@ -135,9 +135,6 @@ static int intel_fbdev_mmap(struct fb_info *info, stru=
ct vm_area_struct *vma)
>         return i915_gem_fb_mmap(obj, vma);
> }
>=20
>-__diag_push();
>-__diag_ignore_all("-Woverride-init", "Allow overriding the default ops");
>-
> static const struct fb_ops intelfb_ops =3D {
>         .owner =3D THIS_MODULE,
>         __FB_DEFAULT_DEFERRED_OPS_RDWR(intel_fbdev),
>@@ -149,8 +146,6 @@ static const struct fb_ops intelfb_ops =3D {
>         .fb_mmap =3D intel_fbdev_mmap,
> };
>=20
>-__diag_pop();
>-
> static int intelfb_alloc(struct drm_fb_helper *helper,
>                          struct drm_fb_helper_surface_size *sizes)
> {
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_p=
ci.c
>index dea3609fc496..fcacdc21643c 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -38,9 +38,6 @@
> #include "i915_reg.h"
> #include "intel_pci_config.h"
>=20
>-__diag_push();
>-__diag_ignore_all("-Woverride-init", "Allow overriding inherited members"=
);
>-
> #define PLATFORM(x) .platform =3D (x)
> #define GEN(x) \
>         .__runtime.graphics.ip.ver =3D (x), \
>@@ -846,8 +843,6 @@ static const struct intel_device_info mtl_info =3D {
>=20
> #undef PLATFORM
>=20
>-__diag_pop();
>-
> /*
>  * Make sure any device matches here are from most specific to most
>  * general.  For example, since the Quanta match is based on the subsyste=
m
>--=20
>2.39.2
>
