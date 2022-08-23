Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4E059E127
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 14:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E7210EB79;
	Tue, 23 Aug 2022 12:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3A210EB79
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 12:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661258353; x=1692794353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/2SdZHeE+FSmsh8iStxrMjNv8d2z56wqIPKQvWleCE=;
 b=SDrfqj+8GxJUz+zdbF3sD9BRfJOL19KZpajPN21lx9U7a6foBKJcGlzS
 4EeFhIB3UvOimd/P6XRkRKQxpRze9uKC5FmiKiTf0Y/v9FW5cZ5AEV0UI
 IYvlFbJdH2K53U1Ysr3JpO0RoxCPMvSh/sOtTvG+q+neJlppkdiVEjdRk
 jLHCpAtDprUlP9ZH0EaEZWdR18AaBuo4jLChqmmIOrD5FaCB4hETTV2kV
 uTTZIlUb3MZSdRxxiATcbASkSvS/1OVYl277Y+SN+SoNRCae+dyE7QYRp
 e2rw0tajI8mAT75h6SPz4Qgv5vE8kZkCWb/ngYUIiYiOkE/sOajEt7Loz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="276702275"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="276702275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 05:39:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638640106"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2022 05:39:12 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 05:39:12 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 05:39:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 05:39:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 05:39:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbyCnp8M0thQ72GrXeQxodKD5KKnxu/bAWj9hV5xizkXb1n92RzkwGZqFDiVRd4ttihN1Muh33LSHO7aBQChtGcF+TceJIeNBXrGcr8zy0lIHR0PUYqhfshpgDko3fFYlbCeyWySkSD2LbcIs5vgABMlKr4ZTev6ZyIAx9VWDmUeVP4msSK0bCJNu6kIr7/Gm5XWle76nE2HXEPrRWhwYgcQvRr2qlM3DCE2nCmwQDini1ahZ005AwMNlTM1moAH9IntkBTmVm7vOF7Ih7kQnD2OUQpiy+8U6AjsNxBa9/ad5GmgpqIYvWDlysGwmlQhDbOJ3OwsKBJQV1lu48hJkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lkw2t2cXAGw7U0exll6t7np1fWdtLsbOPi5CbwASHQ=;
 b=DzNv3JVWaZtyiOS0eUAa91aK1IfMtm+4Mp1rw8iFpwjX9np2C3eiyQ/ilNMk3tzvCLpc0uaxfZUH5tOubdgyC1+BH35vZKHJKcRgHHXyfCxJwE2mtN3utuoy3yPhZWedVIbJaeQUkDl/SAP/PDXQQWqdn+9FvtUDhMF6ybxxrik2EzaHb3HzMUcjpePILWBqHEUtqie61Q1pAGtoDFb+57eZTE/op8ph9j4EopcacrHVO6Loq3K2Dm6Qen6omzpFmWNcvy1VgJUwkifNTFmvA276r5jfUgNMD+lADyVsnkBW8m6Mpr5s5DeOvKqAzuU2+Uh26aWPQ3//7GGIUJ5hMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by BN6PR11MB2049.namprd11.prod.outlook.com (2603:10b6:404:46::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.19; Tue, 23 Aug
 2022 12:39:10 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::1559:c7eb:481f:3981]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::1559:c7eb:481f:3981%7]) with mapi id 15.20.5546.023; Tue, 23 Aug 2022
 12:39:08 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
