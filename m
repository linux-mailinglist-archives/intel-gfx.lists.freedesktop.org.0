Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D75370C5C4
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 21:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2BE10E22C;
	Mon, 22 May 2023 19:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1989710E222;
 Mon, 22 May 2023 19:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684782612; x=1716318612;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NPCPOFnV/Vj+afclbUMq5eaTxXYJG5EfyeLhX2DHDas=;
 b=js03IXyVlavHJDO6comfZgj4ysjHYzqfuR2vacD4U8wu/29v3bhd8V0g
 6LeX2pOuK8J4vaapuAmKXhA1EvAR2CkH8fErd8dunHeUFzz4Abk03mKRW
 n/0v8i7hC4nOu9M8gq89V5g0vJpDIGZ4yHH8p7QOXVJECibBNNckZADLk
 LzOWpaY9x9RyjpdI/DaR+slK1n85yBV3NfQeyF1srZSVDXsQTCEquPqDh
 eNtTdGYE/1rMx77QIyOl/qGJPNatYWLpTBFFrL0kvdhvIduqHkYfzsmYT
 E3pT+NLUdKq9dLY3BL68JTaf7r8DIq2jtZzJ6a8rxnYbIHqixfxMdj64s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="439370555"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="439370555"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 12:10:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="697747500"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="697747500"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2023 12:10:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 12:10:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 12:10:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 12:10:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 12:10:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+k3pcDd9SqNP6ZK0kJKnkepYmYgS4qYRL5jFFDu1aEHcYaWLspAk5gLWdk9WsVRAJ8FcINtTAMea1qM14pdV45Bm2eSNtdk0DV1uR9dTqhJf51iFVR1S+/14wU6qUu7lF4eJCY3p8bE0vRmlEE3TKW1T7e8DE4wC4OwCHscJWI6i+Ts9rhDaMkqkx64jixzH+mZfv3toxnYVd3B0BwJfPqUpYDFEGZqEoz3lO4tcCkEoO7kycFk6z6Dd4+vXcG42jPbbkREN9nWYqezUxLy+shWHuDFgi3ARZ9x5ncNxG5KTjAD8ubuPytH0PHUXje+JDWFkt9TlWLaj10iDk+aGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=teDdDkr+L01yg9HEq19cHrvFBKaF62HB7wCVS+idDac=;
 b=gSIJWzbw4pBsb4nIaMHqgr3aaMosUB3DMrlkOH00sCl+7+/2XP5UbCz37wWFWupFQmrs4kLbtXM53IcpJt+GJIsJl4X2TwbBR1YKVgHIAc/RpmLfzRxdUonQYvxLY7aQHz03TuBluXegYj1eLBVLqhPGlvG45Ypq+g2vL2w/DOytts3K4qK9hT6DfJJ2K0kiEcDz8nx4EzjJtDycvhCsiACJvfwvnoFeY8d19ihI24/VB5+9XTJi1cfWkD2AQszGI6h/l0C2IE+EZ/xnC6uginPjgOYToc1VtGIFkG0XGIfSb4wYPRmDEWlLekIWxTqHGI/rmifUxh06bI5Ow4TeGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB5628.namprd11.prod.outlook.com (2603:10b6:510:d4::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.28; Mon, 22 May 2023 19:10:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 19:10:07 +0000
Date: Mon, 22 May 2023 12:10:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <20230522191004.GJ10045@mdroper-desk1.amr.corp.intel.com>
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
 <20230518031804.3133486-6-matthew.d.roper@intel.com>
 <e4884ac2-15c6-b159-d0b5-6254cc3a1ca9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e4884ac2-15c6-b159-d0b5-6254cc3a1ca9@intel.com>
X-ClientProxiedBy: BY5PR16CA0024.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::37) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB5628:EE_
X-MS-Office365-Filtering-Correlation-Id: 58421cf4-8e14-4997-1288-08db5af8282e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DjuN36+grEnCBUMUBc6NEpAFbKaKWwHuRmMG74fxtByQQRVl2bpszfzWHK6f4bScRoPXlP+dqcA+ESv64fAiazaqBl5E7xzW0aTiRWiRUEvU3s9shiE+4bNbg88GNCEBRafK4lN2E8UaL2Tx+lt3MjT+wXZ1BHy1G4XYsXip895Ys6SjFR81P9Avu3x8AobkVjbK6LlmYZHow0W/fcO0s1bvV/aqNrnxQv+MgG2/PUQmnIp7TkVIYVgFkSM4PbppgAppfKdZL4boWaYnrapAAtoz1GJ9EDx19AmtWRMNFLXgbkTi4ZIneB8Z1gBVlvM0rsvempmiGGE4IsbS6S5XpCnz6vP2bGskBG31S1+s5ZUjXaY7QGhhut+uqT0eYWnNVdSr2eV1V6OYvB+XRoOypMyo3qHrE+e7e2Ui6KKQ2/ulizk8Cv4AnHkphUcLeleA0UYn213Zy1yoJNwEkuhWCTMO0plttoTIzlx/Oxsvm+uemCFs83bLY0sc6IhgJGUk+c+qcmN9hJE3tG5XrHJrGbWw8CvIo8zmjE59uHVia41El0m0DMTsj2uMQc9Cb/bt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(366004)(346002)(376002)(451199021)(6862004)(8676002)(8936002)(5660300002)(186003)(26005)(6512007)(53546011)(6506007)(86362001)(38100700002)(1076003)(82960400001)(83380400001)(41300700001)(6666004)(6486002)(33656002)(66476007)(66556008)(66946007)(450100002)(316002)(478600001)(6636002)(4326008)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hc7rNQk2wbxUAH7SnRhfwNRuCyI5VdH57dv04UgwZyJ4sRuB6ApMG9Qq16+T?=
 =?us-ascii?Q?a6H2xdsZm1h2wg/QaRWu6aUFXGmRwlGj3rdggfD5Z9+EOZsaoigcG9EkLCAv?=
 =?us-ascii?Q?1ol2jLpGQGl99tfhzO51MqHCL1XEQPeMGW/5cj3+ZgoGKqQ+GHHuNp+SMXBG?=
 =?us-ascii?Q?uQJiqR6nP1GpTzs3U/f0LE4N7S1PJ/aWtFygG61gqbSn26JQ2bBT1pUqwho0?=
 =?us-ascii?Q?1OehHWEubfTMY24vVr1B//p+0/nazWXBE370/FXYehuX1HZARmbra/W/GeBk?=
 =?us-ascii?Q?F4EKTcij4sQEWaju8OA+UhElBY9TZ5uQocn0EtztHTpis4CEihVqjOhhJ1vj?=
 =?us-ascii?Q?wDx2/ToHbW5IE5ftLLIgiu833UxqH7c9Fj6rD7qEIHI23qCnyw/6OVE4WXQU?=
 =?us-ascii?Q?0xZzhASIuFrR7X22GwSkci8LhOYcJpBsAlbSCt+OZEO3A2VfnL8WaANcKCt5?=
 =?us-ascii?Q?kk8cDailS3nDIGAC6LlQ5XVqxnM82RWfvNjWw0uSY+xm1jOP2pekpA0/awT/?=
 =?us-ascii?Q?wftbPkZy5puawd99ZM0BdbIkJi6TsQpDEDnboUDpXFb1qm57vBmlsQ24tujY?=
 =?us-ascii?Q?L/Bt+8bx8OnploWVxyru91crKoGNkMd8uJ7vJ1Hjsc2B9kJfr9dGZyKpRxIh?=
 =?us-ascii?Q?mYaqMrAfN5uBhQGw74pH62Q90bQ37RFRmk0zUsBuby22JdPpWZDM/IZYqTva?=
 =?us-ascii?Q?fZiXee6fzz6mTSJzlWuMOGz1Qon/ps+1Zd6vTEygjZ09dlWbupYmaRxUA9Vy?=
 =?us-ascii?Q?CtASMsb/y5TrTKqTy5JaqQxnjQ+HWT1TGkadJh+0uNeH6GRFdB1J47f6ODQM?=
 =?us-ascii?Q?5UjcDN8ESIhWgx6yZfUDvKwnEgzuhzzfLYpUKqAyoa5CZM2dGBUqdAZkqRgh?=
 =?us-ascii?Q?MZysKx3SpS4WI5sjlG5nA+iR0YR2bg/xlO5GXOhYPkiE71TPOus6q29v69DK?=
 =?us-ascii?Q?2HyHCI4050+0EhGiEoi1a6iqkWUh2cmxBpSU9AUde7+W3WDNW4NrhIh/UklE?=
 =?us-ascii?Q?1slIKiiTW348zB1G9UiXMaHdDTH1GkN2K483rNxYUcm9WFUWj2dDMaYc/dZd?=
 =?us-ascii?Q?gz4hnNHJcnWTr/+XjKzYJxw4BtXFXZfe/D8vtuxj4V6zgxgUIuUXXc9RNbX6?=
 =?us-ascii?Q?qUC+IvVsW8g9DuNm5s9J9HqBT07plLMzRLnliTtwfBSL1/OhhQl4Hhn5smeR?=
 =?us-ascii?Q?o/owwVocb4NeNXzTZw3RXxhAnRvHyqT0JBMKe3AmQHIeHs1+1pXKj5QJL6QL?=
 =?us-ascii?Q?d5BZbvixAxMXh0tex9rgqfEo6rjV6YDH9/L/PdTifubgiTZoJIl8YDRG+54h?=
 =?us-ascii?Q?uAIa5EtkBxArd7TbtPQ+BIcZw9KKsLiIi9tpoKg0uOJenBlc2d2TCeH5Mq0K?=
 =?us-ascii?Q?z6koVdELSAv830mOQrMpzKYLyd5RSkFwYBHxefuX8Pzn3BZmEDbwu6+AJi4d?=
 =?us-ascii?Q?eiquv5FFNJpIHjCv0X28vHRQSGI/k5zz9EL/5fPGNRaRO3+QtgioJxSAu+eR?=
 =?us-ascii?Q?7mP6XGD0b0L3ekwnwE4UoDF4Qx/WCiieyDc3VS5ZTwab458Y4yG5RcLdknr9?=
 =?us-ascii?Q?rIYMt8mosUN9n/r2W9arlUPRgSBg7RB4txbr+DGOYRM0IY6nw9BuYJA1ySk8?=
 =?us-ascii?Q?fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58421cf4-8e14-4997-1288-08db5af8282e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 19:10:07.7520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T4MYEKp5TyqrE6p+0NVttr4mA2VfHoXqjnPIzvEUG5rfQsyk1cAQqw4WR8OvTaCrAG4DzvvNC626Cl9R6AKuNQ84r4VMCcA4E+NuAMt9dZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5628
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display: Handle GMD_ID
 identification in display code
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 18, 2023 at 12:44:04PM +0200, Andrzej Hajda wrote:
> On 18.05.2023 05:18, Matt Roper wrote:
> > For platforms with GMD_ID support (i.e., everything MTL and beyond),
> > identification of the display IP present should be based on the contents
> > of the GMD_ID register rather than a PCI devid match.
> > 
> > Note that since GMD_ID readout requires access to the PCI BAR, a slight
> > change to the driver init sequence is needed --- pci_enable_device() is
> > now called before i915_driver_create().
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   .../drm/i915/display/intel_display_device.c   | 64 +++++++++++++++++--
> >   .../drm/i915/display/intel_display_device.h   |  5 +-
> >   drivers/gpu/drm/i915/i915_driver.c            | 10 +--
> >   drivers/gpu/drm/i915/intel_device_info.c      | 13 ++--
> >   4 files changed, 78 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 78fa522aaf0b..813a2a494082 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -6,7 +6,10 @@
> >   #include <drm/i915_pciids.h>
> >   #include <drm/drm_color_mgmt.h>
> >   #include <linux/mod_devicetable.h>
> > +#include <linux/pci.h>
> > +#include "i915_drv.h"
> > +#include "i915_reg.h"
> >   #include "intel_display_device.h"
> >   #include "intel_display_power.h"
> >   #include "intel_display_reg_defs.h"
> > @@ -674,18 +677,69 @@ static const struct pci_device_id intel_display_ids[] = {
> >   	INTEL_RPLP_IDS(&xe_lpd_display),
> >   	INTEL_DG2_IDS(&xe_hpd_display),
> > -	/* FIXME: Replace this with a GMD_ID lookup */
> > -	INTEL_MTL_IDS(&xe_lpdp_display),
> > +	/*
> > +	 * Do not add any GMD_ID-based platforms to this list.  They will
> > +	 * be probed automatically based on the IP version reported by
> > +	 * the hardware.
> > +	 */
> >   };
> > +struct {
> > +	u16 ver;
> > +	u16 rel;
> > +	const struct intel_display_device_info *display;
> > +} gmdid_display_map[] = {
> > +	{ 14,  0, &xe_lpdp_display },
> > +};
> > +
> > +static const struct intel_display_device_info *
> > +probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step)
> > +{
> > +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > +	void __iomem *addr;
> > +	u32 val;
> > +	int i;
> > +
> > +	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
> > +	if (!addr) {
> > +		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
> > +		return NULL;
> > +	}
> > +
> > +	val = ioread32(addr);
> > +	pci_iounmap(pdev, addr);
> > +
> > +	if (val == 0)
> > +		/* Platform doesn't have display */
> > +		return NULL;
> > +
> > +	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> > +	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
> > +	*step = REG_FIELD_GET(GMD_ID_STEP, val);
> > +
> > +	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++)
> > +		if (*ver == gmdid_display_map[i].ver &&
> > +		    *rel == gmdid_display_map[i].rel)
> > +			return gmdid_display_map[i].display;
> > +
> > +	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
> > +		*ver, *rel);
> > +	return NULL;
> > +}
> > +
> >   const struct intel_display_device_info *
> > -intel_display_device_probe(u16 pci_devid)
> > +intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
> > +			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
> >   {
> > +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> >   	int i;
> > +	if (has_gmdid)
> > +		return probe_gmdid_display(i915, gmdid_ver, gmdid_rel, gmdid_step);
> > +
> >   	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
> > -		if (intel_display_ids[i].device == pci_devid)
> > -			return (struct intel_display_device_info *)intel_display_ids[i].driver_data;
> > +		if (intel_display_ids[i].device == pdev->device)
> > +			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;
> >   	}
> >   	return NULL;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 0a60ebfaff80..9a344ee36d8c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -80,7 +80,10 @@ struct intel_display_device_info {
> >   	} color;
> >   };
> > +struct drm_i915_private;
> > +
> >   const struct intel_display_device_info *
> > -intel_display_device_probe(u16 pci_devid);
> > +intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
> > +			   u16 *ver, u16 *rel, u16 *step);
> >   #endif
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 522733a89946..d02c602e9a0b 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -754,14 +754,16 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >   	struct drm_i915_private *i915;
> >   	int ret;
> > -	i915 = i915_driver_create(pdev, ent);
> > -	if (IS_ERR(i915))
> > -		return PTR_ERR(i915);
> > -
> >   	ret = pci_enable_device(pdev);
> >   	if (ret)
> >   		goto out_fini;
> > +	i915 = i915_driver_create(pdev, ent);
> > +	if (IS_ERR(i915)) {
> > +		ret = PTR_ERR(i915);
> > +		goto out_pci_disable;
> > +	}
> > +
> >   	ret = i915_driver_early_probe(i915);
> >   	if (ret < 0)
> >   		goto out_pci_disable;
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 9d0b54ba50c1..5f38ff8caac0 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -345,7 +345,6 @@ static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct intel_
> >   static void intel_ipver_early_init(struct drm_i915_private *i915)
> >   {
> >   	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> > -	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
> >   	if (!HAS_GMD_ID(i915)) {
> >   		drm_WARN_ON(&i915->drm, RUNTIME_INFO(i915)->graphics.ip.ver > 12);
> > @@ -366,8 +365,6 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
> >   		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
> >   		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
> >   	}
> > -	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> > -		    (struct intel_ip_version *)&display_runtime->ip);
> >   	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
> >   		    &runtime->media.ip);
> >   }
> > @@ -575,6 +572,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
> >   	struct intel_device_info *info;
> >   	struct intel_runtime_info *runtime;
> >   	struct intel_display_runtime_info *display_runtime;
> > +	u16 ver, rel, step;
> >   	/* Setup the write-once "constant" device info */
> >   	info = mkwrite_device_info(i915);
> > @@ -585,11 +583,18 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
> >   	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
> >   	/* Probe display support */
> > -	info->display = intel_display_device_probe(device_id);
> > +	info->display = intel_display_device_probe(i915, info->has_gmd_id,
> > +						   &ver, &rel, &step);
> >   	if (info->display) {
> >   		display_runtime = DISPLAY_RUNTIME_INFO(i915);
> >   		memcpy(display_runtime, &DISPLAY_INFO(i915)->__runtime,
> >   		       sizeof(*display_runtime));
> > +
> > +		if (info->has_gmd_id) {
> > +			display_runtime->ip.ver = ver;
> > +			display_runtime->ip.rel = rel;
> > +			display_runtime->ip.step = step;
> > +		}
> >   	} else {
> >   		info->display = &no_display;
> >   	}
> 
> 
> Why not embed display stuff into some intel_display_info_create(i915) ?
> It could be one tiny step further in separating display from i915.
> It could also allow write ver, rel, step directly into runtime instead of
> passing them via pointer to local vars and copying.

There might definitely be some further refactoring in the future, but at
least as things stand now, the device info (including the default values
for the runtime-modified items) is a driver-wide read-only constant
structure.  We always need to copy the __runtime (for device info) and
__runtime_defaults (for display device info) into a per-device structure
before updating it.  If we didn't do that, probing one device would find
up changing a shared structure that other devices are trying to use,
which would be bad (e.g., if you had two DG2 cards plugged into the same
system that had different fusing).


Matt

> 
> Regards
> Andrzej

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
