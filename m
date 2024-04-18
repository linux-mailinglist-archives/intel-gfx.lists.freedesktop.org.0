Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA0A8AA44E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 22:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D807113FE1;
	Thu, 18 Apr 2024 20:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CIrZTioG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56B51113FE0;
 Thu, 18 Apr 2024 20:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713473396; x=1745009396;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kQZJXNv0wRaZ+a8pejMHzt+BAQL53jxb8njsf76kh/0=;
 b=CIrZTioGFwbU7oAtiBNl0nsnVLoAc9SeQ+c2uC/qPQ/YUkGqeW5A6EZ+
 guh/WS1ZShGu7MIXroWAbCx0zPmf4Q5kPDU7geqp0N2jYUee+6i7i7f8b
 8t3QO9mJq9uYyn3kYu+4RJ0dhqKDb0gUhiDvyIPqggD+9ljg+0iCDMff2
 ZDdBtUA04a1CSP5zd23UzIL7is/7Rv+35kJrHHbK6otgbQv/4fggHzD+V
 VA+XF+B+rKi/+J1uMAAI8aa6yu0H6d82ssoooiy/2vbdCPAU0FXJqPVx/
 H3N/Vf+ue/KW6ZaOYWUjwhzPtJv+2pY0IaDqFdqE9BZbQd9gqa+mfEISL g==;
X-CSE-ConnectionGUID: dOcHgO1zQEyA3YMLo6nekg==
X-CSE-MsgGUID: OgZf7dj3S8OSeAiSDAXYrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8885877"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8885877"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 13:49:56 -0700
X-CSE-ConnectionGUID: /Tlq+XSVQu2VI+dcopF9Ew==
X-CSE-MsgGUID: 34k9ILqbTQ+f7MoitZ3gXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27877197"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 13:49:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 13:49:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 13:49:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 13:49:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2ZGGu0JgtlBn58AKDvh8tTRejAs11S+rtprqpT71NH3eaCI1hGkpjRm3UsWPqC3dbFZf+pDZoQjGj03uxmaxLiAE0Yo8m4hkd9ck3z7XSzfhzs3YT1lzwlO/EvDXNxPW6uMCt2WxLnoUWF1HgU+xWlnmH6Mv7P/FBmTRWqCqL1yV3Ud5iVFepp535OXABuq3hUqzWNHnZXF8ceVV4CgOHbGMxYk1rArRf/HCt4RqKCAoPaRtKX3WfkCcPhkjch9/yCnxUkg+ZPiqztlkbfKEIaukJtzfUOCdMfQe4/m9inqNvbNmDlriYHzHNTYQMJIGsSsURfiTDfNsHKRRFrdfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3QQGzLWfRyQKwn30ilQZVBu8hTnNb3zwDIeXzYzrxKU=;
 b=jCYYtve+5+lOv0E9WoTNeY/nAzoMDXH5mO21TxzJ3bndnHZS//McjYbCuIDft0iv+4XCcnTrbo14f85AY7H5vM3eBWuAKd8jwnE3mOlznUlcyI7VO6Kb+xQ4iKy0Ot2Y0R6YRVs2NPg6fgdqpRyIe9Z+FLsadojcSuMY81TJXpOxtlS7LZKHniHux/iPXjbdrNBC86HjLUrzStAqNdq7fDwFMTxuDBR1E810Kb3srS6MXRMIMv5xahwe5xdATNfhI7HbkfKqx/F+32fsp2Xr6pFmG90HHryLjOa4qe9TNKeW+paQttzm8DCdynLZaMnwlQ1vmETjrSsVTJn2y/7Hww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5139.namprd11.prod.outlook.com (2603:10b6:303:95::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Thu, 18 Apr
 2024 20:49:53 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 20:49:53 +0000
Date: Thu, 18 Apr 2024 15:49:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 4/5] drm/i915/dmc: change meaning of dmc_firmware_path=""
 module param
