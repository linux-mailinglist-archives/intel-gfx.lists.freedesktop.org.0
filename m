Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EFF7E3326
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 03:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E98D410E4A6;
	Tue,  7 Nov 2023 02:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7927510E4A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 02:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699324846; x=1730860846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=FrZ/ehUxVXQAJIKxg8nwSN0nFi/paM90LM+6FW0pIXo=;
 b=nRIE77GufDCvybzv6GPJQ4htkojapX373LsEbZgnvf2o3yYHN3/w7hcr
 ZZp4hKXWX7uDf80wXChSZW5p5lbOHhRVciGOfaZy/U9Oc3OF8dBcRmJ62
 eNTlIlRa7I60rAk+vX6PflSJkloIlTMm/3F9R3SVGQ0zIY0+Oktq0xEZK
 dtJzJ2PiKv+iCUQY7yQbiXUAJD2VzaKSrxezOhXw1VdnWPHL5HTo/Xoed
 Fz/NGLTjTyv806rezvUTjnrjWK8+vpOQkyFvt7680BaVjFpfTlG6hG8lE
 gLlNZkX5XS9tjCgjneDdR39yGTKg7yc6D/xva2ucT5MkRbE1Anlzz4o3v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="420525873"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="420525873"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 18:40:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="1093997498"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="1093997498"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 18:40:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 18:40:45 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 18:40:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 18:40:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 18:40:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ty7jOHq/ZN30Fe0Yd3OKY6Q948BoE0DEjUOXdaWiI0Rq2aGgiCBUrZ/RIN80W5Rm677fT4XRiDS03d2KsVRiLCh+hsUjGfwoIwxB1VzubovhV2Tca1LjOnYIECfLcJmbavzLSYdsuqvMx8sQktpslemuGtc+JBQzKYHq0yunG/JoehjGvsAkaLPEU+b6YVK6oV/h/QJV2Ku8asgpJhEHdUPXC8c8OH7oPMT2I6EXkoBGVhh6Yo+LIAJ6jGkpEkAXWjIT2TpaDfsW8j79buBOCvboN+7u/EkkO8+a1h5w7PSWAqtx/H6oczbgWf8tYiKFl103VNMk99dzYY2+sL8v1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hX8VI5gS0NywQQusn+f5qL73HEsB2FIrBv4icTKHapA=;
 b=awXW1JLVbRogCWKQ3vt78zQkZ57i4Gbbz+XfEOnTTODGHJQPguiTBBN26I2FtDRUfyNjon9EqlMLHAMwZAOam0dMDt1e0xDZUb+grrPPVJEN8dehJ/oSJTRyKZmaj1HjwJDfphfwZbl0epWARKIplrqB5WIWZQ8QuLYLqfCm3JAFOGtIvKScM4G6fA6Qey0FDKja7iKfZcsI9O9/gz6Fgi6BwM1fzJ3fYGRdFTM7sJoQq45CBi64wtSnTmpMTQZ4AT7GV3W26UGT7BCXjxLxvKCrFL/MjbWfqIk+Z3TEX0xx1NyaGWSb6ZIkTfVck64OUEgAMQIx12EJkoLN8e93vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by LV3PR11MB8601.namprd11.prod.outlook.com (2603:10b6:408:1b8::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Tue, 7 Nov
 2023 02:40:41 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::77df:fe1e:dcfc:6868]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::77df:fe1e:dcfc:6868%4]) with mapi id 15.20.6954.029; Tue, 7 Nov 2023
 02:40:41 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all
 GTs for debugfs
Thread-Index: AQHaDhZQQuRZKxPu5UqCrDmE/x1aWrBocm8AgABmgwCABGTdAIAA1iEw
Date: Tue, 7 Nov 2023 02:40:41 +0000
Message-ID: <PH0PR11MB5128CA4E9D007ED1A897CEF4E0A9A@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20231103052959.3537-1-gareth.yu@intel.com>
 <35c88e1e-0f2a-411e-b224-a9526723b2dd@linux.intel.com>
 <20231103172412.GQ1327160@mdroper-desk1.amr.corp.intel.com>
 <b1f7c0aa-1a3f-4c91-bd6f-77033676244b@linux.intel.com>
