Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071CE9BBC79
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A90B10E4A3;
	Mon,  4 Nov 2024 17:54:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MN0WvEtW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B558E10E4A2;
 Mon,  4 Nov 2024 17:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730742893; x=1762278893;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n1WeRAialmaVyDtgnT7qHPz1RAKjyu8tlv1rI6s6JhY=;
 b=MN0WvEtWCUxpPSu/hnEn6Kt51UiaafTg2YZ/0z11csVq76VrCLzn/Th7
 16hp3jcUAS+A53E48OivEwdeoGtTDeCCvs+kGZcKYKRoleWGqFGyMjlK+
 of8RGbtjL6yS3o8jh34Nk8yzyITxy6ayNyNSTasc2Q7uASzCzS7g4b47w
 wFeJcy5mQ6m3x5o40ub7grNQY2MA2QrhTSPMJgVXtepk5J4w1chayPVeg
 5o7QOO5wgy1L9yztT8e3yYP5EYT5G+1dk+JdAlVO7YUK//1WK5CrZwqN2
 SmWxSgRRcfh+tHSiBH/nzZhdohVFxwWpl5cPP+PqRqVcxP7qPPgo/58jv A==;
X-CSE-ConnectionGUID: Tkvfc8GVQ4CpZBmlTGpYAw==
X-CSE-MsgGUID: NoYRQTTlSaCbLacmw5QawQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30235496"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30235496"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:54:52 -0800
X-CSE-ConnectionGUID: 0JZ8VgbIQeO0gVHZpJ55Ag==
X-CSE-MsgGUID: mXkE5BHBQYyyc/fonPKbhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88306243"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 09:54:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 09:54:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 09:54:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 09:54:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FyDE/yRr8n5eoaJaBNibQ7L0zn7E/VQ/jVR+zWyT0CTX3lFDG9JNPQJDNAzX1EDmGV1chjgbY93Xa83VxyHkSueDHr4V0jOnmNNRgwhb6EePIYKJ0FRToLTux/varWnkLW7YfnaP6TjBmafXV8uo5zbsmXm61DOxtXz5qMfbvLMxTCLxDQv9bgo225hq9RI48nJjp1XO/XN8Gg1Y57gpanMrjFrItWkp5695qgjG3ky3byH6w9A/KSE692l/K575MRyPRZGq2RvWJcn40sI/yQQFxkLhYd11+O7njElfarVv+T4OejUHeESy6JBZT+avpmiwdpuk8wiM1z0q/ENcTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8uvc9kgfu4Nl0v9Y2eTvqvTk9z3/Mg64Y7f0polFKj0=;
 b=A8YdYiZTvWeHuLK0Qc6NMEUwcgMnKTPnAlyNDX71+9L1tZKoNhIs0okY2nA3O7mP8stlcz7p056lAW++TIaWuiR023dfBJaQF5m3Jq/mCpROZITU9d71YY3uICeJtFEP3xUsJnBdbzVu+hE2u73jVRLWpJMH3+jZ3HCm5fqyRHLGZXcmwMESGuDO/YHOkx8gHsZTC5NNIPXw7ECOBiXRT84yAN2g2jjEZPdatjc8fYadRdHu+ntekD1gPGY9np+p684vQAO6RnoaHvqzgZFiUzaun9mgLMu3lHzZ3b+ZpPR8Fs0jnoDyVcq2Wq9kKH+V+EpNRCpBYYNcc7YNL/WjPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB6984.namprd11.prod.outlook.com (2603:10b6:303:22e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 17:54:47 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 17:54:46 +0000
Date: Mon, 4 Nov 2024 09:54:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Message-ID: <20241104175439.GB5725@mdroper-desk1.amr.corp.intel.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241104083143.631760-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR13CA0163.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB6984:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c95fb37-6213-438e-c4f0-08dcfcf9c368
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7xE3UkiwenOSVOMh5gIbLLYcB1Nbc5PodvHzqgsfqwfOf0mfhiicXTuLPEGe?=
 =?us-ascii?Q?aoipN2GgHvTmD8AVbccDlFt+ZiWUNNLOKcupEFmY3IY/i3JeFHZcuW2SO04I?=
 =?us-ascii?Q?QFr+x0ZIEQVZf9FK9YinSfcEyeH1Y8xQdPEduaynj1nXdacpAltue1KfQ7Sz?=
 =?us-ascii?Q?miMtGi5KxLA3N5t/BPDGxofxOBlLaZI02WPVWj0GAvzjhDLPk+N0x8Y6hQ7o?=
 =?us-ascii?Q?U9I54Fi53lgMJLgIHT8oLKCdqcPoPCP4InUM56ff3wkbdVsbJ8IjSv39aXev?=
 =?us-ascii?Q?Kab8KQ3YpoIeVkSdEOmr5iWxDo7C4KcMoIk2YgjQ9QXx8apsv1thNJy2HP6m?=
 =?us-ascii?Q?epLMnkbPuc0V6g+PAw8H5CeIj/0p/2fX1TfFzPhOKLaGRFALDApMgWVHnNou?=
 =?us-ascii?Q?c2DLPoilx/t5sV/BECERrBLP11va6dlkeItCrIwD58d5bCVvYwwoum/6yHuI?=
 =?us-ascii?Q?d0gFDHVHRfhDidIqPaToa+Aisdmyek6+8dqz2PChqx25dLo13HBpWqkwVg25?=
 =?us-ascii?Q?eYarcfxhzMYhM0h8Nt4zwXaZe1PAe3om1t1SaO1YU+N4r8IMU3TP1Q+0v3gd?=
 =?us-ascii?Q?9S8NI3e2uwS/XJxmSc9vQl3JyzC1wJvaedFBoOsuYAu+lAyvW5K/kLk7Jn9F?=
 =?us-ascii?Q?uqW7r6uV1koauDc41Ao0ueOrkcH7mjt8FdkgV8KM6QidzkgLqCHtuiQ/nhD/?=
 =?us-ascii?Q?fKDNqTX7qLS04bb+Hb7gkHqG5XcZNzKUXuLNy4ss0cCuI0SqSiNoBPq0kLID?=
 =?us-ascii?Q?l6l+9galwCfAzP6whGpq4ZilvC7P5+4it4FXJTmEoduKK0+drM1P+XPXwrAP?=
 =?us-ascii?Q?opKnpXxuUYSnBBVRvLZrYpqYYyiaTMyLFjzCfzB5zsaPfxmh2fbhWr9miK3M?=
 =?us-ascii?Q?pk7AfSQOYsBzLHv3NdVH+Y6MTnVvkwC8BTAQy1Xnd/KutljlxgUMZrrY1SM8?=
 =?us-ascii?Q?0fSoSVs4D94NSZGU/XSEdgPpcumi++myOuaHFFtJZm7qITDI9WhFP0VmwkQZ?=
 =?us-ascii?Q?j9d7y3lrEYi5pX1fAm593SPwGfNca0ax1hXhbeKuhkNbeeM5gf+ioc3L4KWw?=
 =?us-ascii?Q?oX+0QzMitHIHxMxAqyGFQnObNot5tPmtxyWaKSmKv5FGl6v92JRS2FUDhTVO?=
 =?us-ascii?Q?dmk7k87cKz6pOo8zt4LQkqexPlANuCWMWVG8PKR2euUzPCcBQQT2cDCUfYtk?=
 =?us-ascii?Q?Nuq+0WOzRkDZW1JFIANMiJXrV1okww+4QOQ7DmVl4VLlD5aPExKzZ6DDbXD/?=
 =?us-ascii?Q?Isc1SHsaUuxkOmu2mcQBdpdYSE8AXPqkI+nONpnZ3WRy5PNbqXCUZCfjhCfW?=
 =?us-ascii?Q?Ulup7NIsZs4feJxZvKHJZ8HW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ki+xGLaEPPlSgS3YsWQeGZjytXG3ihfZGI47VNhMdqryJV1Zptp4Bn9hR0Ip?=
 =?us-ascii?Q?YfFu+ZyqxzYfZw6CkiFN4VwAbj2qYHZGrhYQFRDWOeoRsE8TTI8hjmkG8sKL?=
 =?us-ascii?Q?xKlv3xGI5DVomH+c9sT/v8MPJ3R5guogaAjuRmoIOEwcssJhk266/Qu3IevN?=
 =?us-ascii?Q?kaZhXY/aoeyiXETPRrgPtHQPLq/1GP49pqM8IgQAjyFeWh/hk+LapISuMor0?=
 =?us-ascii?Q?Vhby9zaK1DO/6D2FBIBXpgZREcTtPtkHhDLyhl/1afFqpIqu0wGmgCnbvkFr?=
 =?us-ascii?Q?enLdjjpH8q82X7IDZR+t+dqtXCMbJtengFoZiZsLt/maiPeuZ4N55buIScAv?=
 =?us-ascii?Q?oNzzvG7Ps218ul/oDlYhcO3TCBoz/dgVlDKs8jV3LnueeTfTVWA9GTA8x/HR?=
 =?us-ascii?Q?NwAddziaejfvG/fCgq+ZyYi79i2hG6R6mshN96k/pWallX8JSdZmPv+vFyD8?=
 =?us-ascii?Q?1Exhh8m7kTu9DEJo5TEqA2LKENBQ0/n+GmzEYIjWjnmJhGIU0r2QcZn1kLHN?=
 =?us-ascii?Q?QGHU/E6CODcfHLPdVsHyPvb0iB0UTUZi5PFHkLZXf6LsF4A/r39vscoIVyjx?=
 =?us-ascii?Q?bK+Gt9Ckay2IQSK0paLNQNz3qNKU6G0fN0oa/hKa6xBjsEnOg2XI/s7+tRzT?=
 =?us-ascii?Q?6occCjcow7ceAC0m+XAfuysTN7zFd1CoVOe0t5qe4iOK1egpDDDUIvQS8Qwa?=
 =?us-ascii?Q?Xkoje3/uZ6H+LIoJXKVnLzSJQv+dyq/ctmLp+Y4Atykq+k9tmJxhz4k+gNGd?=
 =?us-ascii?Q?Chc0riPwqT8CwVO5Uk6V+yT+Xur7MjV93ugOU+sN5b+KlBJm3DbGncZ/jKwf?=
 =?us-ascii?Q?MJwvcAq8jZjvLgX5WuilTC7WGqpIOA1Lmf0lIt9smyK4RBLiIDZWOMeB4v7l?=
 =?us-ascii?Q?mi9AUsFOVgHTVnXRTA0WupXV1tZISq8nuLRwNMuBHsJ4FAcezBJ65XphGANb?=
 =?us-ascii?Q?AAB4Qi6XQ7XkjRGwi2tMT4AA67gx36Ue0wWkr4h4K85puYkUbJwCx/NBrd3V?=
 =?us-ascii?Q?KN1425Lrm0gQl1iOSiL6WLzh2reJgB+GzjAGbi6EX2se64e9Exe361Ad3Vvk?=
 =?us-ascii?Q?JHhzXdEP222oyQbIjA7gSrnVDegpbhiSUQKiozmm7aL4EDk62kgJbnrdt+xC?=
 =?us-ascii?Q?jt1QqbOMrw/DiVUFO3Jp0DXL4S+9YiCgxYyIAuGDkQFR8zo7PFeEKP1rGlD8?=
 =?us-ascii?Q?5nrb6sYT4PQdmqmGfp1ezXJ0JuEPeIfuvEYfGJEADNa6gaN/poVY192q8BX0?=
 =?us-ascii?Q?ZYqwvd/AKcX4n83yu1snVpcC2yaXOc0jhsnDGLNCw4xVjg00M1ECQJWKy0Ye?=
 =?us-ascii?Q?SmSyOEbLWk/PC841eZtDQF/PkrC8WXxA03200PX0ut4YqEXz18icu6apelnD?=
 =?us-ascii?Q?3eOuaT2WQ6vhRmb1Zbjz8PRk3xvobtqhxdj1xIXse1dGwlrT7T8mkid50QVj?=
 =?us-ascii?Q?3d6MVrkHUA0EMqC/vxJkXrqCDcmrYeYgD2r+cG1VgvKiA3C4N6adNs93dN67?=
 =?us-ascii?Q?CUaN1ODeMQ39Euvk4yhIeenqcWnVt1nUlHH0lMW3FTbcXYhL7A1kvPpG9A8L?=
 =?us-ascii?Q?PIlGUa2xR166IAZwAMNniMIRroyacLXrJQcddPVL++o5jfLS3//VBWeZhL74?=
 =?us-ascii?Q?Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c95fb37-6213-438e-c4f0-08dcfcf9c368
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 17:54:45.6190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UaaGX2i+5NIPHgiZ9dNw/tmagePF0DVVjWK0dHpsBOOhbWRc7cN2pOxr26D+yhpzhqd8avWlyTU+LztseYnIie8glazs1iR+vv04m7gvCgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6984
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

On Mon, Nov 04, 2024 at 02:01:42PM +0530, Suraj Kandpal wrote:
> We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
> encoder. Also remove the Wa comment tag as this follows the bspec and
> does not implement the wa.
> 
> v2: add additional definition instead of function, commit message typo
> fix and update.
> v3: restore lost conditional from v2.
> v4: subject line and subject message updated, fix the if ladder order,
> fix the bit definition order.
> v5: Add the bspec link and remove the Wa comment tag
> v6: Rebase over new changes
> 
> Bspec: 69964
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

I think the code changes are fine now (although you seem to have dropped
the general ladder re-order that was done in v4; was that intentional or
a mistake?), but the subject/commit message seem misleading since the
change this patch is making isn't changing if/when rekeying is disabled,
all it's doing is changing the bit used.  So a commit message more along
the lines of

        drm/i915/xe3lpd: Update HDCP rekying bit

        The TRANS_DDI_FUNC_CTL bit used to enable/disable HDCP rekeying
        has moved from bit 12 (Xe2) to bit 15 (Xe3); update the RMW
        toggle accordingly.

        Also drop the misleading workaround comment tag on this function
        since disabling of HDCP rekeying is something that happens on
        all platforms, not just those impacted by that workaround.

If you decide to reinstate the ladder re-order that you had on an
earlier version of this patch, you could add another sentence like

        While we're here, also re-order the if/else ladder to use
        standard "newest platform first" order.

Anyway, with some kind of commit message cleanup,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++--
>  drivers/gpu/drm/i915/i915_reg.h           | 1 +
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f6d42ec6949e..8bca532d1176 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -31,7 +31,6 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> -/* WA: 16022217614 */
>  static void
>  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  				      struct intel_hdcp *hdcp)
> @@ -43,7 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 14) {
> -		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> +		if (DISPLAY_VER(display) >= 30)
> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
>  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 22be4a731d27..c160e087972a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3819,6 +3819,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_PVSYNC		(1 << 17)
>  #define  TRANS_DDI_PHSYNC		(1 << 16)
>  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