Message-ID: <4yzys3vfzigzrmmxxpe3lpsj5ncbbgtktamnfkrzrlfemxibda@4fzr2thohmle>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <f88657c63d698d339a7a1079f6c428ba9e6b6b06.1713450693.git.jani.nikula@intel.com>
 <171346797884.2007.8763877365097656146@gjsousa-mobl2>
 <87frviwhzz.fsf@intel.com>
 <171347305306.2007.9201915999997168779@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <171347305306.2007.9201915999997168779@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR01CA0002.prod.exchangelabs.com (2603:10b6:a02:80::15)
 To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: de18b88f-b983-4871-39c7-08dc5fe918e1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U+myXgzCW0JTbZcFEppMdFyCKKIJk0qzGwk9NnarVaXOclRGvCMJ08ODPWWHndEBaf7olgo/zoiSUA2Bw8t70MWFpG/igY+BtTpgjYIRpyO1jqWJPUhWuPfAI02D0UN7YbzotwuqxRdbQ5ineG975xTl7t7vYhfuxSduQcjqIrtoQxwyzRT/C3rrJ3aDyPuLbri1kJjdGQd6YCBllFUZ2rA5ujVT4TgySOvSvJl9Bg009yqnYrYux58zB9LG+oqiRWQIKG4gUnjVOPv90KjYy3NJG2PvrDncPG3O8bImv8NFcaaQk8O6zlxMs84FoEVVQbRZ12PTJIRoCVkQh6BIUX4CNHeWRqkliDhkvQ4fHl4e2eTB30cIUgB2u3P1msSZCHQyrY83SFoe/KW75VxmIHTpiChCL4qHgq4reGosL7hCfggNMWLm0sv1d5uyuX7iVCodX2EcK5gzVg5wvVfQvAMyr9GopkYrOuNrDykHf2KVjcYXf+t4d87KDWiAyXvk5eqiIBL66lok+/qmf9H1jg6/aW7iu13Zge7dNXMPUwAByrNWaAepnYP+6NzNJgW5zHOH8+rs/7l2t573QGXDx3rTOpS9oFJXvuvMB3hC0qVN8sD+Ate+aK8k+tyZONHOiM1IBO31BCNy8/18iHoHi7LWjRNpih2kJP5YHSzQmiw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jgQ/H0S6M6jkSpi9oZdwlPu+iAhSFZLRAWNLwu1Ren/bpP6vi5t5cjOaSxCb?=
 =?us-ascii?Q?3VGn9j8q9kRe9WPPQeyMa1gVm1x5DnI39W4Rw1uSHjpqGrEPPpeXEGIENubM?=
 =?us-ascii?Q?15HWxQ9YzEPpDBcUlsKbkDop/WxxOhzezcLCHL3jKuAz5G0htB7ygHJUsJHZ?=
 =?us-ascii?Q?VkhkedOaIkC5/UnkPLcCBj/e8/v0CvYb1JOtWceGRTUTf+sOEQSEHWVV5jhM?=
 =?us-ascii?Q?w4twg8/P9vTk6jT70Sa5ddnS1ej2Wr2DLwv7lpN4WELEQcx8yJOiWAOKXHaZ?=
 =?us-ascii?Q?fRCWz+xEiZMLNWPf67ysXi14ufbodW0H3zv78UK7brhYLGYdliFjwCSCfjkW?=
 =?us-ascii?Q?RiyDNjACkrhUjZ6/Y04Sm/+7VQnY8wDQUC7fMuJFtYz6fa2pLXYbwrbTklPm?=
 =?us-ascii?Q?a5iGSefP3uAqY4K6DhJy6BrxgDtCmsmiabrsXTvZtHZvystXygTLz8gJyD1f?=
 =?us-ascii?Q?UnurJFsHZYDipUJ4Fk66C6NU3NjBcympUmjdndWzYMy3eP1PEzU2iL8ndzPv?=
 =?us-ascii?Q?p68QvSow5agzGc5yIlvr2oqYDfjg+MWaxK0qg7b4z1b4h8Ag8oJuS9E3y5uZ?=
 =?us-ascii?Q?DpZdhWLcm1sftYWMA1VK6ayejXLCQPn/CxVIQOPtXJriz9VYdCLku9pAscdP?=
 =?us-ascii?Q?1txGRpCx/QLqJrSifLAmxT0iQ2xk5GD5wZZvCyjH8XIj9i07EefkRBfD6Z20?=
 =?us-ascii?Q?kC3QIukOsl9DHkbC5mJQfNieNgunq2HZ6TO1HHRnq3e6+QyVL6vPVhLKIIya?=
 =?us-ascii?Q?uvoNrQNp35dnOmEWgtW6VlN8AjgpkWo0HGLxL8WMWMswalIX5+LNDJbo2sv2?=
 =?us-ascii?Q?si6ZbUM9ChMJHGaO8mBFR1IG/OZ1Sz7r7qRj3bn6UktxCVCz6eaZ2Bb36vZe?=
 =?us-ascii?Q?h4GAEREpiIGgCEvPPmKYb86YRbzZtYZKwkbdugdC1NAeVl0MnTbqNN7OYS8h?=
 =?us-ascii?Q?9JzdqeEQu9fSrv7xqdcQ0btmEvZ5+hw1VLK5w/wWh+OhbgGLn7PQlFRucC6F?=
 =?us-ascii?Q?KWXYiFA1YS3bSfgpTWGvb3r/QlEEa6qR5f9T4zRBOX7AKOoEnRs2dCGim7Wy?=
 =?us-ascii?Q?yqP2S39kEPnVj+wH3AP7TTdVxzu47SgbQ5kaXJSbwsnlhM7cMdH/LxlrsSaJ?=
 =?us-ascii?Q?qwR9pC3qsQ6ewfQFknxuqbyyQNrQrGNzE0XHRmC3R9j4u+pwZ16mZhEgUM2S?=
 =?us-ascii?Q?f+qjuF/wn6OskEsMmUvMK8nYq0JJ2bhmBPGACwdV4sb23EunQVGyM2Qhi1WQ?=
 =?us-ascii?Q?qMp9M5oNif2e2TJCOliuv9U1pIjjxE2rMBCK+PVYI11dqhuguy+XrS+07LxY?=
 =?us-ascii?Q?4C6ss606QOW2gjXNsrUn6REPRB6ROpXQWzo7s8w04XuHGsrlGW8FpdFz5odf?=
 =?us-ascii?Q?bTTiwzC3cY86gzQPhN1etPA4+XU7ajWSBtYepNUuZmSX5iyuTqduO5c5iDcl?=
 =?us-ascii?Q?j8toZwqRayEa8/mhxkwzlbxwGbyxykrEvdaMAjGpDsoYEESqrFHGVmsVwHNR?=
 =?us-ascii?Q?SScntm0UqeQ+Z371v/hOQUQyTwSphmfTQ162jPeKvdXlMG4qVos1en/Zc8Jy?=
 =?us-ascii?Q?f17rOB9fpeoICpDSTo3xmvm77fcWU743VagGkRZacJ82cNuSTeSMIAKxiCUj?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de18b88f-b983-4871-39c7-08dc5fe918e1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:49:53.1122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dUYlG1x9uao1ReXtlEB+BowHTA4SYgrRR4S4H/Am1/gvVeN2wlfVkOms1x1pGKUWLFWBKFjj5OO81B2lnQz6HrkBpICnGFikfR/pzanQWJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5139
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