Thread-Index: AQHYrkGU1vNkWWZqjkOsmkvx0TsbAK2zEyUAgAlXRvA=
Date: Tue, 23 Aug 2022 12:39:08 +0000
Message-ID: <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
In-Reply-To: <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
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
x-ms-office365-filtering-correlation-id: 4ba80c06-26f3-422b-3ea2-08da85047919
x-ms-traffictypediagnostic: BN6PR11MB2049:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P3TaOrgtYQECf+uGp0JR7FfQafDLEGGp0oQyq7raeWbjalHs75iMR5up8WSSQV1CYEDKjykF9cH+3o5O6BFXE02i1cTrRM4mIuMbVKV4WgxwihxmBtmrxqTZ21n58RGA7HCYOTx67AFxcPGEzzs+Wfn7Jv7tImhX3MrQOKghaY18lgm2V2WCpDT+BB8bbDtDF2Rq/yTymqT9IBL0MhaIC8f+s7QpllKrArUzrjDWaFSFaEO143VJXDwQoo2NiA9yMAvFRQx5rglBoFejqfwLoPThi0aiKghFjLU4txtcnQAvPFSHsqxQP++phgmpHieSsAxV8/Vx95EnhXkS5u+9HlQH+fFmED91bWthGdPWN1HOfvoYKGF/kigoWZLX48JDiX8tQLk9sdJHOK6EdsSLZEjs7UQmLVR4moN5CmmqJV9eI4u4WuDdmZAmiAbcaARAaUFp1V/1Y7O2kXmccJYSf6YMW0/W760+7tZ2ICN9Q3JzUoJWZPNxxWVMl3MrhWEssSsG4hQCKSLk9z7P5CjS3ZjM2mGI6x4ai2KjQkVcy/NJ1P7Px1LD1nj1YZ+uepjNm028CcH05ZNV/WiTXt5XRGq6YFdTNyuhZbmJ2Zr3rnJe17w+9VEdB5Mvy1Bc1p/eCjpYAbQeQ2vl+dfzX0UmZgOaUO+FLHR0eXwuRz9Yj/wjz9qr+e+9mfiJ25TN6WUfx43EPfQgHzbVVIHNHNHuuQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(136003)(39860400002)(396003)(346002)(66476007)(52536014)(2906002)(4326008)(66556008)(8676002)(6636002)(64756008)(66946007)(66446008)(55016003)(316002)(5660300002)(8936002)(122000001)(6862004)(76116006)(38100700002)(86362001)(33656002)(38070700005)(82960400001)(478600001)(6506007)(7696005)(55236004)(71200400001)(966005)(186003)(83380400001)(26005)(9686003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4CmI/jyzk+U22TSbMuuFcNw7JDA0o2zF57imgel41heBYfYAna5PrCJ/hZwv?=
 =?us-ascii?Q?2jJEjkv7LBJACSDetvjt6sDxOOPJo88yObP3ko0ZhIvfH6cjgY51WtiV1TQx?=
 =?us-ascii?Q?8os5HyQrLWE5tz5/YsjiAse1BagWuC85+BxaNERF32S/e3KxCWKSDuKKVFHv?=
 =?us-ascii?Q?GnhZd35pIJwEfzMFIS2JrhD7km4WhyzX/9AqFQJOXtpX/COCWDJ4nCvH7n6B?=
 =?us-ascii?Q?Y6rmVfGb1WMfK46R2laWlszSqOSFBJUb4ao1mA5rqJOaO3Gy2o+B3ZKyAcXD?=
 =?us-ascii?Q?9O9iahJ0FuuczBBcj6NaHG2GsFkJYgezJmFeEYuIy9gjphksCm0pVa1byVc3?=
 =?us-ascii?Q?UCJDOhGzFF7vKfFTRz8nTxk4s5k+SFpsNmzw4FGUbElTqG/j5ypfTSKM4BCq?=
 =?us-ascii?Q?tMeV4KBkfGIyMf/wxDoglacq0phBWPy86Djs2XipjmmVt+gCF8d5BZ6wsxH5?=
 =?us-ascii?Q?qdt7R6D0ieBgxV9YmaN2mjwBUJD/hYAEQ3Ebyc3ZfsDz9TNot15RouRUrnoi?=
 =?us-ascii?Q?aNIHcGXGLRtJSZ6yHgW5k/YEYbKfrbq8ztpQMnryghQ8U0c39iXFRdAyhMDd?=
 =?us-ascii?Q?oi4qhkARkR0Br59bPCI00U0Hqf9jEUwveRsCzZsKz/OY4k9z/54ecknQ+Nm2?=
 =?us-ascii?Q?jlsVsY/BD1VGCoB0LLDfnZm0EH3OtTGzSXYS8kXTIC4GutAXsn1LDLjuiodI?=
 =?us-ascii?Q?XaYUrhqe47owg0syMpy2mypXHEACSBrUHunZzYY3VFJyL0IgOcORKglpdPTB?=
 =?us-ascii?Q?rwJ2AcHtfUZdmIHgXCWjI66CpGKwd7QKXHjWGQ72XmyDvDHpI8KJsDqaekbN?=
 =?us-ascii?Q?jyVEUDVQTunM7m161t+LUb/OCPu2nYt/kZ49lR/zo3Agye1/Wi4uD9D6A4sC?=
 =?us-ascii?Q?y1lSwakbFIhF0bzHUl0/snaJh9W99g53GsYtE6GYVDHY4LKGbHdjVHedifIK?=
 =?us-ascii?Q?omefpAtshICXsIR2zkkSw8RqbCXlGV3qTWbZWW1ypRm3clWAhK78/uXVXTNX?=
 =?us-ascii?Q?3CL0SHTmFDwoRXSCeJbLyCsUl4C5+XycJYNNLvd/efsB/9NCo10WjKBscCPy?=
 =?us-ascii?Q?L0hkfBgiMdg+44MdRx1DLIIV0l/5lxWID5BubACipxM4GxBkKgr5P8Xxd5CI?=
 =?us-ascii?Q?ArGSWW29WXCum9Z64HCl40J6jTo6w9plWV3h02ZZpo0X5DxbVS/eLjbvyXHV?=
 =?us-ascii?Q?elC0swGEdYJON7NE7w7PEA1TYM/lD4H7uHeRkbo1SQar9PgudZ+mK6yvFNii?=
 =?us-ascii?Q?bzGyONAiDjT2L8t7jJ3c0cUM9hBEHWDQZMVUwWtnLM+a/mnTsrK6ExbQplwR?=
 =?us-ascii?Q?q9fzntRiB6s5KNtG+4I9MGWkCxBei/4HLeGSih1BCsnvAhfx94nCLgjl3Bgz?=
 =?us-ascii?Q?Qs+sjYkMX4HUlWxW4/s1mO3SPVDrkiQGb2E5VnXmo5mwIBye/R54FOuvyFzi?=
 =?us-ascii?Q?CCK442Pp3OkGfc1fxFvglCHf03vWjMjau2ihDKRPlhWGOtKvtdqnTHCgS7M/?=
 =?us-ascii?Q?zj7+a8wtTeKIM4GFbSrtcewt+5KDcDz8GkD8MBMo0shAZEYXvaYRYRmb6GrF?=
 =?us-ascii?Q?BxGVOyXAjelZpHmGSyxKGsVUKAegcvoD6e+kleDdPOiY7GKw4GG3XijvqRye?=
 =?us-ascii?Q?SFjmN99VYhBaQVKpWWP2nL0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ba80c06-26f3-422b-3ea2-08da85047919
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2022 12:39:08.4251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GU5lQGdKZQk5XKa6cY1uACxp26wij7578S90SHcRBMnh9RxXTQQWj5IUqk6/07WWX4tgbMfe1ViO2sKOS4LNiWBVv5HZCcnYBbqkpcJ+oDTPF6A+iX+yph2J/7k+t+Cf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB2049
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,
=20
> On Fri, Aug 12, 2022 at 10:17:24AM +0530, Mitul Golani wrote:
> > While executing i915_selftest, wakeref imbalance warning is seen with
> > i915_selftest failure.
> >
> > When device is already suspended, wakeref is acquired by
> > disable_rpm_wakeref_asserts and rpm ownership is transferred back to
> > core. During this case wakeref_count will not be zero.
> > Once driver is unregistered, this wakeref is released with
> > enable_rpm_wakeref_asserts and balancing wakeref_count acquired by
> > driver.
> >
> > This patch will fix the warning callstack by adding check if device is
> > already suspended and rpm ownership transfer is going on.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index deb8a8b76965..6530a8680cfd 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1670,7 +1670,13 @@ static int intel_runtime_resume(struct device
> > *kdev)
> >
> >  	drm_dbg(&dev_priv->drm, "Resuming device\n");
> >
> > -	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> >wakeref_count));
> > +	/*
> > +	 * When device is already suspended, Wakeref is acquired by
> disable_rpm_wakeref_asserts
> > +	 * and rpm ownership is transferred back to core. During this case
> wakeref_count will
> > +	 * not be zero. Once driver is unregistered, this wakeref is released
> with
> > +	 * enable_rpm_wakeref_asserts and balancing wakeref_count
> acquired by driver.
> > +	 */
> > +	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> >wakeref_count) &&
> > +!rpm->suspended);
>=20
> I can't see how disable/enable_rpm_wakeref_asserts() can lead to this
> WARN. They are always called in pairs both in intel_runtime_suspend() and
> intel_runtime_resume(), leaving rpm->wakeref_count unchanged.
>=20
> The root cause is probably somewhere else, incrementing
> rpm->wakeref_count without runtime resuming the device.
>=20
> The WARN() condition is corret, we shouldn't get here with a non-zero
> wakeref_count. rpm->suspended - set in intel_runtime_suspend() and
> cleared in intel_runtime_resume() - should be always false here, so the
> above change would just disable the WARN in all cases.
>=20
Yes, in case of DG2, after device is suspended, i915_driver_remove is being=
 called.
Here driver is taking wakeref with disable_rpm_wakeref_asserts when device =
was not resumed.

As per logs,
[  395.872971] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]] Suspen=
ding device
...
[  403.553235] i915_driver_remove: START wakeref=3D0
[  403.553288] i915_driver_remove: before unregister i915 wakeref=3D65537 (=
Wakeref Taken)
[  403.566086] i915 0000:03:00.0: [drm:intel_runtime_resume [i915]] Resumin=
g device (Later Resuming Device)

Pushed new change with : https://patchwork.freedesktop.org/series/107211/#r=
ev5=20

> >  	disable_rpm_wakeref_asserts(rpm);
> >
> >  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > --
> > 2.25.1
> >
