Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9865870B0C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 20:54:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D870112527;
	Mon,  4 Mar 2024 19:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQCcm7k2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B64FB112527;
 Mon,  4 Mar 2024 19:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709582042; x=1741118042;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7I2/9ga4/zEBfV0KSsHDmL8Y/uiGoMut1YU7rrpJ07k=;
 b=FQCcm7k2CSLkqwvFOQTr+6HUoEinWAE6vkLlwoaBc6E9GnNeaoM9WQVg
 8ncBTK/fat1zpl1LeHfYwu/hJlVEv8FCRrUSV/VMTNYgqEZodX2mMLpQY
 UFYx55utpvkD1GnlHxwQ1FrRiYlu2kEpr+6NwZSjBWuBRTQY9MsEpap/C
 hwJMNgWexEMhckc6EO9M80JhISul64sZeCzGJ5dPrbI4k5mD/zVv/SahW
 iLKbDnqUp8TA++NUOJvJw/lQ2yKDF6T8rtm74xwTv2OEkQNhqg2DKRNip
 eo77w9QMXrClz1RlsQLFjNwoBOcHp2ihKjZ05T2EmP9MG/bqcl5/eaOVK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="21634037"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="21634037"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 11:53:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="9173475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 11:53:38 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 11:53:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 11:53:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 11:53:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 11:53:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PE350ObMeXpbIHjWGPjrL7j7MvToahhe4XGNZsylSMHm62ZRgA8J1qVsFEFI9/5T/Vxu/ZhiXCpGT+b6qihbdSc1v96kziLDE2JwR0iVww7fTpV8kZv8zFQRArZLu67x62sjjOwfHFVb6Faf/HCr8nhUJWBxxVLWTsdXnQb0RQXuuOh0N5SbPNJ+8h0gGgEM1yt4PAEMTQXywGbSkChPl4qkS62aB15HZH6cKA87zVDs15Efdncsg8AlsE/Q1I+zngueJZi6422KmHy/vQ1S2N/RBdZ4ZMDpJ1Tf6v0WX5Pv6mgku36Jpo201YFNihJxY/B4vj4Slj2MLoRmTCVp8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/F1XCbIkZ01glCsDS55gkqdq6420ckFEWpj2ZqoRRRw=;
 b=WF/0yxpTTbhH2qxbmu0NvCzg32JbXupL0pHAEmCDKanZ/IKsz1Bv+5w9nbybskcLi+jLeKLIz82oph3S+nudVhRZcaC5RO2ZVAFB8yeL6DabGdM+12yh4lSDnsvK959KbEwU5ucG/jniYr1f+e8jqwU5TIjePX3YwJII65/NRdD3yeFRJJa/2161OAdvO7WwjTH6lHZlg5yQWKnukvpf4hgsrjgl9OcjUWHzNTavtDUMQC8sg5x7QLWNAHw+jHkQNfDHy+KxFYdN5HzJ+FI828h0t3ClytoVvKSeI2RpDw3yUIlOj9gsTKDY5CJSVWfQjcsFPhLdtBVd65D0xwd3eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 19:53:33 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 19:53:30 +0000