On Thu, Apr 18, 2024 at 05:44:13PM GMT, Gustavo Sousa wrote:
>Quoting Jani Nikula (2024-04-18 17:09:04-03:00)
>>On Thu, 18 Apr 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> Quoting Jani Nikula (2024-04-18 11:39:53-03:00)
>>>>The distinction between the dmc_firmware_path module param being NULL
>>>>and the empty string "" is problematic. It's not possible to set the
>>>>parameter back to NULL via sysfs or debugfs. Remove the distinction, and
>>>>consider NULL and the empty string to be the same thing, and use the
>>>>platform default for them.
>>>>
>>>>This removes the possibility to disable DMC (and runtime PM) via
>>>>i915.dmc_firmware_path="". Instead, you will need to specify a
>>>>non-existent file or a file that will not parse correctly.
>>>>
>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++----------
>>>> drivers/gpu/drm/i915/i915_params.c       |  3 ++-
>>>> 2 files changed, 12 insertions(+), 11 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>>index 740c05ce83cc..3e510c2be1eb 100644
>>>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>>@@ -73,6 +73,13 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>>>>         return i915->display.dmc.dmc;
>>>> }
>>>>
>>>>+static const char *dmc_firmware_param(struct drm_i915_private *i915)
>>>>+{
>>>>+        const char *p = i915->params.dmc_firmware_path;
>>>>+
>>>>+        return p && *p ? p : NULL;
>>>>+}
>>>>+
>>>> #define DMC_VERSION(major, minor)        ((major) << 16 | (minor))
>>>> #define DMC_VERSION_MAJOR(version)        ((version) >> 16)
>>>> #define DMC_VERSION_MINOR(version)        ((version) & 0xffff)
>>>>@@ -989,7 +996,7 @@ static void dmc_load_work_fn(struct work_struct *work)
>>>>
>>>>         err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
>>>>
>>>>-        if (err == -ENOENT && !i915->params.dmc_firmware_path) {
>>>>+        if (err == -ENOENT && !dmc_firmware_param(i915)) {
>>>>                 fallback_path = dmc_fallback_path(i915);
>>>>                 if (fallback_path) {
>>>>                         drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
>>>>@@ -1062,15 +1069,8 @@ void intel_dmc_init(struct drm_i915_private *i915)
>>>>
>>>>         dmc->fw_path = dmc_firmware_default(i915, &dmc->max_fw_size);
>>>>
>>>>-        if (i915->params.dmc_firmware_path) {
>>>>-                if (strlen(i915->params.dmc_firmware_path) == 0) {
>>>>-                        drm_info(&i915->drm,
>>>>-                                 "Disabling DMC firmware and runtime PM\n");
>>>>-                        goto out;
>>>>-                }
>>>>-
>>>>-                dmc->fw_path = i915->params.dmc_firmware_path;
>>>>-        }
>>>>+        if (dmc_firmware_param(i915))
>>>>+                dmc->fw_path = dmc_firmware_param(i915);
>>>>
>>>>         if (!dmc->fw_path) {
>>>>                 drm_dbg_kms(&i915->drm,
>>>>diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
>>>>index de43048543e8..9e7f2a9f6287 100644
>>>>--- a/drivers/gpu/drm/i915/i915_params.c
>>>>+++ b/drivers/gpu/drm/i915/i915_params.c
>>>>@@ -109,7 +109,8 @@ i915_param_named_unsafe(huc_firmware_path, charp, 0400,
>>>>         "HuC firmware path to use instead of the default one");
>>>>
>>>> i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>>>>-        "DMC firmware path to use instead of the default one");
>>>>+        "DMC firmware path to use instead of the default one. "
>>>>+        "Use non-existent file to disable DMC and runtime PM.");
>>>
>>> Okay. But is it too bad to have a magic string for it? The up side is
>>> that there wouldn't be error messages in the log if we had such option.
>>
>>Another upside is that we could also just skip requesting the firmware
>>altogether, similar to what we have currently.
>>
>>It's just a small naming problem... what should the magic string for
>>"disabled" be? Like, yes, that's the obvious choice right there, but
>>it's also a valid filename. Who am I to say how people should name their
>>firmware blobs. :)
>>
>>"/dev/null"?
>
>I like this one!

+1

Lucas De Marchi
