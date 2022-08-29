Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C24E65A435F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 08:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C660410F0C2;
	Mon, 29 Aug 2022 06:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8052410F0C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 06:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661755558; x=1693291558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I8JFvqAEs3ixEmD31maE7EG2PyOjAi71QiyCQZPG0ZI=;
 b=YdHLBk1AjYfFPT8zOzUM43inv10ztEJLa+hw026f9j0V86iJaCHMD606
 Z8Rs/KNvQJ1p/ZFWsji4bJfyWfI/3aXMv+r1rDOO31gmCcC6oCiWkBfRr
 1mplvpOt1dWjY/wfVJYhITvtAqE3G29RDbP+UtNDYIR9U36mCV7jVoEeX
 3wH2V0x2wursawWFP57BJqUiV3KUbKu3zGN8ihzH+78GgSmA87V5vNsQG
 Gcrb+ddb4H+9WqrFV0+S96Rh4EaBXOBF6/0BCb524XmK1GrFdVAy5WI/9
 4W9Hx979RhuI7+4m4lIWoYEUh7vJdFGUFdd5pzxWhQVvMYJlK95GdA3P+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="293567462"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="293567462"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2022 23:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="672261960"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2022 23:45:57 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 28 Aug 2022 23:45:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 28 Aug 2022 23:45:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 28 Aug 2022 23:45:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 28 Aug 2022 23:45:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hya17ST6/2pfSEil6BNT12bXmaRMx9zjsmP3qLXb1WHJvCaPK/lSNvNv9VLcroqMh8GOVRmG6ECzY+aXxNzLLGRXI54J5jA966u/Je6MyMKejU9fPIr4lr/uWhvEWgUj4J7/I37X+jFPlCPLGEkTSINhyN4DoSwiRJC0ZUVzlUfRnudttMjo0ldd7N9sD4UW9hVw9eT+O467wFQXxsWE4L71futUnRTjmQOHsoOOcfgbt5CYYc+D0w8/8B2pmfjyQZ7+r+l6WX2HmINeZjWSEu0yGItfIIYkketsNpZIg0LjMAo9kRmwdHRHsTuNPXF+GLqeKNjzV2HCWebT9fty/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nDnOIeug8nKXzx+nGTfTfWDhgGIb+B8DZyTmWpJ4Pek=;
 b=VKAAkq6mxd7FbN8rQsbqMWRh+U6/rWMbe8FscmGaop3o/TnZK0slV5iY63dGw1DHxnY3BQ7BfB1ex96cO6ZlzOSwycX9mMtAjrDPMEqeDwYWvT1Xq2eXV/ks9FbyA8MLuSyEjxvM1u8kWozY5ZM2Hluh8D7lJpesVgP34kZjJBqynAarXKPp27qahY0vR2JgJgjysiWhDFnQHj/pWYV8pfLEh3e9JcMnGGVyUzRTDjYZ6y94wj7e4cQdu0OwDloEOWof3aD9Q0J54KrphXs1XueyDC2gSCgLMvIdyZJBrz+1lz2bUNhV/Fk41emJ3fF6MKm12xuoBuuz5DTzXm+DOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by BN7PR11MB2659.namprd11.prod.outlook.com (2603:10b6:406:ab::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Mon, 29 Aug
 2022 06:45:55 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::61c1:4020:d92d:bd06]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::61c1:4020:d92d:bd06%3]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 06:45:54 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
Thread-Index: AQHYrkGU1vNkWWZqjkOsmkvx0TsbAK2zEyUAgAlXRvCAABRMcIADBiEAgAYCzdA=
Date: Mon, 29 Aug 2022 06:45:53 +0000
Message-ID: <MWHPR11MB1935880C25E9DDF3ED205669B2769@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
 <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <MWHPR11MB193572EF5A173CC9F42861DDB2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <YwdURvTR2xakrFK0@ideak-desk.fi.intel.com>
