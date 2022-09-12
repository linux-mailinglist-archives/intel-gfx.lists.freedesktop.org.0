Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 711AD5B5BEE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 16:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDC710E4D3;
	Mon, 12 Sep 2022 14:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0AA10E4D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 14:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662991779; x=1694527779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D7uaSVSjB6Qr42GaN7+blvMdlLdIFOp/rpPtPR78gJ4=;
 b=JT8O1EiJQchyu5WEpLgzusQLQ5N1B8RJSqF1DkFTh3ZizR9f8/BehoHS
 jkuNrdpIMHOBEH1oD+AaAJ6LmJ8Hx7zN0NNTMwvQwpeOqsjKjfQZVdMhO
 rs/vFOKMtv2OxPErs+zV91l7p9X3mpdTpJHv//bWn/eOrINlofwpiZ6ns
 7uX496DGljQuXUSFhR83AXu/7OrUiyLlAD0G1zMKOSUIWFbIc1BMRjya7
 Ix8K6cGqOFFfytF4F2yvEA68/d2t5WZsbfQVR+9pbe5p+ZP/qw9ThlfUg
 9Cpu+NNKxQZbmq+LsV8N/CkNe9AJaFY0Wy1oGERswRqkseS7eAnEeclbU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324106067"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324106067"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 07:09:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678105918"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 12 Sep 2022 07:09:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 07:09:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 07:09:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 07:09:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 07:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1oAtuJL0UuxJk9NCDGMtBUY97ZDAvAdoBnv2IDPqHwASHmAfxd9GyHM5qUxLeFLBu6VTkLLgJT+nUc/cC8zue+Zi2671JSOXRlEnLQuY26CVRuBxxhbEoVNUHy0UdWHu7C9i2+wC0YLwt4jda7f+oGQGQxPjhLukovJskBWe78NPLuvyWMUHy0AnRdqnvZEtaf2QZBHIR+/ZwAq47SktlI5TPm/HeADFcvm9ZYM9A7kG1Gr//IdDoq9eSmjZruiuYzDoN44U+GWfijM5P15JF5pzPhnQAi2BW4BIQi1/6UDbLdJ8bfrnbSPTBJUx2+TBR1H57bvXgV/IVx7MsFpzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zgx4dfgSCkeev24wNJRnYpqbw0CXbhU8MmLLGKbh9dY=;
 b=flKL5GJvF/XMHpCAqL7k94qYC/tM0KNOvrxDwg+xtTgmnmvNyDV21M+GQsOB2CIzs4rQ0OiRpv2+1yYbvSwaHTjBRrBVwfCHBeMH9E9WpkR276XWJYP1NxulxzPA7A41WcoOk7gSA5iClE8r7JgBzIFaIMd0AEIgdcCfG3dx7/eKRl/tu909ZhTLHAPLIh1YJ8UtLpfwRWGvzEat+HBedjf8ZYBJNwSxW39Ln/i/Jw3YW6k0HcnqMYKY8fe5MczBD5NQkCRbTLhko6nuan3IHN2dQSzAJu8PfKjeCIUk20aoEU3dMxdtcl7xdTaSDzhRSCxJYMKs1BXxpXM1nSNBxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BL3PR11MB6410.namprd11.prod.outlook.com (2603:10b6:208:3b9::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Mon, 12 Sep
 2022 14:09:28 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::68f3:bb88:47f6:ef80]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::68f3:bb88:47f6:ef80%7]) with mapi id 15.20.5612.019; Mon, 12 Sep 2022
 14:09:28 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage support
Thread-Index: AQHYuIVOgQip7iJi3k+BrB7UUlRG7K3b8NsA
Date: Mon, 12 Sep 2022 14:09:28 +0000
Message-ID: <CY5PR11MB62112A756C0464129B94C5BE95449@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
 <20220825132118.784407-3-badal.nilawar@intel.com>
