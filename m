Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C9681554
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 16:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9FF10E033;
	Mon, 30 Jan 2023 15:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75A110E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 15:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675093361; x=1706629361;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yBH5DGziqkunB6U08RxIoP+z6zwGQypeE5mfbchk0Zk=;
 b=AtambReIRS7L7a0RUeGLXQBOSj/vPvlwuZcySga7MHaPUSqiBMKUuQDD
 YCG2T77MaKwp5ckU2gXxP+VYdpCRF7Upeltl1TrIytjcH6iYl4r5cZVSv
 FnFVmslIhQkKNC1PZN5cIRRa4Re8ckrRJogglJiYWiTWz3p0f60NJIIrA
 QRdFEUzsl2LijySgTh1AN2M8mumWn0zJvMkbk5CxsQYoux5bxAB6I553n
 EY6v3vf3hIAAxHRZlg280JC3z65pXvps/exFy7j1Sn8IRErtInJGTEd7b
 sHUMRI2zC+v5sCJ/F686r9EN5degbFIQRywCSijgcaSUEf1UQdsDglAyW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="389951514"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="389951514"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 07:42:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="614070670"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="614070670"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 30 Jan 2023 07:42:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 07:42:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 07:42:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 07:42:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jbYahf3bCWOyJQK8bj2kNKK5UCZqBFGM0Y57xdLeaqwf/3Oh/cMeA8ZIEKUOxSb9O0vOecgBFePhe2cTZyCR41qBGQikR9iDqn2squw3FPGAKV7O9/TVRK7W4hplF41LNMlDpnHFgFbuJrSk60KYZfvDvIFFf+mbUgOmgwIJCN8t3m7Pu7RrfLDxkxuIeLY58W5nfqsfk9UWSgVdWnfKgJNa2EUCOhytzJjcro8lfG3WGHDcuWsrPySrRW37dDZ4IKtWdYVhcB7BHoqhXd4pMnE9pLRq1sMbh6w7HCBEfpLqg7Ukz4eMIZ2znDACBkcT4uYh535NgsPHdEeEEi5Kdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPlY9xZYSi7m2MMKk4Nf+auWah5G2VWlnlQW78diAdw=;
 b=JVQXRhnFPko20E/iMYldhX+wnKX8fz9sKZEN0OkJOeuaj0jRTOa4Y8OGNACi4GhVNBAWycmXNM2MzDyYr/18aGCUdhVC7jCciw0s7Ak7lPWFbnjulLHRWu67fEyIjSzdviVpiYYzSjPSucqvQJdjitS/Pwh6SOqy5VAljzGEH78rgS4jUrBqtxAT1TzDDxGTTYzRXSCvbJZXCJuBoKs3nFKJFqkj39V1UQ3VBxaTx9krmp9JpGdjRw+Qtcrbu3LCEdTSPGNh2gLy66B2nU9CdEBnPweLj3sVb6lXxxq1uRgzIU0NwOlo+7mMrskIg1tehEv8r5TPWk6hrGz42BX8tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8138.namprd11.prod.outlook.com (2603:10b6:610:158::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 15:42:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 15:42:33 +0000
Date: Mon, 30 Jan 2023 10:42:29 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y9flZcEDc/UEQkq3@intel.com>
References: <20230130131358.16800-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230130131358.16800-1-nirmoy.das@intel.com>
X-ClientProxiedBy: BYAPR05CA0075.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8138:EE_
X-MS-Office365-Filtering-Correlation-Id: eb06f704-d68b-454c-1ba2-08db02d89a56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kNrt5pllyG8BXTamU7S7ypGWXOplXdy9+km+hu9ZrmpaNaaHO1ztLsvpKeb5pC1K/Hs9+nsHeS9qiGeFsbsPh/wmmwvGYEwdSnhtY1OzdUpIZlWiky03TODUkvWBmRUbT9avlRjeAd3ey3AVfJ/HFcy+97y1U3G92r/P317OyfBtOUADnN4Ny7OEuDkZmQssrghYacE5ch3pOOTmfuz/inzziY+7mdC/Tz5gMar+0PfRRXB0M50I4Hr2JsxGlw1IaDW71ynb9JyzGm2tV8XYcGJczqMkBnVmxTYN7pe3TztrY+Eg5rFzgdmmlWwFvvQedboWX/yEkXX6FUwXDp3OR7bUYWa4EzMNjxLHLOM5ewdGBToJkWgOydag0PSPBu7+u+Tyz81igQZcjaXA3ag5qAR6UPU1pZhbDjof+BgshgHKC570ntikbD2XOvDkpNVJqvPjDHilwC2stCS3ibKNwl3D+jwONr25ahNwHp85c8BPx5gaqPnLee5ifs4IkyaqRcMuYVMYGyXNEWDMeSAzfyyh0lpljnOVQgmhmKYuzQIMy8/PVD8fAnBbTZBLz9ImoxkD0Hj03/+3up0QdJbPWqKE+s8k+KdU16KAZMnbcJKiGTyK6qyg2sj5t8ho9fnz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199018)(5660300002)(44832011)(2906002)(36756003)(83380400001)(2616005)(316002)(82960400001)(38100700002)(37006003)(6636002)(41300700001)(6862004)(8936002)(4326008)(8676002)(66476007)(66556008)(66946007)(6506007)(6666004)(6512007)(26005)(186003)(86362001)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fVJ1iVoQ4NJMmMTt/umQDf9GD3MbgBGYFErtkpBy+gYs8WuDtxb5mgVjI9Bm?=
 =?us-ascii?Q?yCoJrU99snw7xImviA79r9f/VN9rkdYRbMV9S9HIvas0C7dvYsboJ2oOsC8A?=
 =?us-ascii?Q?MWEUbzJfE5kGZ1JwyAbDXyTY27wwUrddXBjVmpv9hxHyWzn0M4m5HLT7JyLD?=
 =?us-ascii?Q?3+ORlDQuo1h9tEa07NuTbm6aLtrIzdavTYz1fDNhp0y39bUoCwD2ji9D9+b1?=
 =?us-ascii?Q?hbEszRFgLWSotp5JTeJq0mbFgZwjTIamCybNrSPo8tpGqg+1fsv5RiSCjbIt?=
 =?us-ascii?Q?L2OQicGSVDi4foMxdyi9v0PY53iFBLF4PgDWWY6+SJdiknip5uwOlk3NBMYp?=
 =?us-ascii?Q?5l26FnsI8v0H8UTCSoy574FsaokgpxhWvAF+6iwkQQd6BGlg7jmGdA9fQI9h?=
 =?us-ascii?Q?QKjZUH3vjlytrwIcPUNZ+pU51aKmQPBKUVgh2OszBeCIogh13S5tkqn7sc/3?=
 =?us-ascii?Q?HOXRoEQsWPodYzeCxKuABZp/et6M4an5DHK25SWXLmWIhQWRQdWOCPuGOrrJ?=
 =?us-ascii?Q?ibr5ZmbsoILJZoX/PpbmtckYPPwOdrLwaBmpMTwPYT3KIJZ8WtU7eW2dLG/P?=
 =?us-ascii?Q?0r3musbUSKYyX604vGLyPQoQV4Cy2RDoMU7z31NOOWx+ysJaU4vlhwnaoLsa?=
 =?us-ascii?Q?M8QhN7XJchBvTUHEQsLlU6IyIcC/Bbjn/z8wISK8MpFpyEgphrALOPg7mLrY?=
 =?us-ascii?Q?8YLCLEzYvoILDpQ+pINJB8niTgJ7Il8g8jbvm3MJU+wZaQMovMA6c9oYAMsM?=
 =?us-ascii?Q?Br4UdGHXo5kBJquWD5TXo4aOaM9Jm1IqYUzkrlEk5xhd8TpIxAGfFlYKedMa?=
 =?us-ascii?Q?4Hfom8eK2syIDOqirOT3cRW13iVU7y6jokacnoHtJ5n/ufibKQKe8zMExoFE?=
 =?us-ascii?Q?1XQXqsV61/BpenNcYbSfL/1OsD/820BnNftjrJAzmhzCfgDLKBCcX9iLmiUA?=
 =?us-ascii?Q?zrD+rphflB2dt69QkCKF/YAgDqT1MkQfPB8ylOQwKknl5jaTnWJcBw7p8L5M?=
 =?us-ascii?Q?xZYirt1UObti4Mv4mTcJmoWdTQOE489EO1ROnAJoNNvoLcQlI0amujjnTjhv?=
 =?us-ascii?Q?7YwwIZKembWLRy60LiNJGvTvukzkPwI1QUHveX6hNwdw7d4zf4hMZ5l2uJlF?=
 =?us-ascii?Q?5cqGXDCaLTWTfXHeIelwmS+0cZSZxeTy9nKd8nlYeiZYipO9f5C1qwLrlwNv?=
 =?us-ascii?Q?a7c1IyE7oYwP6qX+itYNYJYcbCvu41pVhvpTYKOEALZwEddriVyuZZdst8SK?=
 =?us-ascii?Q?d4oFA6f3gQFoHVOFUWyDzaoDnw6Us0Xz6Vj/nIyXy31y7dXZ1kFU96YP2PgB?=
 =?us-ascii?Q?PQUAg66tMu9oloUdlsvjTZrZsrltSe6mi8ClHoGiDc+LDBhimzQ8uW8eTqX+?=
 =?us-ascii?Q?5FC25OKemx2BupQIYKcwdhaMgBiEfK2NCpqIO71bcT/a6VrfYF97Zx/MuJqm?=
 =?us-ascii?Q?plj8kMFNQAqqEH8Ag3AZEYiSkEJF1NCzcSpur5yPYD+gHMUmtmKE4W349oW8?=
 =?us-ascii?Q?u2R1RIedveUH1LlFHZzwfiFnQE/G42YpNTcLmgcl7OWuOYCfjihHpa1d+Cx/?=
 =?us-ascii?Q?oZyFGD+krIWHjtmAwahzyEG6Bqyc5Kpico0RUYm8UnLJObB2zNHYY2iKK05l?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb06f704-d68b-454c-1ba2-08db02d89a56
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 15:42:33.2191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rG785NJWf6LtEoQLKXrfdbVbDdDrr1F+216yuYpLYetfcL6dXnk86LSzXicZQCLr2yjF44jo+L8Xfy+uTfbc1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8138
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use sysfs_emit() and
 sysfs_emit_at()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 30, 2023 at 02:13:58PM +0100, Nirmoy Das wrote:
> Use sysfs_emit() and sysfs_emit_at() in show() callback
> as recommended by Documentation/filesystems/sysfs.rst
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/sysfs_engines.c | 34 ++++++++++++-------------
>  1 file changed, 16 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> index f2d9858d827c..323cead181b8 100644
> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> @@ -24,7 +24,7 @@ static struct intel_engine_cs *kobj_to_engine(struct kobject *kobj)
>  static ssize_t
>  name_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "%s\n", kobj_to_engine(kobj)->name);
> +	return sysfs_emit(buf, "%s\n", kobj_to_engine(kobj)->name);
>  }
>  
>  static struct kobj_attribute name_attr =
> @@ -33,7 +33,7 @@ __ATTR(name, 0444, name_show, NULL);
>  static ssize_t
>  class_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
> +	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
>  }
>  
>  static struct kobj_attribute class_attr =
> @@ -42,7 +42,7 @@ __ATTR(class, 0444, class_show, NULL);
>  static ssize_t
>  inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
> +	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
>  }
>  
>  static struct kobj_attribute inst_attr =
> @@ -51,7 +51,7 @@ __ATTR(instance, 0444, inst_show, NULL);
>  static ssize_t
>  mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
> +	return sysfs_emit(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
>  }
>  
>  static struct kobj_attribute mmio_attr =
> @@ -107,11 +107,9 @@ __caps_show(struct intel_engine_cs *engine,
>  	for_each_set_bit(n, &caps, show_unknown ? BITS_PER_LONG : count) {
>  		if (n >= count || !repr[n]) {
>  			if (GEM_WARN_ON(show_unknown))
> -				len += snprintf(buf + len, PAGE_SIZE - len,
> -						"[%x] ", n);
> +				len += sysfs_emit_at(buf, len, "[%x] ", n);
>  		} else {
> -			len += snprintf(buf + len, PAGE_SIZE - len,
> -					"%s ", repr[n]);
> +			len += sysfs_emit_at(buf, len, "%s ", repr[n]);
>  		}
>  		if (GEM_WARN_ON(len >= PAGE_SIZE))
>  			break;
> @@ -182,7 +180,7 @@ max_spin_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.max_busywait_duration_ns);
> +	return sysfs_emit(buf, "%lu\n", engine->props.max_busywait_duration_ns);
>  }
>  
>  static struct kobj_attribute max_spin_attr =
> @@ -193,7 +191,7 @@ max_spin_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
>  }
>  
>  static struct kobj_attribute max_spin_def =
> @@ -236,7 +234,7 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.timeslice_duration_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.timeslice_duration_ms);
>  }
>  
>  static struct kobj_attribute timeslice_duration_attr =
> @@ -247,7 +245,7 @@ timeslice_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
>  }
>  
>  static struct kobj_attribute timeslice_duration_def =
> @@ -287,7 +285,7 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.stop_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.stop_timeout_ms);
>  }
>  
>  static struct kobj_attribute stop_timeout_attr =
> @@ -298,7 +296,7 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.stop_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.stop_timeout_ms);
>  }
>  
>  static struct kobj_attribute stop_timeout_def =
> @@ -343,7 +341,7 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.preempt_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.preempt_timeout_ms);
>  }
>  
>  static struct kobj_attribute preempt_timeout_attr =
> @@ -355,7 +353,7 @@ preempt_timeout_default(struct kobject *kobj, struct kobj_attribute *attr,
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
>  }
>  
>  static struct kobj_attribute preempt_timeout_def =
> @@ -399,7 +397,7 @@ heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.heartbeat_interval_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.heartbeat_interval_ms);
>  }
>  
>  static struct kobj_attribute heartbeat_interval_attr =
> @@ -410,7 +408,7 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
>  }
>  
>  static struct kobj_attribute heartbeat_interval_def =
> -- 
> 2.39.0
> 