In-Reply-To: <YwdURvTR2xakrFK0@ideak-desk.fi.intel.com>
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
x-ms-office365-filtering-correlation-id: 8b58ca73-e03c-4990-f3b4-08da898a1eba
x-ms-traffictypediagnostic: BN7PR11MB2659:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AotHsWS1vgWBipt3jeTKD9bVBK3X1Z3YbPN83GvqO5qBHXtBZsKgYk/3I+VDV3FiwXhi41QImqqtPZcUwhkd15hOwsG3TDyHot8HpqtUBm8EXAUwrukEChLN0+MC+8uXlPgzFa1oJwV6AaB+OBrbRZxtVxsiGj9P8uSu3w26FkCA+c9nqpWqvGb1XAJ/RINO8PYrVVlTCXrIvWzg9kVs3Rx58BYrskbpgSR+AjXhF1w8IEGwoCiKgZhyRbqhZrMsiDVHYVZdFss/qJT6CLjcXNoWVPVZ4g4i7N+aHgbK+SQfEyaP6UCAci90+pbTwiT+V55Hu4MNS1QC0abT8Ug+AZ08dvl42Q2TUdQdVxaB5fhR9eAhIj/RPNSThnl+9BobDat9Ta1CF7VHs2qBUhWEpClwS/JZIXg3xvvehLzav3hkBetDRZiTXRACn2I9Rexh8XKbeBaP4IAqxvyNxVDg6U9mWrvOOWSbOv4sgpnf3MM1XcbOXwz39JRL3Cuh4mf0dTjDknUgwLHt2lTBCU4zpnLBBHt599sc2vXe8t07mlmWJ7tkHbgu7+7K1HoeHwjkG9UbE8wmk41ruvuioxCdjBPkuLRyqNKpK40bysSk2WuDhVp9it3l1Vp1QoYI2KuexLpi0DJyfhbRGl/P6dAbHmhWTDVDsecYj4miQNOJrGTDDm/b+zhkpAO4G/3qaK4XKACNVZkUHjByofUvjfCM+A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(366004)(396003)(39860400002)(64756008)(66446008)(71200400001)(8676002)(4326008)(55016003)(966005)(478600001)(38100700002)(8936002)(122000001)(52536014)(6862004)(6636002)(316002)(82960400001)(86362001)(5660300002)(76116006)(66556008)(66476007)(38070700005)(66946007)(186003)(83380400001)(7696005)(2906002)(53546011)(33656002)(55236004)(6506007)(41300700001)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ANcbBieG1yELSO4Zw8LGalk6e45S5lifm2WFN/LZau9SP+oBmiNcQ7zXvOe0?=
 =?us-ascii?Q?Slx5FDEf7sNFMp+0n2gOwXF7z9UoGXOzXsxOPAqSHM/3ZZ9sYv22mZnF5/yD?=
 =?us-ascii?Q?MgfaUOP64y0qFzYze3S3qO+gcNffUKnfOWUoOGWdQhpUZQM6KQ4cNBregJg1?=
 =?us-ascii?Q?GUJFy39akSKoqwHPBGa1WgYWIhOaGanpnTrsVJ9/FqBbPE7YcQ4y7P+lRHnU?=
 =?us-ascii?Q?35B6QK3zY5Ea2nD0Qk1UjxGA8Txk8Gcx16zBFkXe1jaO2+9O1E3vNamMmT2q?=
 =?us-ascii?Q?LvOhZnTqE4cAXlR+/4WlaMAn6o4EYBg126mW3IrkdFvXaAQjGBROHLXpCYk4?=
 =?us-ascii?Q?stdpaA6+1366XEkTHEwzvF246kGrq4o2rgbkW4va4dycBD6c7kyCNMltIJlu?=
 =?us-ascii?Q?tAfKCr1lCfHEhPBOj8cjJ09PL5w/0HTKN9UESotenbiULSkLD9Y+SVfxUkZY?=
 =?us-ascii?Q?a+2n8OhxkOr+FDSgzEAQ8M+HK7CRYk3FnvWBQn2a772k86kYFYSePgAD31Ic?=
 =?us-ascii?Q?Yp9mIgGtEObl4szpVDGpaDJxZvrktix7fim0MX9D1by12lkle0IcoSQNwgES?=
 =?us-ascii?Q?stzACfVBfbECq1rwOuXDyHPbqxEQ+5MNae7Whtixq3xTsHv6RMhYgJ/l1c5H?=
 =?us-ascii?Q?aKiPD7KgAN/zv6SG1Nts3e9sJLqWvDsWlJL0SsfX4xUBXk3IMfXHNY+uFbLQ?=
 =?us-ascii?Q?Lk4MAE3cte0+jL2qQzQr4jw3OgaiRRsm4VvwsEIAxP7TXmqBuX7iWHiHN/y0?=
 =?us-ascii?Q?GhZak2BYCzXFfDS0+3DjUmbrR6YXBTguGc/MgMyqsDU0TohX2Q+RK43IRNzl?=
 =?us-ascii?Q?U8Lr5eyackKqmAoumtqHUnnr5A5nMmN9/pz9IHiXR6Yjm591QDSqTmBpwpUX?=
 =?us-ascii?Q?f0gwapibRMfNq4GYqd/OhiG6mGc3sRCM8rqf6TsPCrWNnQnfaVCRI8YkOZrN?=
 =?us-ascii?Q?HyNE/+8hzGoG/M0MOGQNZhSGD3lmV8mcj0GImKNq6pvMVSfQp6483DTzFXkK?=
 =?us-ascii?Q?cXH38i1xIwO86M1Dap3z6TqVGk8DnLk2FI1x8zjQa78zG9b6ntpsM63GZ00r?=
 =?us-ascii?Q?pU0TP8nXu8pvxftFkqL0atTnP0wlVgnNuD3qAS9qGuuO7cHLDYp6EY7YW06m?=
 =?us-ascii?Q?nF9/v8nrwdRSIzb1iGa3qbkwDbpKqdSXfcBJFXnrSOSTC6iUf4caVcGLKBtF?=
 =?us-ascii?Q?ji+u8IVmVSZejO3HVJbvttjKYxm5aPnfsumuOtHGga8AgPoA308LAhp+NIp/?=
 =?us-ascii?Q?MZq4Vat2bn6LvaqrXoksNStqRDlvDr4mH+3djAoYMwUl7GnJuBxB/7m4YpYj?=
 =?us-ascii?Q?DT1HAni1IKQI7Rk2/h27W/RT7xTDZaV5BXe019LmMiLIr1kbBQpo+TdJaiLv?=
 =?us-ascii?Q?jgDq3fCejUQ3leab3+EajdDlAfs3C6BjZkBvGppSLwad5IhSZMT2MHpDl1rC?=
 =?us-ascii?Q?W+n4IoDk/7BLiyPtc2ahnRGuOyMwBKUDl6g8YuoIrEX6cWHyBXMv22nsNEUb?=
 =?us-ascii?Q?8R1wsQ/gyDqaH2hQ4sfROZVYeiJEk4D1CenwofAppQ/KXLoGwn2M3oMVF/N2?=
 =?us-ascii?Q?mAE0qyiDq7Wtkl9dhvfLbNBT6295CWOdxi48KMQsm+L5xTdiDc6q1hWwcWJx?=
 =?us-ascii?Q?72e5z2yyBg2DiV6gPbYsK8U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b58ca73-e03c-4990-f3b4-08da898a1eba
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 06:45:53.9782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 63ArOacrEbXRuWOdxmxrMlLPnYEhmY7Yr+zkp3rcboMSAAScv7zPY9S4rZH/PPJfUUB/a83PjcH8jWdXOEVEafxXMi2PdH8dN0ddf0lGp9ArlmPHBYzVX/7kgxVYmIGE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2659
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

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: 25 August 2022 16:22
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack =
for
> imbalance wakeref
>=20
> On Tue, Aug 23, 2022 at 03:56:56PM +0300, Golani, Mitulkumar Ajitkumar
> wrote:
> > > Hi Imre,
> > >
> > > > On Fri, Aug 12, 2022 at 10:17:24AM +0530, Mitul Golani wrote:
> > > > > While executing i915_selftest, wakeref imbalance warning is seen
> > > > > with i915_selftest failure.
> > > > >
> > > > > When device is already suspended, wakeref is acquired by
> > > > > disable_rpm_wakeref_asserts and rpm ownership is transferred
> > > > > back to core. During this case wakeref_count will not be zero.
> > > > > Once driver is unregistered, this wakeref is released with
> > > > > enable_rpm_wakeref_asserts and balancing wakeref_count acquired
> > > > > by driver.
> > > > >
> > > > > This patch will fix the warning callstack by adding check if
> > > > > device is already suspended and rpm ownership transfer is going o=
n.
> > > > >
> > > > > Signed-off-by: Mitul Golani
> > > > > <mitulkumar.ajitkumar.golani@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_driver.c | 8 +++++++-
> > > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > > > b/drivers/gpu/drm/i915/i915_driver.c
> > > > > index deb8a8b76965..6530a8680cfd 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > > @@ -1670,7 +1670,13 @@ static int intel_runtime_resume(struct
> > > > > device
> > > > > *kdev)
> > > > >
> > > > >   drm_dbg(&dev_priv->drm, "Resuming device\n");
> > > > >
> > > > > - drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> > > > >wakeref_count));
> > > > > + /*
> > > > > +  * When device is already suspended, Wakeref is acquired by
> > > > disable_rpm_wakeref_asserts
> > > > > +  * and rpm ownership is transferred back to core. During this
> > > > > + case
> > > > wakeref_count will
> > > > > +  * not be zero. Once driver is unregistered, this wakeref is
> > > > > +released
> > > > with
> > > > > +  * enable_rpm_wakeref_asserts and balancing wakeref_count
> > > > acquired by driver.
> > > > > +  */
> > > > > + drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm-
> > > > >wakeref_count) &&
> > > > > +!rpm->suspended);
> > > >
> > > > I can't see how disable/enable_rpm_wakeref_asserts() can lead to
> > > > this WARN. They are always called in pairs both in
> > > > intel_runtime_suspend() and intel_runtime_resume(), leaving rpm-
> >wakeref_count unchanged.
> > > >
> > > > The root cause is probably somewhere else, incrementing
> > > > rpm->wakeref_count without runtime resuming the device.
> > > >
> > > > The WARN() condition is corret, we shouldn't get here with a
> > > > non-zero wakeref_count. rpm->suspended - set in
> > > > intel_runtime_suspend() and cleared in intel_runtime_resume() -
> > > > should be always false here, so the above change would just disable=
 the
