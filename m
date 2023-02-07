Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB29068DE44
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2847410E4D6;
	Tue,  7 Feb 2023 16:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4D010E4D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675788825; x=1707324825;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=I6nZVrjjI0U7TcsgK8YUR4/OAFWbe250+Cr+4VOxDok=;
 b=X3dJO6bRbBd7lamV4e6OJa9wKe4cyXWB5wwM/7MFTPT7NhigyQko5CeO
 I7N3SKJx2O+IDDl1qlTBuEZ/ccTM9XDFz5CNUwRnqxKlyf9PqDSZrcaLh
 L2tY1TOiBkr0C6UfzeKQhEs7x0IXyS/tCgwLo42aD9GgHVUU1hlkqu/JE
 YB2zg0SKUDMmMQKtv7lVwRc7QTQdOIigaqh7AgvO7YuErYaIODON33Q5F
 XDY9SLxcxr56bbLQduOfJCgOkBHYzIwk1EyeqeElm0ssF/r8Prl9iPaB/
 rBBBqAPZxZJcWXFz0WsxqFpRaHqD1WSTLWvHHG+VQkb1VjebE3ErIh6N9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="329577237"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="329577237"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:53:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="775621732"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="775621732"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2023 08:53:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 08:53:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 08:53:43 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 08:53:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isS+JmRFZlpZcgdOMQLz9nH0CxKDksUR/CeyDDBbFH/6lRKc8trZmsah3Zf2NOzBDVAjNO9sFWsP9Km4EQDCBpuHHQIorSeyI13/gjViZNfxW6F5KRRqFqTdQhVawRwRlzL4AIQzcg4vJf514VNlYWTK+f6588dRhLKQVklNbuWPDg3Of2GpNupfsFuiQRItriVSrjTGxX7KYCPa5X89wMNZqoVSKqz2sSwOSESzhRB8KL5Ds25GITICJY4+7qag3Kz/IXPsbiEgj28HBfCbokeHBLOkVOf2G8FbJjl76EYITCZeRZ+AY56nUceaVgwyxM01VYr+AfMhDjaLa5p6KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2XuzawTnPHAO0tsHhGaSwHXOvvA1szgKe9F/5cMo4Z4=;
 b=D0dP9FKd+cBpQ2aDwZcgUgGzjPYrO7GqJEhK0BtNzCLHDwbG7utj5XVLDMbjnrei9CRvO1KpICgSG3/s4NDHMBFVGkcuvGtoZMIipvBZbBRAVlHOnJfj1Min2XoyZTRs31kW0Fc2UbQJWC/sQmxnRw0/wWlTg3PDhE4JwnWG8gX0CV2H8YSMgG7oCkrETRV81e9Bk4pyNuxPLjh/yUTYPoJeFQ+ADfvm9YeIT+oJQzKRk5YPT4cdpdjmJq8RnxUhkm+cParTXiNIEHMCSpswFewSChB9/2Jtxfy3dCXtKLSxN4xRDebxwB0DVgufcqYgLbTZYgadaujwYTpuSCkmZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH3PR11MB7322.namprd11.prod.outlook.com (2603:10b6:610:14a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 16:53:36 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 16:53:36 +0000
Date: Tue, 7 Feb 2023 13:53:28 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230207165328.tnjo6or2youqokau@gjsousa-mobl2>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-9-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230105125446.960504-9-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR13CA0183.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH3PR11MB7322:EE_
X-MS-Office365-Filtering-Correlation-Id: 866f9b49-9335-4347-d4f3-08db092bda63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pJXPWUwV49VYYnKxsMCPQMI8lvIHnJucMQi0IZ7e57LVOc21EUfHJHR35Ua09A7S0H0r0tP22RKv1YjWzJzavdD9w0n9YZXSLisHF+/x2/SG8LbIuYXVuaP2I59z2St19Qc2UrtmvN1QNdJrEzfVS9vhM/WKyhE3Pz9e19vNTqFn6dWEZFKX+XzrsReOg3XLRlsUC4BbexcQJnLA81NLyZPQN8rEk2Fj5Cj1Id5TUfLTO9MPkLEJSnIL6uvWPFtRuK9+4OqyGoeGtcSjPRFksZnCf0zomb3VbeQVD25WXEv/kngv9nqxBJYNdTNOGTbft8k180nQrQj4QU0ul9dLFrKe0tP6DHLv387NdohiNcPogNsnHIJOWThtYVj6V8w8WoWBBlQl9cxOWKqzoj14ImFxBmgUXMhb0H8oylvAIljbJJAerlEZIZ3i6aVkBb/iqXpkV3cPPjFmDlll8HhDZFsHoxY5CB9gol3ljPgkHlpvyvKgDMnatnoH5bF6F/vw7M/ilUFXYReLKYgRU1E/ZbetpQR6swnC13rp4H/C5jVxOFJAO2jq+s/qXedYjQL07GprAerEHqhpNVi3WFA6meVb1l8w/aDO+eKVnPj0nOQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(346002)(136003)(366004)(39860400002)(396003)(451199018)(66946007)(316002)(8936002)(8676002)(66476007)(66556008)(33716001)(4326008)(41300700001)(86362001)(38100700002)(82960400001)(1076003)(6506007)(5660300002)(9686003)(186003)(6512007)(26005)(107886003)(6666004)(2906002)(30864003)(44832011)(966005)(6486002)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?swO1Zqzj4gZWUbNYVIq17xP8l9AkoQloMUM4nOsyF2laKSwrkhAuWcBYzd?=
 =?iso-8859-1?Q?pPUjuwH/5yVHeai9foQ+rckttRAAV2aHX3DR6JDBkaK1BZwoTcRxRjXa1c?=
 =?iso-8859-1?Q?PiVbrjjrgnnafjYIkyhL3DkspXZFUT2r5R/MIDp0FKVNNKpT/dcWyAq9Iw?=
 =?iso-8859-1?Q?WMRkBIcpYkywg9T6x4SVQPM2bXyz2zKEx/PViQQwDMELBLcxoPer5UqzJd?=
 =?iso-8859-1?Q?F+SJsnKI8A7pqvylcYdD0W97DbgpKzy8VLn1j8/1zPY6ql8akpB0WFM1tt?=
 =?iso-8859-1?Q?MFCWNprLbx+gK9Gmhbx0wArCjkZr6tYsSWKwLEUxavl8GND851XLmyRcUW?=
 =?iso-8859-1?Q?ldoPzP2AArx81Xu8Vk3hkqpN0kwQZ4aKMhdSNuI7rkZkm5PwQmL1hZGrax?=
 =?iso-8859-1?Q?ut85MfTZf5BCWSfH4gA2Kjxxoe/lawo69/57cJK0CxoVwjl3O8IFvTidNY?=
 =?iso-8859-1?Q?5I+zkBHBgxFpmvuTfhBGfkxHDuJwAibiAn3ArWh6485t2KXRUqUy88Uncr?=
 =?iso-8859-1?Q?zO5lUg6hoATirEEak6zfWbPBLBqQx9xPlNRVqTB/Ug68q9cyufLfs1vJQD?=
 =?iso-8859-1?Q?jacrIfpX6SWMFA3rV910vOs+6OKAcxjDGCkhrzl8qvtLZIZZJDG6AGhhVq?=
 =?iso-8859-1?Q?NqjVMQaXAM77U/c7q2TPKal7pvw/GY647LmZvLpJNP7xFaFanwwViunMZg?=
 =?iso-8859-1?Q?apNcU5cvDwpU5XjNoPcMSEbpXSDyNsd9t9O86kmMt0kSm62jamDRoTrO0m?=
 =?iso-8859-1?Q?Y3pYwtuHPetE3MKQcuWHZjkbrIca+ojDKDX+98E1jA9lb4aDNZKM2CZNBQ?=
 =?iso-8859-1?Q?gChlEXy7MOHSj6KZny+e5x1mrCAqsPqdcecXED1KWY/+4NHmARvfjpoMhV?=
 =?iso-8859-1?Q?3Xj4kgnIVBk7vru+pJlEhG37m3rIN5C9PDi+fGnyeIEvB7i0mNR3m69xbw?=
 =?iso-8859-1?Q?nUP7WjbuN06p4KGZKwh3R3grvc8u9QMdFVL/sb6kNlwgssgyqndfDwVyYC?=
 =?iso-8859-1?Q?82KFDORlI9uBW+Nj25M3AkMjCWyWGn+bJKLX4J5QAOki/amRgm1HdpyMqV?=
 =?iso-8859-1?Q?KUDvuh0wIzgnjDd+LfDPRBAndGRY+0n/0Q0cy2NA0rFumt3F+a0gr9uBbx?=
 =?iso-8859-1?Q?kA9qfHv4dUbyzqBlO917BP2trCSfzb8Kz8CQ7fH999y+zY5vJg61WJ1eS1?=
 =?iso-8859-1?Q?OU7WmzjujjDAJoPwqCukUiuhA/pa71Vc5ikXNJwkwS3Pry1whUfe5C5kzi?=
 =?iso-8859-1?Q?xEQNXWILdsX9pNBfa78wUxvARuUSM61a+u0q+YFU/HvO26HO5d5ebN30f/?=
 =?iso-8859-1?Q?ELN/1qqzDqpxONUGBijQpEWupM+1fSdEi5qbUaY7Tb9o4WB3uzL80hKUEo?=
 =?iso-8859-1?Q?2i9my2v0TkTmqDX9EkWT3sA3GWz/emn+0zPGRQ5if8qTcS0AIuki7B9BQc?=
 =?iso-8859-1?Q?Qy7tkOSwJIl8LArXxvBeUUHXlUPjOzgSMDzy6jt87v3G5qdu0xVvBuQsVA?=
 =?iso-8859-1?Q?73LNUMWk4WS4fts1ammAytIE5eWMuMHrormXKuVgt5bPXGYJnuLxpitX+T?=
 =?iso-8859-1?Q?sFoDhzjchK0nVSQHT4YwahOFyz9vwmNcQ6h5h4/KS81RRqYVDvjym7DTVL?=
 =?iso-8859-1?Q?EpmyNYb9E4hmIqVtoT0DYlzoTTnr3WbUJMdWpeRnoNYamngBZ0odsz5Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 866f9b49-9335-4347-d4f3-08db092bda63
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 16:53:36.1682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hjWNdSt4vTnBBoH1PdOOIUMpt1ThqEEpZ2wnB42S4k1GQyAqGgfC9CHxCiv48eF/FrbnPIojX6byInN0bYAlqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7322
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 08/21] drm/i915/mtl: C20 PLL programming
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 02:54:33PM +0200, Mika Kahola wrote:
> C20 phy PLL programming sequence for DP, DP2.0, HDMI2.x non-FRL and
> HDMI2.x FRL. This enables C20 MPLLA and MPLLB programming sequence. add
> 4 lane support for c20.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-9-mika.kahola@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 279 +++++++++++++++---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  30 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
>  .../drm/i915/display/intel_display_types.h    |  19 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
>  5 files changed, 311 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 3d86b0f1c36d..022888050a68 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -14,6 +14,7 @@
>  #include "intel_panel.h"
>  #include "intel_psr.h"
>  #include "intel_uncore.h"
> +#include "intel_tc.h"
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> @@ -234,6 +235,18 @@ static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
>  	}
>  }
>  
> +static void intel_c20_write(struct drm_i915_private *i915, enum port port,
> +			    int lane, u16 addr, u16 data)

