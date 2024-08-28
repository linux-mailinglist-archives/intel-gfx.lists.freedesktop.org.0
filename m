Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570969632F2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEDE810E5E0;
	Wed, 28 Aug 2024 20:53:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1BhK040";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC1110E5E0;
 Wed, 28 Aug 2024 20:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878380; x=1756414380;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IPxUhGLZvldPtOBcXaH1q58Te4cM2ZjG9o9t0chmfSY=;
 b=Q1BhK040b8XbcvCuNwKJDQJNY8k+Q0x8a5Q0ozAXyD6xdtLQwY4rNZCW
 sUvoHBw+1hQ91bb9G7X8oNwbZG9dNCaSNt25uQ7UsP38iGPpDZFUSgFT4
 DFADTo0MoC82WeW4hq9TKuLWkza0esZNjRtOEwbYiaCTwCJ99erjDsW6A
 SSDtPKjvbC+uAXgoWAmpMvDRd60Rx0OceZf7id+Yivh8okH+konj1PWnA
 Ze9pmtmozad7cZ206fShKvTcPbaI3AYSloclF2ZRmVbE0h5k5yS15wQYc
 3JMVaBX3EBGpqeVbp6X7lU0/I0A4z77ERlo2nVXUKZ3dfUwa3afvJTd92 g==;
X-CSE-ConnectionGUID: Gu0d/GxqQNCQP9Zz/FVGtw==
X-CSE-MsgGUID: JJLV9HrFSRqpUTjsNRdjRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34010381"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34010381"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:52:59 -0700
X-CSE-ConnectionGUID: Dik2dmuTS6yJQu5MEDy+og==
X-CSE-MsgGUID: 9sC0NKxPTXKKh4V/9UR8zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="67714465"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:53:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:52:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:52:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:52:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l4r2xUCOywYuYn+GLT1vq0Bv7VO2DYX/J4ZO4a+sj/QWKG8sOS7fTS9Swm8Z81xgfzs92TmWxcmjL1tRauYM7C1UC5w5NWXCZG5CI/XqHjGdJ4gMFfTBwjVpSCffM/Me9j+bNdBmTUCymayHm3G3rpE+AHLOABCaL2yNrkVWvZqxAkaac/PaYqi8AT0UI8L0mQsFgR5eqZAkVfmVYncYW/tQ6x9azzhTjuldSkgLe3Ow75TJjQpeVTu94SXOh7OkSjJfUhM52t+Qh/AO4xj4vOzJ3170U8+F7XCopsmZPy4IV77PzovLmUdHRevb+KapWpSgoaMtJbztKQh70cHUFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIbn0hheXic4xTHLzKQrp9QVD7R9sitLTGfyQ0PwqDo=;
 b=M3OOF+xG75/gOR/ueLxB5SVY96baQ6hYIklT7N1G20+SDFeTsbmh3az8QkORWgv3wmfc+mHk/LUeGW5xZHJpqOVb0zIK6V6VdVUup8iw+jVDImKwsENyFQpDK0jVdxSAZ0jTHhJKlb7VhKz7p5nN6KVakoURd452H3DtxIB8H6VqxA+NDp+weCkZo31AMPB/rjoHZU6sZWNNoufdhqsAZn+iLzEQQiB2p5vpbt6z14RUDdfozCA/0GDnyYpqkp2kfAUPJhKD1G8swcJabxoyFItLgcJJvkPUZ5M8hDCgAK75ZsLhfMfGC0tJQJmkFs2uAS+gldYy454OHyYrThsm6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Wed, 28 Aug
 2024 20:52:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:52:48 +0000
Date: Wed, 28 Aug 2024 16:52:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 9/9] drm/i915/bios: use display->is.PLATFORM instead
 of IS_PLATFORM()