> WARN in all cases.
> > > >
> > > Yes, in case of DG2, after device is suspended, i915_driver_remove
> > > is being called.  Here driver is taking wakeref with
> > > disable_rpm_wakeref_asserts when device was not resumed.
>=20
> > >
> > > As per logs,
> > > [  395.872971] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]]
> > > Suspending device ...
> > > [  403.553235] i915_driver_remove: START wakeref=3D0 [  403.553288]
> > > i915_driver_remove: before unregister i915 wakeref=3D65537 (Wakeref
> > > Taken) [  403.566086] i915 0000:03:00.0: [drm:intel_runtime_resume
> > > [i915]] Resuming device (Later Resuming Device)
> > >
> > > Pushed new change with :
> > > https://patchwork.freedesktop.org/series/107211/#rev5
> > >
> > Also when compared DG2 logs with ADLP working logs, Already 1 wakeref
> > was taken by DMC firmware(i915/adlp_dmc_ver2_16.bin (v2.16)), in-case
> of DG2 looks to be missing.
> > To support other targets and to prevent consecutive resuming device
> > added following check, if (i915->runtime_pm.suspended &&
> > !atomic_read(&i915->runtime_pm.wakeref_count))
> >
> > ADLP Logs:
> > ---------------
> > [   99.502434] i915_driver_probe: START wakeref=3D0
> > [  713.979074] i915 0000:00:02.0: [drm] Finished loading DMC firmware
> > i915/adlp_dmc_ver2_16.bin (v2.16) [  102.455766] i915_driver_probe:
> > END wakeref=3D65538 ...
> > [  103.448570] i915_driver_remove: START wakeref=3D65537 [  103.448587]
> > i915_driver_remove: before unregister i915 wakeref=3D131074 ->
> > (disable_rpm_wakeref_assert) [  103.585886] i915_driver_remove: END
> > wakeref=3D0
> >
> > DG2 Logs:
> > -------------
> > [ 1271.704314] i915_driver_probe: START wakeref=3D0 [  383.050984] i915
> > 0000:03:00.0: [drm] Finished loading DMC firmware
> > i915/dg2_dmc_ver2_07.bin (v2.7) [ 1272.021133] i915_driver_probe: END
> > wakeref=3D1 ...
> > [  395.883531] i915 0000:03:00.0: [drm:intel_runtime_suspend [i915]]
> > Device suspended ...
> > [ 1291.450841] i915_driver_remove: START wakeref=3D0 [ 1291.450877]
> > i915_driver_remove: before unregister i915 wakeref=3D65537 ->
> > (disable_rpm_wakeref_assert) [ 1291.603281] i915_driver_remove: END
> > wakeref=3D0
>=20
> Still not sure what's going. Both i915_pci_probe() and
> i915_pci_remove()->i915_driver_remove() is called with a runtime PM
> reference - taken at local_pci_probe() and pci_device_remove() - and so t=
he
> device should be runtime resumed at those points.
>=20

Yes reference is being taken at local_pci_probe() and pci_device_remove() b=
ut=20
During i915_selftest@perf, it is loading and unloading i915_pci_probe() and
i915_pci_remove(), here pci_device_remove() is not being called, that's why
runtime PM reference is not present during i915_driver_remove().

> > > > >   disable_rpm_wakeref_asserts(rpm);
> > > > >
> > > > >   intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > > > > --
> > > > > 2.25.1
> > > > >