In-Reply-To: <b1f7c0aa-1a3f-4c91-bd6f-77033676244b@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|LV3PR11MB8601:EE_
x-ms-office365-filtering-correlation-id: e2b69570-2106-458c-a131-08dbdf3aeef6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kx6Q/D2eqzj35YCTNrQCL5ys0As6ZFGE1LrNgfvUvfdq9zBOKDDjflEjHetUa0HoPNdw3jZPuNuowXYtAcn/kTIh38lzR9iBxjAvcGhLyKf5kC+5pn4a0q96e0sMexxtOh1DTl15jI9wWvVAb73NbSSYWush7euyef2LbdTMuXtv1LqlaHkVv85d09zmIzi4dBHMFoWt6eDAqWVEz7MnHbDzoSeDRU+UGF1qVHQuiD+hB0djSBuzxhuUam0RTLNMyTIrApiRoL02RDrPXeAv40KH0sEIgOpCUBhCx7NzYMQDsnmG9R9xhR2JSoTna6mV31wIKycDOBiLL0s2fNM94rocbQUSzdN8lPsLO6Gda7XcH/eO4784xqDi64lYJkgZFUC1zozqUsEDgPMSltdq1zx1WhE/KtBgPy44g0eR+VXpcryph3xSYak1M/tQ/V7X3+o/gUKHql9LZWQI1L1v+bNAxGoP2jCxSXfLzoOgYeSIE28Gzd8bll5qFUgKt/bcxUwPibxAaX0O60ZLfulRzyfYc8pKKDSFHk0aDodedjB3xlFOPG84WajyVDPWppTEESGuTIt0CkkU3P+emfBcqlXU3iYmcskwrB/TtP+yy+XSAS7Uumo9w3bQ6ZFpjIsd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(346002)(376002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(38070700009)(33656002)(55016003)(54906003)(66574015)(8936002)(52536014)(8676002)(8796002)(83380400001)(316002)(26005)(66946007)(66476007)(66446008)(110136005)(6636002)(66556008)(64756008)(76116006)(5660300002)(2906002)(478600001)(41300700001)(9686003)(71200400001)(53546011)(7696005)(6506007)(82960400001)(4326008)(122000001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?80wuSN7oh2HBQB5iH7dO+JUeKIroQ1cjA63iyBYGtK9Xgh2kKg69oizCx2?=
 =?iso-8859-1?Q?xAoR0uRFQLHHLlIGJIXzbD52tT/ymgo8wjKwO+tYxw9j8KkwBTTJEu4jXs?=
 =?iso-8859-1?Q?KqiiDjox66pZBfmD+yrsRlomh6q2kaRMxlZ5JZkTeIvMPbOHB6yenMVA2Z?=
 =?iso-8859-1?Q?DiS+mHFc2593vJVHfzWLtudtpO1ha+8S5bV0QHabYNjnejKOEOvQR4GwxD?=
 =?iso-8859-1?Q?LWFUQt6lbahP4T+ccagkP+TI4jCsFssiev67sFewELRi42MWEOChAMx0vA?=
 =?iso-8859-1?Q?or6T828qC27IvgbAqV0J8AtS63G8M0jYnYLwJKY1FdLdhyX3l7Ho5jDtKr?=
 =?iso-8859-1?Q?xjwnElHHBhr/NRqUBIDHdbvuWN0NF9F3e49Y/JBGME/3aQk3baXjuLb3xS?=
 =?iso-8859-1?Q?nHLCSO2jdsGjgF5IhRPozBBYZd2atYzNgbLRo/UYOf8vdH/2YCoiCPocQz?=
 =?iso-8859-1?Q?yIL/N7IcxEGe0cXS4GJcJzoZ6ziKsBoSD3WtLhi2Ag94EIhhY1sSpkQRH8?=
 =?iso-8859-1?Q?mlHQkMNOqi9LBG2pUxKpFVVCf8Im7F478WtptMpEcx0WO6SB5Q4Xhno5mH?=
 =?iso-8859-1?Q?gEEW2fWPy2+fctZFP3gI8lhbmt8/hdV4nOAPd6CbZJr2oXKSqfrJy7TQH5?=
 =?iso-8859-1?Q?3rwNXNmwmNcTpCAXg/oo+MaP+eK/X9Rvhq7VwswTr/ZMnJb29CVEn4wSHm?=
 =?iso-8859-1?Q?N16kp8JVnJoiMWgtCSm8ula3OGgCScnxqjaXyUgfyr7FKgSQD6/dxkHtC7?=
 =?iso-8859-1?Q?kDVdWjUIiEjguCSmbSS/sJN1YNmN/WhmlpPwVuhm288ZSnZpE2fJdd0jMR?=
 =?iso-8859-1?Q?tBNNCO37RVFNes1ATJ1dFR93kRVMst+Y9cSX4l9b3V6QtXS1zu8JKdOnHM?=
 =?iso-8859-1?Q?O3XpUTQ2NifutgPon3hOgTq5GNUuJUB9sFW7fVfa65o3Msd7NP+kkH90L+?=
 =?iso-8859-1?Q?Dqm/VfoDIFSanx3Mf/AXA42777GEUC3KKDnV9p//aarkfZgEbtaCuiK/Ra?=
 =?iso-8859-1?Q?fPi1S/2E1ZzEDcQHDiZtfd6XwLpS9cGdkBidhe5JDz69Hn6mbVbLAvsmjT?=
 =?iso-8859-1?Q?aLIQpQvpf8qbbZIRUsWY3tqvcNdS5k+0FgN7NGrnV+tKn1XMN5Ol6Dw5ES?=
 =?iso-8859-1?Q?r6+RtLEYvrut9lqVe/DhZs7ypf77kmgXidzEdv7PSf5mRgLzGRIROJtJgI?=
 =?iso-8859-1?Q?+NNrpciPcbdF6F1talE9+daohUvkIKX2JwAg+61csSphqZZPSQW1sdfL/W?=
 =?iso-8859-1?Q?vhr9d2EHh5V6FToF0IXXAp5YLICn+QhRe7/Zv8oCFsU7MsWTUR9/RMJtRY?=
 =?iso-8859-1?Q?K65A2sLFsWW4vvVszwDDFPWMO/LPHx65sNQflLUdZ8lYHy5OUynGmRgX5t?=
 =?iso-8859-1?Q?XqYfSvl5GW7l1QCAkLImCuqYX2r75mPZmZAVRu9pkMtEp/E4PzFLKcRxqN?=
 =?iso-8859-1?Q?+b6OScj/y3P06EMdNJ9we01Jw5W4x6vnOFcS/NZN8A7IAukKj7aTZVe0ys?=
 =?iso-8859-1?Q?zxYWS5GpON95ebYZH6SwLUAAXl2UmTH7+j6UZS6Kx8b9/9zlIaeitwf2mF?=
 =?iso-8859-1?Q?nHBx0sKkXQzwb0IjGoQ0Q8gg+qpjIqN+t83Dw5SLDMWfxmWdNTq/9qh2ZP?=
 =?iso-8859-1?Q?gMhanNQbrlaPNegUIi3IjZn/LoRlUcZ5Tq?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b69570-2106-458c-a131-08dbdf3aeef6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2023 02:40:41.3268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LGjllZ4to9LfxYTLGt4zVelR7JG3Lbc9KyPCb81/x+B8l8a9R498sHJjXorIyV2sa+fR2GP6nlpFuB47NupZvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all
 GTs for debugfs
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
Reply-To: "20231103052959.3537-1-gareth.yu@intel.com"
 <20231103052959.3537-1-gareth.yu@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Shyti,
 Andi" <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The reason to dump on GTs is to make consistent SSEU information in i915. I=
t is fine that the information was moved to i915/gt*.

-----Original Message-----
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>=20
Sent: Monday, November 6, 2023 8:30 PM
To: Roper, Matthew D <matthew.d.roper@intel.com>
Cc: Yu, Gareth <gareth.yu@intel.com>; intel-gfx@lists.freedesktop.org; Shyt=
i, Andi <andi.shyti@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of al=
l GTs for debugfs


On 03/11/2023 17:24, Matt Roper wrote:
> On Fri, Nov 03, 2023 at 11:17:18AM +0000, Tvrtko Ursulin wrote:
>>
>> On 03/11/2023 05:29, Gareth Yu wrote:
>>> Print another SSEU information addition to the first one.
>>>
>>> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
>>> Cc : Matt Roper <matthew.d.roper@intel.com> Cc : Ville Syrj=E4l=E4=20
>>> <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_debugfs.c   | 13 ++++++++++---
>>>    drivers/gpu/drm/i915/i915_gpu_error.c |  6 +++++-
>>>    2 files changed, 15 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c=20
>>> b/drivers/gpu/drm/i915/i915_debugfs.c
>>> index e9b79c2c37d8..b5914a2c0597 100644
>>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>> @@ -63,13 +63,16 @@ static int i915_capabilities(struct seq_file *m, vo=
id *data)
>>>    {
>>>    	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>>>    	struct drm_printer p =3D drm_seq_file_printer(m);
>>> +	struct intel_gt *gt;
>>> +	unsigned int i;
>>>    	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>>>    	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>>>    	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME=
_INFO(i915), &p);
>>>    	i915_print_iommu_status(i915, &p);
>>> -	intel_gt_info_print(&to_gt(i915)->info, &p);
>>> +	for_each_gt(gt, i915, i)
>>> +		intel_gt_info_print(&gt->info, &p);
>>>    	intel_driver_caps_print(&i915->caps, &p);
>>>    	kernel_param_lock(THIS_MODULE);
>>> @@ -783,9 +786,13 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
>>>    static int i915_sseu_status(struct seq_file *m, void *unused)
>>>    {
>>>    	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>>> -	struct intel_gt *gt =3D to_gt(i915);
>>> +	struct intel_gt *gt;
>>> +	unsigned int i;
>>> +
>>> +	for_each_gt(gt, i915, i)
>>> +		intel_sseu_status(m, gt);
>>
>> Don't we have the per GT debugfs directories and files already!?
>=20
> Yeah, we shouldn't be updating this.  Commit a00eda7d8996 ("drm/i915:
> Move sseu debugfs under gt/") notes:
>=20
>          "The sseu_status debugfs has also been kept at the top level as
>          we do have tests that use it; it will be removed once we teach
>          the tests to look into the new path."
>=20
> If there are still IGT tests that haven't been updated, dumping both=20
> GTs here will probably break them since they aren't expecting it.  If=20
> they have all been updated, then we should just move forward with=20
> deleting this device-level SSEU instead.

Thanks for confirming the debugfs parts should be dropped.

>=20
>>
>>> -	return intel_sseu_status(m, gt);
>>> +	return 0;
>>>    }
>>>    static int i915_forcewake_open(struct inode *inode, struct file=20
>>> *file) diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c=20
>>> b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> index b4e31e59c799..2adc317af944 100644
>>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> @@ -722,9 +722,13 @@ static void err_print_gt_info(struct drm_i915_erro=
r_state_buf *m,
>>>    			      struct intel_gt_coredump *gt)
>>>    {
>>>    	struct drm_printer p =3D i915_error_printer(m);
>>> +	struct drm_i915_private *i915 =3D gt->_gt->i915;
>>> +	struct intel_gt *gt_n;
>>> +	unsigned int n;
>>>    	intel_gt_info_print(&gt->info, &p);
>>> -	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
>>> +	for_each_gt(gt_n, i915, n)
>>> +		intel_sseu_print_topology(gt_n->i915, &gt_n->info.sseu, &p);
>>
>> Do we need a consistent story across all error capture? Aka why is=20
>> sseu special.
>>
>> Also the intel_gt_info_print() above calls intel_sseu_dump so we end=20
>> up with root tile SSEU printed twice?
>=20
> I'm guessing this call was supposed to be deleted by 0b6613c6b91e
> ("drm/i915/sseu: Move sseu_info under gt_info").  We should probably=20
> go ahead and do that now do remove the redundancy.

Okay, just need a volunteer! :)

> err_print_gt_info() should be printing the GT information (including
> SSEU) for whichever GT had the error.  I don't see a reason why we'd=20
> want to dump extra SSEU information for a different GT that wasn't=20
> involved in the error.
>=20
> Actually, SSEU is the _least_ useful thing to print for extra GTs=20
> because once xehpsdv/pvc are gone from i915, the only platforms that=20
> have multiple GTs are MTL/ARL and the SSEU information will always be=20
> empty on the media GT (there's no DSS or EUs there).

Yes all good points. Perhaps Yu can shed more light on why the need to dump=
 on GTs came about?

Then, on a second look, the correct GT info is already captured. What is mi=
ssing is teaching, probably intel_gt_info_print, to skip dumping the SSEU i=
nfo on media tiles. That coupled with removing one of the redundant calls s=
hould complete the picture. Although I don't know which one between intel_s=
seu_print_topology and intel_sseu_dump to keep. Or the data from intel_sseu=
_print_topology is a genuine value add on top of intel_sseu_dump?

Regards,

Tvrtko

>=20
>=20
> Matt
>=20
>>
>> There possibly was a Jira years ago to do stuff about multi-tile=20
>> error capture but maybe it got lost.
>>
>> Adding Andi if he has comments.
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    }
>>>    static void err_print_gt_display(struct drm_i915_error_state_buf=20
>>> *m,
>=20
