Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F032814E8A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 18:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9177E10EA24;
	Fri, 15 Dec 2023 17:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D9C10EA24
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 17:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702661180; x=1734197180;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=W1xzilbxlLZPiDs3RuBK1pCjLbFX7dXyK7KOHXeoK7Q=;
 b=UTJr1f2/rsrYamouOkW86K1C5uPQg/NRFg1p2d6SxiNmJnAQ+BuzjLsh
 SWLKqaU5vjcEZk0FlQerjkAIEVBiakjJ0XVEsSueYGAwrNf3vXVBpDDoC
 WYetMkA24byh8Co6YvH+nV3ULcNr+putMjLhanN9Rmu96AmulneXWyZXJ
 4zKCI0npXJnAR2ddwPu48XiX8cHmQ/a43z2XIGMyoWP2XlU+W+VcfqNDc
 iy5Y7oIL9h0XAHRbvudGMc/qVztVYs6pvEQNwd35AGIThzjrrBfxSNX0M
 TCLdMqbMQlGrdKMnaeFQqnrjX7ImHL7J83vfkDXL18IAL7WG+/L3S9VcR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="399140508"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="399140508"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 09:26:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="774827576"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="774827576"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 09:26:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:26:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 09:26:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 09:26:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfcddNAJrnOVxzTwCd/eGls5NgUlvju3GdHM25Lssyr1xUjMJE50SHY1n2Re3Yk5mECCp4yjoPD7iOvfMW7pm/DcTuxSh35NevNGLiIFkqUFrrDrG6CnGHOP5Cc8rHHQcxtFj/yrj4jWzpi7FsxhoqNyAqhHT5bVorzh4icEHL3lGvKjwVB7EPDQL4PiNPotFadBrGlCRQ5xF6BH31WacR7NERYdlEei/X25qV6Gk5oBFHiTh1bg2bm916EXSFmwyRCVFJTHGDii1KLfpMVubtuqxknqGUknAePqAK0YNq7rRm0NUjS8MYwkXQgKsMjPfV/RC8kd/DZTpSmBBmDtcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z6jTz5NZdS9z74P0URpv/iZM0j5WWWPoSfEv54Wg9ZU=;
 b=JEwu/gmKZITfKcboIhd9WWaE2U4/xVUw2pckXmqN8nxwJBuWh0445p+gKtNvk++Pe54k7ibRn4cyReZIh69s7Ev6Z8Qml/1fx7GvjnwQgqcocGQl2t3RlYwAcIhorRqGQVv9OpH2BGRCBI9H9lX7uhfKm5XAZPdiVTn1oh6scBbdDHZdHVgmKLZ4/34JFag0/ZnGNJM6+nKwuMXJ7iIgzxecTqpjFt8gHJNjsN0CHj7bLmVgcxZe/96GXS8y5mCmEv67XSUYQ3W49uVQ+nn2qCjPIeab1fcvG1NWUzAc2kaByhPu6Q85JDCos7fVHBgRXju/aCxaQTN2nW4uN9MTNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5595.namprd11.prod.outlook.com (2603:10b6:510:e5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Fri, 15 Dec
 2023 17:26:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 17:26:13 +0000
Date: Fri, 15 Dec 2023 12:26:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 7/7] drm/i915/display: Take care of VSC select field in
 video dip ctl register