Date: Mon, 4 Mar 2024 13:53:27 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <vinod.govindapillai@intel.com>, <stanislav.lisovskiy@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 8/8] drm/xe/lnl: Enable display support
Message-ID: <d5eiqbczwijves7xh7baizfawoyi623bxccxxz3m4sewoukjsa@7k5ufxkb3j3v>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-9-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-9-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0201.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL1PR11MB5223:EE_
X-MS-Office365-Filtering-Correlation-Id: 12a49ab7-7347-4d9f-c48e-08dc3c84c3c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7/e0xx7qXcafHmlxoIDnaftxMwC2MWxmKrpQD2TQfI96n7oiBMMdNyRTyBXttFAB/E/Jt/Gj18cwxTSMvCPNx0mXghPqxjaNPhfhvhVKyf6TILqtqRiBOQPMN/hl96gy9WKMYr9ZsiSRUz9SWnj8/CIrz6gG3QFvOZoiu0HXXCIyCS9u6T773kzB0GFi7HKFuj50bQrMVxA/Y9JLIGy+GVRNy9ACNtdXnDFPw46rcH4SId9PdNYeFFXVVdbh2IIU+MdN4ecYevb5mMkE8mudikII7qlW6Ys9dRlEpZJtOCBHUB7YXrhhnDYjKHdUFo9fsMKtblJFLXlVDCXpY36IpikuTszubRkuzlUJgqP1NLQyrgezJeCDE/q/+44dbXvD4erBODQjTh4umLgip0X85vtIaxUmADLcPdmWrWaY1gwcuSiNYquhg59XyEuffBKkJbryhhkntf44n7vvcpdngtpJQ5Bc6tI//lLi+srFYV1Q9ZMLf3yIK7m9/iqRQX9ayrbzefgKHnyVgz6HOU5ladKgpHBiylyd/XlQLJGHnn6U/GF7maQvMFk1eWfM5T6HHp8T3gH8XS4IRXsUA1g/lfjMi33eiELSonXbG3Rv+66nSoJ/igVbJiPQ2bXpkFpDYIq8+B1nSSydvfKcux8QdO0R7+wFNfLSpHbAe2vv4Eg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3pE1tEWSNKc/qxRgdk4ExObS7FTcQ5LrEyNyZke6liEoMylqUtWbTVwLW+j0?=
 =?us-ascii?Q?+S0uUdmycf3idvBTnVINcmIe/Nhjbbqs5T6+RlnmE8TkH6aL+4yoAHv7Y2iX?=
 =?us-ascii?Q?MXnSX3FxBw664cmKkvH0W6BDz1wnG3zcuGZsS0VNWO3NBDYRTJqLla172ZXS?=
 =?us-ascii?Q?H3eqRBpdQSgJrQOToU+ieXSWUhRhRn7ZMPPpTHkofk/2t1JHE4nEdtyOkKqK?=
 =?us-ascii?Q?0u0R91Cq9a64vhkVnUPqYyiCITOQ7jTYo77tGlP9hUUZnsF9ij8lTH6lKHvF?=
 =?us-ascii?Q?l6SUJ0wKjfAKgX++L4gyAyweFf7pwaW03ZmpVJItRITPcOYK8ghtEeWChNsg?=
 =?us-ascii?Q?7FE6n7wa9Qf9xV9kxwShCw09i/Ea9dCyxix+9XzWFPCQaLdUvLhv8BT/Mk8E?=
 =?us-ascii?Q?TefdeUYS7ChZ6c5TYRbo4mGuhfhrS0CplIxxLmyxw8c6QyP1iFGd/GUrT6oe?=
 =?us-ascii?Q?x3IrQBpqrsf+ogfJ2fMYFDRgOBTipIdCf1+GfZt6PAeZrGj3Gd9ywie+ZM78?=
 =?us-ascii?Q?Sy5QIM+HamAdSvWnZx/AXKIub3YZRxrhouXtwwRLARoG1YXpequ8cc6Vv3+T?=
 =?us-ascii?Q?yfYBHlP8FQ75Y0z5Ar1ika6JSwaVuwiCa+eA5hDSyDw74y6r1Y/HYzNvGoW4?=
 =?us-ascii?Q?pvfPG1AzaLtbQnHz0VlezqO4EcRKq6/GOeFTUTlzSJjcxGScbcSYJ940lGHd?=
 =?us-ascii?Q?2R5HMJgKT1N0kW8yUQTNT5wbl55rBhfMFGzUh+sBYBDgv0CDam3hFxM6PXYI?=
 =?us-ascii?Q?8OlhZfh96Ft/tuDrMjmSnp1X43KG70uG8BA5lTJ5dkqnDq2XrYp2RDBZEz94?=
 =?us-ascii?Q?BQZhXxS/ZtXvkPw0rBQjH5fSyhVaYlkfzqoaig9dpyiMsobbNEk/+ID0iqSt?=
 =?us-ascii?Q?lfxTbQ1NSp/9vW8yaXMseH+jNLcfMU7A3kvVuc8mD4wHFnNJdhB5eY8ZRc0J?=
 =?us-ascii?Q?qKlYQaEygNhA0FlhdSEUD+v4tnDoq0ublxkMxZsYvaQc8iJ0JfGeWZ80z+GN?=
 =?us-ascii?Q?sLTXDUJu6t0u7Lph40LHJPzPQ4iFPzBhGlwptIT/8Y+f8PfuDSQSzCQXLMAX?=
 =?us-ascii?Q?KgRNMZLt3lVKIFNV2knxCyLyIH63/Cl+75Flnn+JMG4nI1y4ituCTF1sBIdr?=
 =?us-ascii?Q?FDqbHpDk5Qg+htnWRPTbXNLfDbHnkjIwR0HxoYsFvQoAoeSINIf4ewNThVWU?=
 =?us-ascii?Q?dRfRoj8xwU1ivVUWV6f2NBM/LgpBSJWLHFWc626HZk1Y8mBVFxCaz9t11JZc?=
 =?us-ascii?Q?c7aOfIQqPOaVPsjrE8bAE1q7keus3mmWkd8YXwSPGrbK/2nfqcROE2CD8Eqf?=
 =?us-ascii?Q?ot7VDLavGrkl8c4Z003BRb6wT4KNP+YC6w5OSnTCQAk52Nv203CuBmH+l70d?=
 =?us-ascii?Q?ScacrhXVzjHqhWfz5RRCiYO9zBgLN0Htk6s/13cXybfhUlw+z62OmPSxHeps?=
 =?us-ascii?Q?eFtGPd8ROuJbMY8goU8cTjO1RiggjyNStsNfmErBgUM1oyVlN6SzUPCDIZZe?=
 =?us-ascii?Q?hYylYp47eIa1sD2xQhhtufuf5e8fBt6cMhmDScsMEAux5a1PJukHN6mv8njj?=
 =?us-ascii?Q?iNPyyfjH7xj7gF8+Ldzu0SzhOucD+pzizCrHyqVbHKD/6dwuIBxfSOAYqPEF?=
 =?us-ascii?Q?mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12a49ab7-7347-4d9f-c48e-08dc3c84c3c9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 19:53:29.9362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HS0ePrL+nWwpF6VW3xNPl+A4nR4mjSUor5OVajSfnpkiQF4xsl9h/IZEquMlxl/s70Tlldf3sHm+eofSE994q9PokrNYv4uvZWKV9rDFt3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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

On Mon, Mar 04, 2024 at 03:30:27PM -0300, Gustavo Sousa wrote:
>From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>
>Enable display support for Lunar Lake.
>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

No need to merge this through drm-xe. Since we require all the other
patches in this series on the i915 side, let's just make our lives
easier and merge this one through drm-intel.

Lucas De Marchi

>---
> drivers/gpu/drm/xe/xe_pci.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>index 5b5c29761c5d..42ba2ea62c1e 100644
>--- a/drivers/gpu/drm/xe/xe_pci.c
>+++ b/drivers/gpu/drm/xe/xe_pci.c
>@@ -333,6 +333,7 @@ static const struct xe_device_desc mtl_desc = {
>
> static const struct xe_device_desc lnl_desc = {
> 	PLATFORM(XE_LUNARLAKE),
>+	.has_display = true,
> 	.require_force_probe = true,
> };
>
>-- 
>2.44.0
>
