Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BF783AAD7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 14:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA2EF10F765;
	Wed, 24 Jan 2024 13:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8CA10F73A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706102543; x=1737638543;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=9lrIsxznglAfyy/2oP8TaPjxcJyMRsbnLY7ArH43264=;
 b=FSxW6k5IkTBDJWcP4l7rYhsaEF6xRm5hVtP0B/Mqjg2emVFOW2NcgElH
 OrUXkyzGIKr0/JClQa0hX6M5wQjLq8jcZHGbTwaI4CdKEq9yf1NJU1NP5
 h3Z8quTJQqg6nwe5Yj/hSNk9Bal7x4+zgHag1YHGR9v0hpAEDAR+JQkiT
 42LJTOtDjM5RXRJNklC25dQACe29IlpyBG8LAcMfTOW7wWoEUcxvTe8rk
 C1NBkzjqxVeUirx3o1LNaIK77BI6MPRnaoRdfeRvZ2JklyLuLYDiX1dBo
 oQFY0kenkQ73itwcthzbUYJoPdZaM2stj2LASsplYIQ9TyYAYqNhVyEkS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9206961"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9206961"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 05:22:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1905883"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 05:22:22 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 05:22:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 05:22:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 05:22:20 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 05:22:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+9YwS60mRnaXSQPOVSg3XIASgsVdhlRCLqkrWihtVDdsTbk+VIYAw57MsAEC9vYXZ3DkDvh2isD7e6/NQ0Ig0FX8kKA9qw/aWGn+vjKOgw6NkqKXqRc9lwVNY0zQpbHtEUQZKOejG7M5XZUgFQYXjq9SiobSk/Gpi7LWgl5SPubbLJazBTZPSaQZEOFwGYcoDFH7cY81CoslCuqjd/I8+yA8QCCO0wKX0zjwSpy2fqyce8vxUG07udeArrlz/WiZ7mY3FPRR+DT/8Oy1fDe73BBXRUlVDHtLfj2Z3M2b9HwD20oVrt9heWfL4ns1UCbH0MJGu2Ji0r15I/5UPowuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkdvyQgczEBOwIQ9nx7XpOJJwM6HXdWTnxPk9UVTSmw=;
 b=gldmwjl2pt+G46kCcpSWdwRaqDsS8Hxx/k4jj/72N0IxndZiKkek+D/YaID5qMe6uXq/WNPg1OAqmHlAydviBAiSPAad/gfid12hrE/ZYb4IUW88yY5qkQhHdLjF6UDykTOy1O+d0Kr4CGlgTP6OHmED6BBXSN/O6r+qi2uWL4c60sxfTdZDrdy5QU/IBeCqk8oLkJJi5tCfShP3pYKqm7xBRmHXZm68wZygggE8roZmlFVLLdxGjeIQVTjYdNDRiC9fOCFppfuUQiqJiARksmSTCvZoOU2NYw8xHc6yKQYA5NyQf+q24CH/+QROEOhO9ATP2IcAvyRG4Xpcv3VsWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL1PR11MB5336.namprd11.prod.outlook.com (2603:10b6:208:316::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 13:22:18 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7202.034; Wed, 24 Jan 2024
 13:22:18 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240124085229.1896779-1-luciano.coelho@intel.com>
References: <20240124085229.1896779-1-luciano.coelho@intel.com>
Subject: Re: [PATCH] drm/i915: limit eDP MSO pipe only for display version 20
 and below
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 24 Jan 2024 10:22:13 -0300
Message-ID: <170610253323.3679.10192544885764866080@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL1PR11MB5336:EE_
X-MS-Office365-Filtering-Correlation-Id: da2d3966-1fd3-49d2-12de-08dc1cdf7d00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NUz0kS2PXIJm1rU+cEE0HTviaCpFTzFB07mzI6WUjciHe7BOC8q2V01OH6I4L/wH23j21i1AFTbj6Xkz5gefHA1YmfKJwd1AgPLbOuBuGC72amw2KDr0MDkz92OAvWAH1AViTaUScc0OenXkY+ht256VL3SPJezQnNHYbx1epMY+77YwihCt4nSvR6ftZq3RYM+CtkmGFDXIheSV5H8ELW1t6A6JGJzSBEr91DLgV/su6g0Ilsa0x3muAF0qNlzrCDEkRWvKyCjeZliNj9Nxt6ApH41lkkJVdCW79Q5aXiKpYjsG/GMzD6depRBgZhaMnhlMn+swYiumoXIO8KmURcisckJpd1r4g3UIwo7qDVYTDgtTDhK+pBPmE4/DlKtbXF058kNEwFJxkP97ZhhzhfvTYSi8Ywru7M9HkysB0fKwvT24f+u016u7t4DXQQCjqTWilIlZ9zsedW41VOgf12CB2nuoC7/r7bG1+eavccsaP1CNcM0Hi33c4vTEk8SjuQKLwsSS/eXQxiy4rbFIKIuDJ/5/D5WPeAWLjgoJAc/+eBWqQtsjmWvv+4Z6eMrB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(136003)(366004)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(8936002)(8676002)(2906002)(5660300002)(44832011)(6486002)(86362001)(316002)(66946007)(66476007)(66556008)(38100700002)(478600001)(82960400001)(6506007)(6512007)(83380400001)(9686003)(6666004)(26005)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVJEdFNPZjB6RWllR1EyV3FUdGhBZ04zNXo1OU1ZT2h2ekVrbTdiWG5Qd0M5?=
 =?utf-8?B?VHdsRFQwbVplZGRla2lwKzBVcGtpd1RUVlhYOVMwdE5mYkROeXIvd21KdWRJ?=
 =?utf-8?B?aTIyM0RSYXN0aGFwYU1nMFJXczBocmxTNlB6am1vay9mdGk4VDM5YXhIbzNZ?=
 =?utf-8?B?cy9BdWljN3dzenVOWm5qY2F6dmI2em5QWU4vR0M4RWJQSHU4YWhTZkQ4SDF1?=
 =?utf-8?B?QnlIOE8yZks0dXpHeEpzVmF3dnpnTEFMQXV5R1UrYkZQSzdzU1c4TWdHZVFv?=
 =?utf-8?B?OWtzQzloTG4xQ3lJQW1ZNnZBL05hVTZZcXZNREx1blJQNy9VZmpuMmo3Tnh4?=
 =?utf-8?B?N1prMndKb2hpRkFqSjJCZHcyVXZBSElmZFhobWprUk1INFhVNHcxbURVaEV5?=
 =?utf-8?B?VWlIZmRENCtBVjJZUlUzNUNzREtLYWN0ODVPSjVsWk42Szl5OEFNRncwNVph?=
 =?utf-8?B?TGU0NFQ5NCtxM3ZQU1QxbDZWVjdheHZIUEd4cEl0elducEdWdnhOZGx5VFJt?=
 =?utf-8?B?Y29ac1FNc25xaE5uWW1kcUgrNkVhVENZdWI4Y2syZ2phMWxvdE5RQXdqYTly?=
 =?utf-8?B?cGVJYXRkNGNYd0EyZEF5MFVVZzAzbXFpNXFBMVk4Y3paaFVudzc0aHYvZ3Rz?=
 =?utf-8?B?NmFzWGxTVFlVL1JiOGFYZ1MrdmJGTEY3Nko1MGJVaVBDSkhodkIvOE9kWC90?=
 =?utf-8?B?OHNLT2JVUkk2a0pJclhRMWN3aGRXa2ZueTFSOXNWSzRpQUhJMnc2empnWlFt?=
 =?utf-8?B?bWtNTjRtb28wQVM4aFVjV3ZLT3d5bDVuNkhqM29CaUJHV3orcFI5V0VtTHVR?=
 =?utf-8?B?ZGd4UnlWTXRGZWVCeUVKRjhjRVZSSkFPRHpoQi9ySVBBVVlqL0ltS29acHFw?=
 =?utf-8?B?NkF4NnI3Q0IvUjV5UmtFSEcrSGJLL1FvQkFVeUlKSTdpaHBxeVlwMmFtL0hi?=
 =?utf-8?B?OWRCOGhWRzI3WUdJWWV0K0dpVnl2dUxVNW1UdlJlZnJXYW9TTkNtYTUvMlZI?=
 =?utf-8?B?RnNtSy9nMmprSHQ3QkhnUFRVZUE5QWg0Y0kzeFdjY3paMGR1Y3hJQmVYbXdF?=
 =?utf-8?B?Zmx6Smx6NU1ueGNuUUcxRWg2Z3JSaWUvVlBmanRCcVhrK3hlYjdJRG9HQmsr?=
 =?utf-8?B?aTZkdG9YNWlGNlhiVm01WjJFY3BxSUtlRWpmeDQ5eWZkYUU4WDl2SmF5Vjho?=
 =?utf-8?B?c1lzUzlUSFVyVmdCeHcyQ1M5QUtTNlBvUm11RnNQUW1HM3N4eVVQTWdYTlha?=
 =?utf-8?B?amErS3B4L1VKbGQ2ZWZtcUxSMVhLNFhPeEJ4Y3ZlY2VSemQvUUJNMzZnQnky?=
 =?utf-8?B?TXJUZmFOTkVvRTBPcVNLOHRic1N1YkpDUFBYRHFGSXhVN0NWd05MS0s3anR5?=
 =?utf-8?B?WmFVbFZ0Ty9rTkQrOWxWemMzTjZpVGYrNHMwaitWa1FSOXpFWVZOTUtmbkxk?=
 =?utf-8?B?MGtGcFV6SlBkOTU4MDJ3NWFNNWRydisyeFlXMHFONUs2YWFxN3N4RU1LbFBu?=
 =?utf-8?B?VWR3NCtsSXErRVppYUpuN1llTFU3Y1RBYkxFK0twRzhIQkRhUGtpLzZTVGJF?=
 =?utf-8?B?V0s5b2RJenJ3Z09FWmtINDM2ZVdtSVdlbmthV0g1NEtMa2tpNU9JSlAxaGhv?=
 =?utf-8?B?aVJkMUNTWWkrbjRtejFGMjdqd29JQUtEdDM3bVF2eFVYSUJpcCtUMk8xZisz?=
 =?utf-8?B?QTh4RUI3VnZ0ZFFJRTdTY0lzc1NPM3FJYWlYT3dDTE5Wck9GS05za0FqTWVU?=
 =?utf-8?B?dmdwRW8rcUZaYVprbVkrWjBmY0hEdzJZZmpaelRleGFNSzJ2U3Z6SG9jb0tB?=
 =?utf-8?B?NVVNdCtjK2RvNWs5cVMwL3hWZHAvNXBJb3A4OHFIRm1WZnNYWWp5MnVzSGpv?=
 =?utf-8?B?YW0zb3JCWGR6MVJNMXFLUjUvVU55TVFVQUxVck0ya05ITjEzd3hDOVhiV0Y4?=
 =?utf-8?B?SGhVZFdVVmpQYzNwR2lsUzJab3BvMUxTcm5XTEtsSXgwb0c1NkVaaVZzYzRa?=
 =?utf-8?B?ZW1XV1ZmMEx2cHEzMk5uQlpRMzFvRFpOcGt2WG1uQ0ZtU0RYKzNLNm1NUVY3?=
 =?utf-8?B?aVJWTU9Yd0tHaDNYSkxXNHRvVVhhL25aMmtVZXRReW9IbWduOVR5dmZTRGl4?=
 =?utf-8?B?MkU1TnNscWNZZXNXKyszVFVnTHd0TW0wMFpVbU96N0d2bFI4ZytIRi9NdlAv?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da2d3966-1fd3-49d2-12de-08dc1cdf7d00
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 13:22:18.1259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2RF3ej8MLMJpLNnW7IoYUvkzQms7CiKEjIEIiHXKorASN4Ow5s15fs0M+eeW+mNI1tiJuTK39ZSgsj1+p9B2kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5336
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

Hi, Luca!

Quoting Luca Coelho (2024-01-24 05:52:29-03:00)
>The pipes that can be used for eDP MSO are limited to pipe A (and
>sometimes also pipe B) only for display version 20 and below.
>
>Modify the function that returns the pipe mask for eDP MSO so that
>these limitations only apply to version 20 and below, enabling all
>pipes otherwise.
>
>Bspec: 68923
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: James Ausmus <james.ausmus@intel.com>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
> 1 file changed, 7 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 922194b957be..5c99ae148213 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -2336,13 +2336,18 @@ static void intel_ddi_power_up_lanes(struct intel_=
encoder *encoder,
>         }
> }
>=20
>-/* Splitter enable for eDP MSO is limited to certain pipes. */
>+/*
>+ * Splitter enable for eDP MSO is limited to certain pipes, on certain
>+ * platforms.
>+ */
> static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
> {
>         if (IS_ALDERLAKE_P(i915))

Looks like Xe_LPD+ (MTL's display) and Xe2_LPD (LNL's display) both support=
 both
pipes A and B. For Xe_LPD+ we have that info in BSpec 55473 and for Xe2_LPD=
, in
BSpec 68923. So, I think we could:

  a. OR the condition above with IS_DISPLAY_IP_RANGE(i915, IP_VER(14, 0),
     IP_VER(20, 0)), and
  b. And make the "else if" below be about display versions below 14.

With those additions,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

--
Gustavo Sousa

>                 return BIT(PIPE_A) | BIT(PIPE_B);
>-        else
>+        else if (DISPLAY_VER(i915) <=3D 20)
>                 return BIT(PIPE_A);
>+
>+        return ~0;
> }
>=20
> static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
>--=20
>2.39.2
>