Message-ID: <ZXyMMp90gStXBecH@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-8-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-8-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR03CA0077.namprd03.prod.outlook.com
 (2603:10b6:a03:331::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB5595:EE_
X-MS-Office365-Filtering-Correlation-Id: 809d05ac-c5c6-4be3-2d74-08dbfd92f004
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2ciErVNHUk7fqS9+g8ac+FSn+bWP3PlI1tUPHbtokL+ubzd4kOl300M3naNVR4nvMw/auF9tE+JXfnL76z5VXT9SlC+J1aR9AsMkRXFTXLMb2b2FjhVeag6tejF7EsQLURfFhoeLrnehuJU1WxEHDq3dnY2WoqA+vKAsrTpgPToYvKSkqGUqNwryDi5KIn6z3CeE3FLLsnEdBApXWj8S/rH1i8BcdSrXmRPeCL51Q6vxEZXHMo8yZjWU/Zev/g8dwgmoUEPulTZLfoirofAjvpv4iTA8XPkEzzzwiZqmcRzC2N++z+fKHqSKKGjodMe34i5/49XjeP3xNggYtm9ly76YAmFZw8wikJuXbCGMHfqwCR8mbhk/uzO9MvPsb61bZp3QPINWS9ga8DXsvjgctaD1V7bn/mmSq3tTy+S+G2jPfnOc11GDKFNUF+W8hdyIzX1LJLhcppDOJN+H7nN0o17xOaw+U9JBIJbOPvoRI3z7OlHDnyjbqNlY/7WlD2D7CvI7LElTh3UdaAvcW+a6ubzPpi19hWfUaVlOdC8nad/yfUDNzB59xQVBzNcwOnxb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(136003)(346002)(366004)(396003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(38100700002)(83380400001)(41300700001)(66476007)(2906002)(6486002)(478600001)(5660300002)(6512007)(6506007)(82960400001)(37006003)(66556008)(316002)(6636002)(44832011)(66946007)(36756003)(8676002)(8936002)(6862004)(4326008)(2616005)(66574015)(26005)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?S026sfbOQFO6iQ/lm+32T7pbm1dXy1SJ59E3NlC/QctORfI+PKXs41Nd7K?=
 =?iso-8859-1?Q?zrJ4ToBtmOFtoFGxfT1tszWqkxUS8D7AwCHyo3ydmFi25HAjVLg7fd3rJ9?=
 =?iso-8859-1?Q?3CkW/lLDyhhnqyniT3oU5JIidBlSEcYyKzUVitCk7kp5MW+rySenmJeyAN?=
 =?iso-8859-1?Q?LRZxwDpQL1lHWGLrzrQ+KsfqsXbfUx0rMDaOkumfLnOLliCaMvvvo8SA/n?=
 =?iso-8859-1?Q?aQnvXEKtBPhx3VkeBWeG/CuQVFj6l9Fw0DD0rcbPAT4UjKwPt0PCtwMTgF?=
 =?iso-8859-1?Q?uy7XoudnvLJVQP6wU50Mf1J4sg6UoKJyPMav1TqNRe2i79NT0cXfcFt5RN?=
 =?iso-8859-1?Q?uH6SusHnS73hYpsU82A4Ef0JgJeupc8fZZqG/E8X0u5zgYLKZ4wPFLrpMs?=
 =?iso-8859-1?Q?EBkMpQdb7SrloernV06z4xCtGKv8J3D7HJs7np+zrv5ykDW2Ku6kNXMl2w?=
 =?iso-8859-1?Q?6t+xdwVjeU3OlhKcI1HlWSILGnaLTpimuDnunnnzqizdKGd9bfiVnwqPg9?=
 =?iso-8859-1?Q?uZ9YuDDxCIyXNF7VYvAn+uN8DjIEDhycg9idkVKf8OY2Qh2ZbIZsw48/9p?=
 =?iso-8859-1?Q?wawjfekQLw17/ipZmm8JCu7cww9L5W9RGbNoSDZiQ0TbDuKcjnBZ3nU7/4?=
 =?iso-8859-1?Q?61qA5LPY5c7IBVP6B2n0Bfw8yxkKGOXhyqDntxIQ50VHXxAIfK0PRvDWvk?=
 =?iso-8859-1?Q?9mss08bH2aA+KLz+f0gxaGttQWWzgQIy48F9FcuqsyshUU5MkIkHa8SDFN?=
 =?iso-8859-1?Q?7ifP3sxcw0FCSIyTi4bDXwnFyN3IkHluHuPjm4yRP5crqYxVUZdYvDj/43?=
 =?iso-8859-1?Q?6lSm0djrQ+Mt23Ku2cyWiPL8pCvP6F0RWOPSKyYjW8tD/FIl9w7mDhIzAu?=
 =?iso-8859-1?Q?0M6utMHJlH1lZ1mhctWUoNXR96Gk+NcD/t3KhJiy6ZAoSJLQDHOnavFskR?=
 =?iso-8859-1?Q?d+kNFKGNQ59Mj2OpxodpdY13soU5Pi1x4m45qBpmTLRNrAJPl6K9+EDkPa?=
 =?iso-8859-1?Q?1o67VaQ2baqTYB8sshRwWfwuiVE7MOFE0bplQEuDH8FGabuwQt/SaehbkD?=
 =?iso-8859-1?Q?TicShEgvgnQ4VlqcgiayfUXye5xU/ITS23S5lSboIJnnYc/zPm/ekfVXUM?=
 =?iso-8859-1?Q?D/riGfXa2eSQgp09p4RZi4um1XrfjGJ88d6Bibt9gkIi6RtQIJGpD6w8sq?=
 =?iso-8859-1?Q?3+sfygYkd4ZP5dIMr9nfP+vjEnFG6MXznFHkvsRsbvMhJ0mTdEEgUX1eEq?=
 =?iso-8859-1?Q?VdeFW6GI5EkC2unMlDJs2bLyAiA38xfrvsVhF5EFWmahHisG7vk6598D6E?=
 =?iso-8859-1?Q?FkHfUmCiJd3TKR2A1663vFrYw0YBnIwIu2/46UL/hmqNre2RXYLzkNtUpK?=
 =?iso-8859-1?Q?rWNCiI1H+w43lw4biuSblwXcOSfFt/2986h1NW48vSSKWCOw3aPXpFVOUA?=
 =?iso-8859-1?Q?Oi7U7p4XZbEtDuIl8/ESzvYjT+lBekHm4OBKBZeaNsMINnMQtlHIt2RUxr?=
 =?iso-8859-1?Q?tEvUdjT72vnkrZqyLdFxM1qAuCJZ1CUrA0m9mtA735LshrWVQJ+Co9AYxX?=
 =?iso-8859-1?Q?u6G4QJ1XMiqSGyKTRZLlAlU6zYJ+qRMhdr+4Rf1VD/WlLrOQ4dglmPcUgE?=
 =?iso-8859-1?Q?ngClW0M+kkH4S50023/FW2eXhP/Clr1RJhJvWhZLS8iy8PKuWkDHr5hA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 809d05ac-c5c6-4be3-2d74-08dbfd92f004
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 17:26:13.9161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uoJ0dn0+r/4K3+ovE9+tFFv3cIUAypu0bz4gBXf2oPPayWr+ZPvabv0UnfmovaVnmcl/+ViPOEdFcAfsMLIezA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5595
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 14, 2023 at 01:48:38PM +0200, Jouni Högander wrote:
> We need to configure VSC Select field in video dip ctl if we want to have
> e.g. colorimetry date in our VSC SDP.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 39e4f5f7c817..eedef8121ff7 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -523,10 +523,12 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>  			       0);
>  
>  	/* Wa_14013475917 */

For a moment I thought that your change in the logic below would bypass this w/a.
But then I read its description and notice that it is only about the bit 20, while
your new case below you set bit 26. So we should be good.

I even wonder if we shouldn't move this w/a below. let us to calculate the bits, but
then if wa condition val &= ~VIDEO_DIP_ENABLE_VSC_HSW;

> -	if (IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC)
> -		return;
> +	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC))
> +		val |= hsw_infoframe_enable(type);
> +
> +	if (type == DP_SDP_VSC)
> +		val |= VSC_DIP_HW_DATA_SW_HEA;

for the part of need to set this bit 26 I confess that I'm not 100% sure.
What register this is in the spec?

but if someone else check these bits, I have nothing against this patch:

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
> -	val |= hsw_infoframe_enable(type);
>  	intel_de_write(dev_priv, ctl_reg, val);
>  	intel_de_posting_read(dev_priv, ctl_reg);
>  }
> -- 
> 2.34.1
> 