In-Reply-To: <20220825132118.784407-3-badal.nilawar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|BL3PR11MB6410:EE_
x-ms-office365-filtering-correlation-id: b0d3316b-490b-4328-68b8-08da94c867d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8b3erc8MSnwaJvQ+oXi7bZS8KbuLY1eY/lJKxIQvrQWevKuAZysGro9y85R6vVvi7xcLTemZdQy/bO/V0iJxgPESIa3PYafBxO1FCaVIZsx4nf3K6WkKQf1IqoS2hVxcG7KUSXlHMToKY+rjfnCvwcW78Ee6RugYLRnv5jHj2CVYmhIU2Ottw+I8rlEIe8vLbXuY6b+fzxETeCFvV//8ALdQZ2DcYcjQHAhOoydCZ5V8LWMQnzneY4dnBhydEpY1erWvg2cw0KwVIO9EMhLBc08Pbo3ytgmeWOvXD+Tddd4QVHpyWUV/yjBlQrP5C9SbULk6HnPheUrcREiPNGOMy/H9tx1yv4p8RTc0YIOVvhmJ//uQxoWSVA7pRRACr6FRCv/JqLGraWZ4UnLnw4VuE1vl/MTODHyGqHEQFXAXJ4CEbYS8LqyBX2gBinWTqmHXXQXEjSSxvpeZwx8hChrYCKc4mVNH4rjl1yFOPz1falG7bg0HTayev6iM3soNHV3jz+JR9nLR+oTWSzO72s/l2QVpO9PBbu6Qe//ibaE17C2KQzvfrUQY6HZovj3OSIj/AfNb5K/q5JTQj9fzu8lv8hqOhGIU4jF+MTF3L7GXZFFV9R1v0j1WkkWPj9h+gR7+9o+uuzddDrgvc+phTjmbm/3xo9bBGedP/LeuGdSmlzPFFekm+V8yoV/aHaP0yNvtrNgcddnYT2BouyYpIbV3e5FSH6AduqxD5ACQk03ZuaBcP9AWx1akFqQqF6SE+FL38ybo1N0s944LBmE/q6k+Dw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(346002)(366004)(396003)(9686003)(26005)(82960400001)(38100700002)(66556008)(38070700005)(66446008)(5660300002)(66946007)(76116006)(86362001)(4326008)(8676002)(66476007)(64756008)(110136005)(52536014)(6506007)(54906003)(316002)(71200400001)(7696005)(8936002)(186003)(2906002)(55016003)(33656002)(478600001)(53546011)(55236004)(83380400001)(41300700001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oJDoHL0qEkq0KDCz3h7elLPiJGrZIYH00/RNW6iPbYXqx91E+q0mi6Fh1QUk?=
 =?us-ascii?Q?IH03jFM4XGiaiJ3sqnA+n9m5AEjtgBmT5kc7b7n0+hAz5xmxe7pGrR7dlHWM?=
 =?us-ascii?Q?SmevZ5O25Qq1uUCuZK4hjRV6Z965FqraHpm8i18CeNrRI6VVu9MEDLGOnY2I?=
 =?us-ascii?Q?0Oom8W0vlG0segRks2XtmJzhGqKNFHm/9A3ClFop9OhMVFOa7tSSSUisMYg6?=
 =?us-ascii?Q?WCboRUnB0YWKwe3TXe4IXw6LbH75+t+g+Y8tQcbaBXGxgHfyK0Yo/TcbXujW?=
 =?us-ascii?Q?HpA69MxGnXY0Ufy5/dYvxBq+SRKrAcH0Xr6bUDQtlcCjRWMA7iisPSejGzYG?=
 =?us-ascii?Q?5Q7I+67Yhxhakh8kgNrdxhhYDUpHZU/kb5Icro7ygtfpTK8KNvbwRgPQroGg?=
 =?us-ascii?Q?yEo4DuXUPJuw1hIByzmwx35fpLk/czusIO+q5ru89+Bvce2GR9z/iVpY1/4V?=
 =?us-ascii?Q?hHIctJLWXgEhog6yzK44tjtoLVT/77XvqzOK2MbVj+RVuTnDC0tY1YzXNmXA?=
 =?us-ascii?Q?5xLbxFSpAIrKUbPqh6MnVteuJ1pgnyegbSv/gPmq6mbwhazY1oi3KJ2k7Uor?=
 =?us-ascii?Q?PqrPNKn81QNduqxKBx8QVnb0FTs/zTfg4/Ym6WsKq4WpT0izCpV0fzXyn09F?=
 =?us-ascii?Q?3bjdZmA3NpJidi2bm6lBNFFNcc1qUrynSQ1YR1my0f+mZyjvR+jGqERNv8dn?=
 =?us-ascii?Q?YA8ylRulGjccvNIQKzZH49hjATjWUZZn58c0kL5/qHVPg8+VXK1wAI49NXcX?=
 =?us-ascii?Q?2GiCRkWzh+rVzoHnYA6/5XK42KX/mtYDq5eUr9HEKbOmaO1n8+6qFXnpT3qz?=
 =?us-ascii?Q?++PpzABDq48J4CTBskbLvLmBlFmKKWqt8nmW2e7DQwYXEb+23NKUeXtLQfwJ?=
 =?us-ascii?Q?LMpEtBPSvuiP5TRW3a9kmGRV4JY5O/jjDcNIQCVh0eTO8cXeo4/m+wq1G3vS?=
 =?us-ascii?Q?lI8qrm94/oaZQJkPBt1azSuJj2HpTbR4aItA5ojU0SgPHN6R1KgNBzN1fsWh?=
 =?us-ascii?Q?kbrKv5GJ/oZBHAp2u34eZ7Lke9vTSPGHbUTBfawLvLqlbwJNhkqgIirrfDzO?=
 =?us-ascii?Q?xj4dyfTm3q1OePpQKIurqrYUqm/O9M8UpQq6HuhmfElHsr5QsBvbFg91f+vC?=
 =?us-ascii?Q?gIchnweX55ev4zsuFmhccrdkN6CK5DJ68VE6qfokeycpysC/ZDREQ0fCegXq?=
 =?us-ascii?Q?WqbLfwN20tvIshtPp7dLzCqHWv7WYO80TVeOAhkINW5rdrPg61UTeMYrrUXy?=
 =?us-ascii?Q?YarV8OZi2/XibZZZ4920Ktk/E+zfKtODUMRdOUZ+0G9r5jyE0uIqofQBCeNJ?=
 =?us-ascii?Q?MFQIABX6WOEvlghtdYx18JMS8poOmXA6bHe3dwqsi68oJehg9JUxt6KooER4?=
 =?us-ascii?Q?Wz3quJEbzXspDg2Ut0CuZ8PZ0tg96b3CUYtApleUTNaBRo+i7aCIQURDvWOE?=
 =?us-ascii?Q?l7cRqzQi4ryTA/6gtKP/siXwUQLHcZOIk7MeX5whiabK/cwNWphrBV+UvJD5?=
 =?us-ascii?Q?igaqE55GyPvMIsXnLb17n4UpCjzumY19gnLnwiniHReHA4mAIW4keFBHVla8?=
 =?us-ascii?Q?2f1Gn8SWTRh0NXubayJizivcrQu+3mZmwShXb6GF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d3316b-490b-4328-68b8-08da94c867d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2022 14:09:28.2443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VG07Y2U3OLf6vMEFECPeMjeTxPVBiBAFlv1cn35tSczbL0NacxFc5ZIdVzlHvkWIbc7pFTFsNwUFbCtw1Rh5FE6uAV6lXx1zfySS/3Mz+tM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6410
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/hwmon: Add HWMON current
 voltage support
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
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nilawar, Badal <badal.nilawar@intel.com>
> Sent: Thursday, August 25, 2022 6:51 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Dixit, Ashutosh <ashutosh.dixit@intel.com>; Tauro, Riana
> <riana.tauro@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>;
> Ewins, Jon <jon.ewins@intel.com>; linux-hwmon@vger.kernel.org
> Subject: [PATCH 2/7] drm/i915/hwmon: Add HWMON current voltage support
>=20
> From: Riana Tauro <riana.tauro@intel.com>
>=20
> Use i915 HWMON subsystem to display current input voltage.
>=20
> v2:
>   - Updated date and kernel version in feature description
>   - Fixed review comments (Ashutosh)
> v3: Use macro HWMON_CHANNEL_INFO to define hwmon channel (Guenter)
> v4:
>   - Fixed review comments (Ashutosh)
>   - Use hwm_ prefix for static functions (Ashutosh)
>=20
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> ---
>  .../ABI/testing/sysfs-driver-intel-i915-hwmon |  7 +++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  3 ++
>  drivers/gpu/drm/i915/i915_hwmon.c             | 47 +++++++++++++++++++
>  3 files changed, 57 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-hwm=
on
>=20
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> new file mode 100644
> index 000000000000..24c4b7477d51
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -0,0 +1,7 @@
> +What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
> +Date:		June 2022
> +KernelVersion:	5.19
> +Contact:	dri-devel@lists.freedesktop.org
> +Description:	RO. Current Voltage in millivolt.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 94f9ddcfb3a5..5d4fbda4d326 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1508,6 +1508,9 @@
>  #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
>  #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
>=20
> +#define GEN12_RPSTAT1				_MMIO(0x1381b4)
> +#define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
> +
>  #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 +
> ((x) * 4))
>  #define   GEN11_CSME				(31)
>  #define   GEN11_GUNIT				(28)
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index 103dd543a214..2192d0fd4c66 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -11,8 +11,10 @@
>  #include "i915_hwmon.h"
>  #include "i915_reg.h"
>  #include "intel_mchbar_regs.h"
> +#include "gt/intel_gt_regs.h"
>=20
>  struct hwm_reg {
> +	i915_reg_t gt_perf_status;
>  };
>=20
>  struct hwm_drvdata {
> @@ -29,14 +31,49 @@ struct i915_hwmon {
>  };
>=20
>  static const struct hwmon_channel_info *hwm_info[] =3D {
> +	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>  	NULL
>  };
>=20
> +static umode_t
> +hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr) {
> +	switch (attr) {
> +	case hwmon_in_input:
> +		return i915_mmio_reg_valid(ddat->hwmon->rg.gt_perf_status)
> ? 0444 : 0;
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static int
> +hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
> +	struct i915_hwmon *hwmon =3D ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_value;
> +
> +	switch (attr) {
> +	case hwmon_in_input:
Other attributes in this series take hwmon->lock before accessing i915 regi=
sters ,
So do we need lock here as well ?
Thanks,
Anshuman Gupta.=20
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_value =3D intel_uncore_read(ddat->uncore, hwmon-
> >rg.gt_perf_status);
> +		/* In units of 2.5 millivolt */
> +		*val =3D
> DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) *
> 25, 10);
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>  static umode_t
>  hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>  	       u32 attr, int channel)
>  {
> +	struct hwm_drvdata *ddat =3D (struct hwm_drvdata *)drvdata;
> +
>  	switch (type) {
> +	case hwmon_in:
> +		return hwm_in_is_visible(ddat, attr);
>  	default:
>  		return 0;
>  	}
> @@ -46,7 +83,11 @@ static int
>  hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>  	 int channel, long *val)
>  {
> +	struct hwm_drvdata *ddat =3D dev_get_drvdata(dev);
> +
>  	switch (type) {
> +	case hwmon_in:
> +		return hwm_in_read(ddat, attr, val);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -76,6 +117,12 @@ static const struct hwmon_chip_info hwm_chip_info =3D=
 {
> static void  hwm_get_preregistration_info(struct drm_i915_private *i915) =
 {
> +	struct i915_hwmon *hwmon =3D i915->hwmon;
> +
> +	if (IS_DG1(i915) || IS_DG2(i915))
> +		hwmon->rg.gt_perf_status =3D GEN12_RPSTAT1;
> +	else
> +		hwmon->rg.gt_perf_status =3D INVALID_MMIO_REG;
>  }
>=20
>  void i915_hwmon_register(struct drm_i915_private *i915)
> --
> 2.25.1