I think it would be better to name this function intel_c20_sram_write(), so
there is no confusion about the semantics of intel_cx0_write() vs
intel_c20_write().

Technically, this is for both SRAM and CREG registers, but I think just using
"sram" in the function name is enough to make the distinction. We could add a
comment one deems necessary.

> +{
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, (addr >> 8) & 0xff, 0);

I think the 0xff mask is unnecessary here.

> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, (data >> 8) & 0xff, 0);

Also here I think the 0xff mask is unnecessary.

> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  			    int lane, u16 addr, u8 clear, u8 set, bool committed)
>  {
> @@ -1155,7 +1168,7 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  
>  	for (i = 0; tables[i]; i++) {
>  		if (crtc_state->port_clock <= tables[i]->clock) {
> -			crtc_state->c10mpllb_state = *tables[i];
> +			crtc_state->cx0pll_state.c10mpllb_state = *tables[i];
>  			return 0;
>  		}
>  	}
> @@ -1215,7 +1228,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
>  				  const struct intel_crtc_state *crtc_state,
>  				  struct intel_encoder *encoder)
>  {
> -	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
> +	const struct intel_c10mpllb_state *pll_state = &crtc_state->cx0pll_state.c10mpllb_state;
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> @@ -1299,6 +1312,218 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> +static bool intel_c20_use_mplla(u32 clock)
> +{
> +	/* 10G and 20G rates use MPLLA */
> +	if (clock == 312500 || clock == 625000)
> +		return true;
> +
> +	return false;
> +}
> +
> +static u8 intel_c20_get_dp_rate(u32 clock)
> +{
> +	switch (clock) {
> +	case 162000: /* 1.62 Gbps DP1.4 */
> +		return 0;
> +	case 270000: /* 2.7 Gbps DP1.4 */
> +		return 1;
> +	case 540000: /* 5.4 Gbps DP 1.4 */
> +		return 2;
> +	case 810000: /* 8.1 Gbps DP1.4 */
> +		return 3;
> +	case 216000: /* 2.16 Gbps eDP */
> +		return 4;
> +	case 243000: /* 2.43 Gbps eDP */
> +		return 5;
> +	case 324000: /* 3.24 Gbps eDP */
> +		return 6;
> +	case 432000: /* 4.32 Gbps eDP */
> +		return 7;
> +	case 312500: /* 10 Gbps DP2.0 */
> +		return 8;
> +	case 421875: /* 13.5 Gbps DP2.0 */
> +		return 9;
> +	case 625000: /* 20 Gbps DP2.0*/
> +		return 10;
> +	default:
> +		MISSING_CASE(clock);
> +		return 0;
> +	}
> +}
> +
> +static u8 intel_c20_get_hdmi_rate(u32 clock)
> +{
> +	switch (clock) {
> +	case 25175:
> +	case 27000:
> +	case 74250:
> +	case 148500:
> +	case 594000:
> +		return 0;
> +	case 166670: /* 3 Gbps */
> +	case 333330: /* 6 Gbps */
> +	case 666670: /* 12 Gbps */
> +		return 1;
> +	case 444440: /* 8 Gbps */
> +		return 2;
> +	case 555560: /* 10 Gbps */
> +		return 3;
> +	default:
> +		MISSING_CASE(clock);
> +		return 0;
> +	}
> +}
> +
> +static bool is_dp2(u32 clock)
> +{
> +	/* DP2.0 clock rates */
> +	if (clock == 312500 || clock == 421875 || clock  == 625000)
> +		return true;
> +
> +	return false;
> +}
> +
> +static bool is_hdmi_frl(u32 clock)
> +{
> +	switch (clock) {
> +	case 166670: /* 3 Gbps */
> +	case 333330: /* 6 Gbps */
> +	case 444440: /* 8 Gbps */
> +	case 555560: /* 10 Gbps */
> +	case 666670: /* 12 Gbps */
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
> +
> +	/* banks should not be cleared for DPALT/USB4/TBT modes */
> +	/* TODO: optimize re-calibration in legacy mode */
> +	return intel_tc_port_in_legacy_mode(intel_dig_port);
> +}
> +
> +static void intel_c20_pll_program(struct drm_i915_private *i915,
> +				  const struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
> +{
> +	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20pll_state;
> +	bool dp = false;
> +	int lane_count = crtc_state->lane_count;
> +	bool cntx;
> +	int i;
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		dp = true;
> +
> +	/* 1. Read current context selection */
> +	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
> +		PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* 2. If there is a protocol switch from HDMI to DP or vice versa, clear
> +	 * the lane #0 MPLLB CAL_DONE_BANK DP2.0 10G and 20G rates enable MPLLA.

Shouldn't this sentence end at "CAL_DONE_BANK"?

> +	 * Protocol switch is only applicable for MPLLA

Isn't it actually MPLLB?

> +	 */
> +	if (intel_c20_protocol_switch_valid(encoder)) {
> +		for (i = 0; i < 4; i++)
> +			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);

About clearing the calibration banks, the spec (BSpec: 49200) says "use lane 0
message bus to write all 0s data to PHY CREGs
RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK_<0..3> for each of the owned PHY lanes."

This is clearing them only for lane 0. Since both lanes are owned for native
connections, I think we should also clear the calibration banks for lane
1.

> +	}
> +
> +	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
> +	/* 3.1 Tx configuration */
> +	for (i = 0; i < 3; i++) {
> +		if (cntx)
> +			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
> +		else
> +			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
> +	}
> +
> +	/* 3.2 common configuration */
> +	for (i = 0; i < 4; i++) {
> +		if (cntx)
> +			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +		else
> +			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +	}
> +
> +	/* 3.3 mpllb or mplla configuration */
> +	if (intel_c20_use_mplla(pll_state->clock)) {
> +		for (i = 0; i < 10; i++) {
> +			if (cntx)
> +				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						PHY_C20_A_MPLLA_CNTX_CFG(i),
> +						pll_state->mplla[i]);
> +			else
> +				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						PHY_C20_B_MPLLA_CNTX_CFG(i),
> +						pll_state->mplla[i]);
> +		}
> +	} else {
> +		for (i = 0; i < 11; i++) {
> +			if (cntx)
> +				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						PHY_C20_A_MPLLB_CNTX_CFG(i),
> +						pll_state->mpllb[i]);
> +			else
> +				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						PHY_C20_B_MPLLB_CNTX_CFG(i),
> +						pll_state->mpllb[i]);
> +		}
> +	}
> +
> +	/* 4. Program custom width to match the link protocol */
> +	if (dp) {
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_WIDTH,
> +				is_dp2(pll_state->clock) ? 2 : 0,
> +				MB_WRITE_COMMITTED);
> +		if (lane_count == 4)
> +			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_WIDTH,
> +					is_dp2(pll_state->clock) ? 2 : 0,
> +					MB_WRITE_COMMITTED);