Message-ID: <Zs-OHYuyLlBE2Omc@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <3957cefee1b89d5443297248a806755d2b001b7a.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3957cefee1b89d5443297248a806755d2b001b7a.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0134.namprd03.prod.outlook.com
 (2603:10b6:303:8c::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6676:EE_
X-MS-Office365-Filtering-Correlation-Id: c0bc55ab-5cb7-473a-f124-08dcc7a35fdf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bcubtXMAe0ls9hRRZhXjh44e0SUCmnELEOrGD2TYotUiikr+msmoItasK8zj?=
 =?us-ascii?Q?868ycnABH7JYdtahIcNp/yoKH2DLUvCWNnEq3cHwro95EcOpqLe/8mFQvTJE?=
 =?us-ascii?Q?SH2vwhciw5InaYLTDvJbf/3kAdduHTAolFY6RJmuWCoKuCr2K6QHNC+zoOc5?=
 =?us-ascii?Q?8IzNS7MebcOQT1I/EwGaWkJjsiQJarXGIpIoLRo57NfkjPeGAisrBvVmQjFx?=
 =?us-ascii?Q?j9Ryvr4wiL7WpFguCJZyKRwDl/5EFPjTx9A5Mu/16c9XFb+842Gq8a3/UyqU?=
 =?us-ascii?Q?zl0Ytnt6aqFfHmQ09pBcxOupJv5+kDbRehsl95LUyYSDBB3uFex9U++w1Gw4?=
 =?us-ascii?Q?OvVzhLHDyxnqZd+/sSdEO4wnYiH/N8HdulPbbYIQ6M1iZnozCxxjdVc2AYQf?=
 =?us-ascii?Q?YtsgIMbcOi37KBykdXnDS4OHPJi+8i4gOFN5tgHntKYdDiFpwvzUHS51Ci7V?=
 =?us-ascii?Q?HdT5O1aODnhWwWOtnBMyaGIIWotg66xnwX9W51mFBvpiDfph596zOJfmgmav?=
 =?us-ascii?Q?KMBpKw3AWy0K3aSlSDZS/y7kEpFePgoRhbuklPdW3aIBDzEGiywhPwM521w7?=
 =?us-ascii?Q?UIMAygnL01e+bz7Yr6gDIjvZVsii49jY3ImOD7z/OFJHK+maHqhZMqHIP3Mo?=
 =?us-ascii?Q?cD/AXyLJ10KqMqliryxopm2GtP0UMI5zvxX4oBbXmrbix43MAKsjHlX2PgWv?=
 =?us-ascii?Q?KZMA936GrsWmxqaxUyERKd8N2DoBE7XEnGA0+84Zh91Wp1oNUvZxw6IDrd+y?=
 =?us-ascii?Q?LnBa4PV4RSbWxLhdiK4fcPk4GYIrWjB5D033JdLJQP0bmyTBDIYLHXA58QRH?=
 =?us-ascii?Q?lim04rqxgXYPV/NRWC9Q2gi+puoPCB5fUgrPsguZokgA57ExkY0WKP8ZrPgN?=
 =?us-ascii?Q?3fiuawkXEd2EHZ9FejmlVvNi+ma0XJQqP8j5HdPjm/qAfpFXmsLCYMKXj1Sk?=
 =?us-ascii?Q?03dVxy3vK49dZekATlumRrLg0eEtG4FtFphWkkqWCUEsFxo/FK0D2633YcQe?=
 =?us-ascii?Q?VIlsz4i7s2Gdx0DWHqSRptd6u4gdXn2mqVO9Ao7Q8M5OwKF0v20pI2Ued5y5?=
 =?us-ascii?Q?CeSnxrmWCaEKQGFzybaU3Vjpr58w3mgd2PV9BhO2/ylVn7mClXD0fQnuaa1A?=
 =?us-ascii?Q?EkxrKAXgxEdEwj6o0GLIqsQabmVLERVMhNew7zom8L5ONzHR158pJnqu2+Ji?=
 =?us-ascii?Q?VmbCGhjxV6c+8HMUFZkcXHiP3U18AuKqp5r2sa0OTf3I71/ekr4hpYfgCPbk?=
 =?us-ascii?Q?Q4TGQWS1Nnzqhw/Yljbg/NchDuANw5dAPdglpMH3a4H3icwaoPgRjkKHBTHn?=
 =?us-ascii?Q?xCIFs2U/+ga9jKcgGDIXwmpM6OzeDALgDFv4+dIwzG1xzQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZvpotCd2zVPnxVU1FRjpRgQDoPhRV9GgKqlJetoTZSydmfZPEM1K/vCOCD67?=
 =?us-ascii?Q?pHQ39LVyuXQwJeCuGzaNsUqMtQnNz0PItrXyaoJBC7lOoiBLuFJDaA9OFLTN?=
 =?us-ascii?Q?yoY7FIZmgISEfnNlqYS6Zxe8gXtf9tmSbpZeAJzkmvVaIdm3exLcpS5I/3mR?=
 =?us-ascii?Q?9HxhbNHCEbimZrOD/8f3CCNwbgMkc286xOWuhQNiKJs2PlcaefPMVhms723d?=
 =?us-ascii?Q?ygJgYmx22DUnZrYAM5BRziGx6dfnN2J+ZqSTheqg/7UAwoy3U6R128IQu8ZN?=
 =?us-ascii?Q?jhj7cAlIFXhYoqMdWB8hc0Il3S1GENRCBY0FWhQYh275Jt4El1xk+xT/XPU/?=
 =?us-ascii?Q?28WIbt1ug9RobxQHRn195NWSJpjQbLIpS3cDXNLqjL3pyddrQHiDsLSDiVEx?=
 =?us-ascii?Q?IzHeqHsS4GkTT8MBJ3ZyZ/EjatPeGDdjNCoLGWdSIBeeNbRlBejKultC/Rbr?=
 =?us-ascii?Q?62enbyGp+aTdGKwEWBXNDdPMyJYm+m7ASPZw9nQAcfK4345exSXsiyoB9LVj?=
 =?us-ascii?Q?/G7706NOEy6o4WzVjPkkGIPSxzI/zjK3j1kACW2GY0oawm9I3pUfBAZM2W6w?=
 =?us-ascii?Q?yKiDzPtoVFNUMooFATqZi8laOqET6gHuUTZ3cBER0aDFxpjU8yRQJxFh8AM3?=
 =?us-ascii?Q?fOyfdVhAiDPpTpsGBv64jElG8W6ICN+RaghODmXZJ3mHUi002t+I7fXj1uaI?=
 =?us-ascii?Q?7PvV/IRC9v5u/0f5MoG9FWbYZFt0JSMYlYVrD+4DtkzXgQqCb8S7nJYQBfj4?=
 =?us-ascii?Q?jJ+ACE2Vgx0XMPwse06zvzNnka1fQ+6TP1PhSh0MuoistAnNoWDXTLDPTBSG?=
 =?us-ascii?Q?ejdJL4FlY5eCUEd4sGWuWlr/4XBM3v2r0hp34fzmqYigjUoOcMUMkovInAuc?=
 =?us-ascii?Q?8kPLNcMMTSMHClgTzK+DBp2wa2AOaJiWNjv/P3Sfyv+5z9QMFGYn46N5GJxz?=
 =?us-ascii?Q?EYolKhVvkmW6moME0x2WoVbSYGgkjMWXhlwHE9gQnc0vnbltXZ+DTWixFwgP?=
 =?us-ascii?Q?4tg5P4QpNdjhkfZNUqWHr1AfSYE6Dj/BY7wvExzGCQVF7Tc+Nq6EPpYy5u38?=
 =?us-ascii?Q?53OZGAVzs+c5SDPMPjDZhoJRE2a+w5BZEw6cTqCPaj4FO+2g/c9d9z7PwDJ0?=
 =?us-ascii?Q?98iVsxpKOt9zSg/bDQqqYH25+PUtUMv36CjJEU+UguwjLLbksF/FBagWdPjd?=
 =?us-ascii?Q?WnpffbmQr+DZR2QoHspRK6yzFxV96uKeenZ98LaeeEWAREOft3rpGdvFC3FO?=
 =?us-ascii?Q?/mo9ZIi7GjhFBCS5faz+TKzNt2KzTpOlVUyAosISk9S8G5/bJc3Z9LyApULF?=
 =?us-ascii?Q?za4VXUz4ErpCqvDB2nw9Z+pBucyck6AUL0EAPJRkuF0eiv4qkFlSAXggiyuq?=
 =?us-ascii?Q?M0WOA2A6C7o82dEao6uMo5Oi/VvkXK7S+LC1FAEheoFeCab9rDk/0lSnNTlN?=
 =?us-ascii?Q?7PEB0GrmGaS6GRamH6BcSIwCD5WQLpFb6LxVb/ZFz//2byTduFJ3n1hGkyid?=
 =?us-ascii?Q?+hV/SbEK3soVUZ+M7ro8phPOTp/hz1Qr22kF2ze6Os1BdJYWV5DkltzFik8J?=
 =?us-ascii?Q?MFgZ7kh/vYN6QVwzfVp5nuFrBiJnG7xt7XVruElbxgowNMeJCrdnS+KlspMi?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bc55ab-5cb7-473a-f124-08dcc7a35fdf
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:52:48.3480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nvCzDSma12xEmrym2hT74Z1MNCrPkaz7LSF9IyMtoxOiYsRXX68ww0+kLP2Q4dFVCVWrUm+tW8B7fPUeSXUN6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
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

On Mon, Aug 19, 2024 at 09:44:36PM +0300, Jani Nikula wrote:
> Switch to using the new display->is.PLATFORM members.
> 
> There are still cases like IS_G4X() which is trivial with macros, but
> not so with platform members. Ditto for IS_IRONLAKE_M() and IS_IVB_GT1()
> etc. although not used in this file.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 36 +++++++++--------------
>  1 file changed, 14 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index d49435af62c7..c701f13e0cf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1168,7 +1168,6 @@ static int intel_bios_ssc_frequency(struct intel_display *display,
>  static void
>  parse_general_features(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct bdb_general_features *general;
>  
>  	general = bdb_find_section(display, BDB_GENERAL_FEATURES);
> @@ -1178,7 +1177,7 @@ parse_general_features(struct intel_display *display)
>  	display->vbt.int_tv_support = general->int_tv_support;
>  	/* int_crt_support can't be trusted on earlier platforms */
>  	if (display->vbt.version >= 155 &&
> -	    (HAS_DDI(display) || IS_VALLEYVIEW(i915)))
> +	    (HAS_DDI(display) || display->is.VALLEYVIEW))
>  		display->vbt.int_crt_support = general->int_crt_support;
>  	display->vbt.lvds_use_ssc = general->enable_ssc;
>  	display->vbt.lvds_ssc_freq =
> @@ -1541,7 +1540,6 @@ static void
>  parse_psr(struct intel_display *display,
>  	  struct intel_panel *panel)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct bdb_psr *psr;
>  	const struct psr_table *psr_table;
>  	int panel_type = panel->vbt.panel_type;
> @@ -1566,7 +1564,7 @@ parse_psr(struct intel_display *display,
>  	 * Old decimal value is wake up time in multiples of 100 us.
>  	 */
>  	if (display->vbt.version >= 205 &&
> -	    (DISPLAY_VER(display) >= 9 && !IS_BROXTON(i915))) {
> +	    (DISPLAY_VER(display) >= 9 && !display->is.BROXTON)) {
>  		switch (psr_table->tp1_wakeup_time) {
>  		case 0:
>  			panel->vbt.psr.tp1_wakeup_time_us = 500;
> @@ -2028,11 +2026,9 @@ static void icl_fixup_mipi_sequences(struct intel_display *display,
>  static void fixup_mipi_sequences(struct intel_display *display,
>  				 struct intel_panel *panel)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >= 11)
>  		icl_fixup_mipi_sequences(display, panel);
> -	else if (IS_VALLEYVIEW(i915))
> +	else if (display->is.VALLEYVIEW)
>  		vlv_fixup_mipi_sequences(display, panel);
>  }
>  
> @@ -2242,15 +2238,15 @@ static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
>  	const u8 *ddc_pin_map;
>  	int i, n_entries;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || display->is.ALDERLAKE_P) {
>  		ddc_pin_map = adlp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
> -	} else if (IS_ALDERLAKE_S(i915)) {
> +	} else if (display->is.ALDERLAKE_S) {
>  		ddc_pin_map = adls_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>  		return vbt_pin;
> -	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
> +	} else if (display->is.ROCKETLAKE && INTEL_PCH_TYPE(i915) == PCH_TGP) {
>  		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>  	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(display) == 9) {
> @@ -2333,7 +2329,6 @@ static enum port __dvo_port_to_port(int n_ports, int n_dvo,
>  static enum port dvo_port_to_port(struct intel_display *display,
>  				  u8 dvo_port)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	/*
>  	 * Each DDI port can have more than one value on the "DVO Port" field,
>  	 * so look for all the possible values for each port.
> @@ -2390,12 +2385,12 @@ static enum port dvo_port_to_port(struct intel_display *display,
>  					  ARRAY_SIZE(xelpd_port_mapping[0]),
>  					  xelpd_port_mapping,
>  					  dvo_port);
> -	else if (IS_ALDERLAKE_S(i915))
> +	else if (display->is.ALDERLAKE_S)
>  		return __dvo_port_to_port(ARRAY_SIZE(adls_port_mapping),
>  					  ARRAY_SIZE(adls_port_mapping[0]),
>  					  adls_port_mapping,
>  					  dvo_port);
> -	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
> +	else if (display->is.DG1 || display->is.ROCKETLAKE)
>  		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
>  					  ARRAY_SIZE(rkl_port_mapping[0]),
>  					  rkl_port_mapping,
> @@ -2518,7 +2513,6 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
>  				      enum port port)
>  {
>  	struct intel_display *display = devdata->display;
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	if (!intel_bios_encoder_supports_dvi(devdata))
>  		return;
> @@ -2528,7 +2522,7 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
>  	 * with a HSW VBT where the level shifter value goes
>  	 * up to 11, whereas the BDW max is 9.
>  	 */
> -	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
> +	if (display->is.BROADWELL && devdata->child.hdmi_level_shifter_value > 9) {
>  		drm_dbg_kms(display->drm,
>  			    "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
>  			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
> @@ -2617,14 +2611,13 @@ int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata
>  
>  static bool is_port_valid(struct intel_display *display, enum port port)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	/*
>  	 * On some ICL SKUs port F is not present, but broken VBTs mark
>  	 * the port as present. Only try to initialize port F for the
>  	 * SKUs that may actually have it.
>  	 */
> -	if (port == PORT_F && IS_ICELAKE(i915))
> -		return IS_ICL_WITH_PORT_F(i915);
> +	if (port == PORT_F && display->is.ICELAKE)
> +		return display->is.ICELAKE_PORT_F;
>  
>  	return true;
>  }
> @@ -2906,7 +2899,7 @@ init_vbt_missing_defaults(struct intel_display *display)
>  	unsigned int ports = DISPLAY_RUNTIME_INFO(display)->port_mask;
>  	enum port port;
>  
> -	if (!HAS_DDI(display) && !IS_CHERRYVIEW(i915))
> +	if (!HAS_DDI(display) && !display->is.CHERRYVIEW)
>  		return;
>  
>  	for_each_port_masked(port, ports) {
> @@ -3671,17 +3664,16 @@ static const u8 direct_aux_ch_map[] = {
>  
>  static enum aux_ch map_aux_ch(struct intel_display *display, u8 aux_channel)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const u8 *aux_ch_map;
>  	int i, n_entries;
>  
>  	if (DISPLAY_VER(display) >= 13) {
>  		aux_ch_map = adlp_aux_ch_map;
>  		n_entries = ARRAY_SIZE(adlp_aux_ch_map);
> -	} else if (IS_ALDERLAKE_S(i915)) {
> +	} else if (display->is.ALDERLAKE_S) {
>  		aux_ch_map = adls_aux_ch_map;
>  		n_entries = ARRAY_SIZE(adls_aux_ch_map);
> -	} else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
> +	} else if (display->is.DG1 || display->is.ROCKETLAKE) {
>  		aux_ch_map = rkl_aux_ch_map;
>  		n_entries = ARRAY_SIZE(rkl_aux_ch_map);
>  	} else {
> -- 
> 2.39.2
> 