Nitpick: Maybe use "lane_count == 4 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0" so
we have just one call to intel_cx0_write() here? The same could be applied for the
other cases below. We could defined the target lane just once via a variable and
use that for each call. Althought nothing really changes functionally, it would
improve readability IMO.

By the way, looking at the instruction at the beginning of the "PHY Rate Related
Register Programming Flow" and the "PHY Lanes and Transmitter Usage", it looks
like only lane 0 should be used. Does that apply only for configuration context
programming (i.e., calls to intel_c20_write())?

> +	} else if (is_hdmi_frl(pll_state->clock)) {
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_WIDTH,
> +				1, MB_WRITE_COMMITTED);
> +		if (lane_count == 4)
> +			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1,
> +					PHY_C20_VDR_CUSTOM_WIDTH, 1, MB_WRITE_COMMITTED);
> +	} else
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_WIDTH,
> +				0, MB_WRITE_COMMITTED);
> +
> +	/* 5. For DP or 6. For HDMI */
> +	if (dp) {
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +				BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
> +				MB_WRITE_COMMITTED);
> +		if (lane_count == 4)
> +			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +					BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
> +					MB_WRITE_COMMITTED);
> +	} else {
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +				((is_hdmi_frl(pll_state->clock) ? 1 : 0) << 7),
> +				MB_WRITE_COMMITTED);
> +
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> +				(intel_c20_get_hdmi_rate(pll_state->clock) << 0),
> +				MB_WRITE_COMMITTED);
> +	}
> +
> +	/*
> +	 * 7. Write Vendor specific registers to toggle context setting to load
> +	 * the updated programming toggle context bit
> +	 */
> +	intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +			cntx ? 0 : 1, MB_WRITE_COMMITTED);
> +	if (lane_count == 4)
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +				cntx ? 0 : 1, MB_WRITE_COMMITTED);
> +}
> +
>  int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
>  				   const struct intel_c10mpllb_state *pll_state)
>  {
> @@ -1342,7 +1567,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
>  
>  	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> -	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> +
> +	if (is_hdmi_frl(crtc_state->port_clock))
> +		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
> +	else
> +		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		intel_dp = enc_to_intel_dp(encoder);
> @@ -1588,8 +1817,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
>  		       XELPDP_LANE1_PCLK_PLL_ACK;
>  }
>  
> -static void intel_c10pll_enable(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> @@ -1597,6 +1826,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
> +	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/*
>  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> @@ -1615,7 +1845,10 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  					    CX0_P2_STATE_READY);
>  
>  	/* 4. Program PHY internal PLL internal registers. */
> -	intel_c10_pll_program(i915, crtc_state, encoder);
> +	if (intel_is_c10phy(i915, phy))
> +		intel_c10_pll_program(i915, crtc_state, encoder);
> +	else
> +		intel_c20_pll_program(i915, crtc_state, encoder);
>  
>  	/*
>  	 * 5. Program the enabled and disabled owned PHY lane
> @@ -1654,31 +1887,21 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  	 * 10. Follow the Display Voltage Frequency Switching Sequence After
>  	 * Frequency Change. We handle this step in bxt_set_cdclk().
>  	 */
> -}
> -
> -void intel_cx0pll_enable(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -	intel_wakeref_t wakeref;
> -
> -	wakeref = intel_cx0_phy_transaction_begin(encoder);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -	intel_c10pll_enable(encoder, crtc_state);
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> -static void intel_c10pll_disable(struct intel_encoder *encoder)
> +void intel_cx0pll_disable(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	bool is_c10 = intel_is_c10phy(i915, phy);
> +	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/* 1. Change owned PHY lane power to Disable state. */
>  	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> -					    CX0_P2PG_STATE_DISABLE);
> +					    is_c10 ? CX0_P2PG_STATE_DISABLE :
> +					    CX0_P4PG_STATE_DISABLE);
>  
>  	/*
>  	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
> @@ -1716,18 +1939,6 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
>  		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> -}
> -
> -void intel_cx0pll_disable(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -	intel_wakeref_t wakeref;
> -
> -	wakeref = intel_cx0_phy_transaction_begin(encoder);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -	intel_c10pll_disable(encoder);
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
> @@ -1737,7 +1948,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
> -	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
> +	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10mpllb_state;
>  	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct intel_encoder *encoder;
>  	struct intel_dp *intel_dp;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index fd48c75ee532..794372f4798d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -175,4 +175,34 @@
>  #define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
>  #define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
>  
> +/* C20 Registers */
> +#define PHY_C20_WR_ADDRESS_L		0xC02
> +#define PHY_C20_WR_ADDRESS_H		0xC03
> +#define PHY_C20_WR_DATA_L		0xC04
> +#define PHY_C20_WR_DATA_H		0xC05
> +#define PHY_C20_RD_ADDRESS_L		0xC06
> +#define PHY_C20_RD_ADDRESS_H		0xC07
> +#define PHY_C20_RD_DATA_L		0xC08
> +#define PHY_C20_RD_DATA_H		0xC09
> +#define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
> +#define PHY_C20_VDR_HDMI_RATE		0xD01
> +#define  PHY_C20_CONTEXT_TOGGLE		REG_BIT8(0)
> +#define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
> +#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
> +#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
> +#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
> +#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
> +#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
> +#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
> +#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
> +#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
> +
> +#define C20_MPLLB_FRACEN		REG_BIT(13)
> +#define C20_MPLLA_FRACEN		REG_BIT(14)
> +#define C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
> +#define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
> +#define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
> +
> +#define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
> +
>  #endif /* __INTEL_CX0_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e796e5cf10f0..a5fbc4fed28d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3078,6 +3078,11 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
>  
>  	intel_tc_port_get_link(enc_to_dig_port(encoder),
>  		               required_lanes);
> +
> +	/* FIXME: Add MTL pll_mgr */
> +	if (DISPLAY_VER(i915) >= 14)
> +		return;
> +
>  	if (crtc_state && crtc_state->hw.active) {
>  		struct intel_crtc *slave_crtc;
>  
> @@ -3529,9 +3534,9 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  
>  	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
>  
> -	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
> -	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
> -	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
> +	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
> +	intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
> +	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
>  
>  	intel_ddi_get_config(encoder, crtc_state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index fdd65781ae40..4a69727fbb91 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -983,6 +983,23 @@ struct intel_c10mpllb_state {
>  	u8 pll[20];
>  };
>  
> +struct intel_c20pll_state {
> +	u32 clock; /* in kHz */
> +	u16 tx[3];
> +	u16 cmn[4];
> +	union {
> +		u16 mplla[10];
> +		u16 mpllb[11];
> +	};
> +};
> +
> +struct intel_cx0pll_state {
> +	union {
> +		struct intel_c10mpllb_state c10mpllb_state;
> +		struct intel_c20pll_state c20pll_state;
> +	};
> +};
> +
>  struct intel_crtc_state {
>  	/*
>  	 * uapi (drm) state. This is the software state shown to userspace.
> @@ -1126,7 +1143,7 @@ struct intel_crtc_state {
>  	union {
>  		struct intel_dpll_hw_state dpll_hw_state;
>  		struct intel_mpllb_state mpllb_state;
> -		struct intel_c10mpllb_state c10mpllb_state;
> +		struct intel_cx0pll_state cx0pll_state;
>  	};
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0b08e9b6ea22..9e06bf10ce8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -53,6 +53,7 @@
>  #include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> @@ -422,7 +423,14 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
>  
>  static int mtl_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
> +
> +	return 2000000;
>  }
>  
>  static int vbt_max_link_rate(struct intel_dp *intel_dp)
> @@ -451,7 +459,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	/* The values must be in increasing order */
>  	static const int mtl_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
> -		810000,
> +		810000,	1000000, 1350000, 2000000,
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -- 
> 2.34.1
> 

