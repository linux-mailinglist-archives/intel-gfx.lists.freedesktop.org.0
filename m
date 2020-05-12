Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A91F61CECE5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 08:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810376E830;
	Tue, 12 May 2020 06:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E0C6E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 06:17:16 +0000 (UTC)
IronPort-SDR: Qf6ku4SWgxqgqwHTnLwZgUSfjDmpjOK3TF4HE/SEAZulh24RdkhYyp2ImyjqS4lH6BcP1IwQ1q
 sfGso4dxjbvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 23:17:15 -0700
IronPort-SDR: FaxJ2+BzmJWJgDdgPa9G09hNT+QCvjjUq4Hl/3S2RF1AIIqLgA62IasirQqzNiaf1gArPI/mVa
 eh6eL8PJM89A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,382,1583222400"; d="scan'208";a="463425574"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga005.fm.intel.com with ESMTP; 11 May 2020 23:17:14 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 11 May 2020 23:17:14 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 11 May 2020 23:17:14 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.56) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 11 May 2020 23:17:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dNw7wjFYvwMSqo/5wfiQLhp0qSN0oL3uQm1tNbIGP3jhLype08rJiI9Irq8cNRt5Qf2FGcxWZGkj7EQgKoOf6RDrQDb55ppMBsdzRqKVLGRODhzb6DA3lq4ht0xv3w1Pq3YKqwywcaWxHTF+LjwM8AQE1MSaKHdBIMRXpA1PQ3S3sMjec9YxvbSqzdx6Eo9gONRysWvuyozoiyKfHV5Dl/C9eUVDugBH7/Hz+3kCfzFBRrJcqhAlYyg195PhpzeGT6nRHns5k/clGvQG0RR/s2ajqwiu7OZ2JFa5Gx9hOkMyqiY0SOITUTHtPyXRKsB3TGq2zOuW/Q0DsxNfqCBo5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHTrJ8e0sBfVWHRZWYXQnT8cq7xiyqPA0kwKPG9MfCo=;
 b=N4pLssXX10X0rJmiBAdmNB7aaBAxbZayhP9LNMuB0ekSskUBciu9fzRkmxPMKXdIWF+0PXVW7gCkToiS105cIJvnt7h3E7WWQC/QeayK4mM7jpEkzC4ZsoaVupVlrVa2gfcJnYgARh30JX7XWbLU9lTGS0RSyhTeW0TKqLnWszYHpedUi5iknNo7Feuksqai1jeuuPK+aAMemA++mf1r/NYEOau2PN6cmXdW8O5wEvga2Yv77NnO2yZ6QcJ1kEpldnxeSUJw9VSRAdMCz0fcBUaKKDGUGjLrW6ssINBepQL4/4D6/z9AfuDTo1uhfCRkZmO4FWfnaFM27nM3ar7AZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UHTrJ8e0sBfVWHRZWYXQnT8cq7xiyqPA0kwKPG9MfCo=;
 b=gg/uTX/RV6qfsSjpClE2dHKoBhgSqzd0qwY7wMCMpomT9Q9s5IGM+xAuLw9n3PYTJo8Lw2+FOAvRk30+9PGCV2YLHjW1VdyFQY9tyr34q7Owykk7JB2Xllo52wHahAdIiQpx7e/P/FDtqP/Rc/TSKF3RQjkxseeVV8Ew9tPl1Lk=
Received: from BN6PR11MB1588.namprd11.prod.outlook.com (2603:10b6:405:e::13)
 by BN6PR11MB1684.namprd11.prod.outlook.com (2603:10b6:404:40::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Tue, 12 May
 2020 06:17:12 +0000
Received: from BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b45b:e45e:f6b2:9120]) by BN6PR11MB1588.namprd11.prod.outlook.com
 ([fe80::b45b:e45e:f6b2:9120%9]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 06:17:12 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Lyude Paul <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mst: filter out the display mode exceed sink's
 capability
Thread-Index: AQHWFLwnGN/umVG7OUWdyvcd3EqKbqiIw+6AgAhCy5CAEXEo4IABqDtQ
Date: Tue, 12 May 2020 06:17:12 +0000
Message-ID: <BN6PR11MB15885026BFA808B031874949A3BE0@BN6PR11MB1588.namprd11.prod.outlook.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
 <078627d6dff5e01868771b5b2158b75446200fd9.camel@redhat.com>
 <BN6PR11MB15883B388981ADA59DAEB97FA3AA0@BN6PR11MB1588.namprd11.prod.outlook.com>
 <BN6PR11MB15888D8122A56D3D854A5FDAA3A10@BN6PR11MB1588.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR11MB15888D8122A56D3D854A5FDAA3A10@BN6PR11MB1588.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.3.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19c69daf-ec6c-458b-c81f-08d7f63c1bf8
x-ms-traffictypediagnostic: BN6PR11MB1684:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1684AC6DB1CA419BD8B51D01A3BE0@BN6PR11MB1684.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /RYd3J86ROCyPIw46/3EmFE4gchYagHWZ2iON0rLte7dO3R6bto/EL++CSEL8EECtERSyYZoKto+PBMiHqLxI+GWgy/l72amDAVGKXmo3CxTN4wg8GQHcylN1e+4wtL2TaHxJjV0IqYMxz1iqN2QFexNk38b8IovGBXYdwl+CBUHtcWzPYvt27EpHSUgyT5ex0U/dJBnEowTOXyIu56ssMS1E9D9ZbVm1LGxF5bfDfrYhTiwwGn65LIdD5TBHY1Mr+EEKzgTBkMYs0MQzL3BH3vi24D47Ep0/aGmCWMO/B2z8fEbOZnQO5sNZ63tXtNXcybHgFfY7Qknqml3MuuctIshd0AgkysFslM4IjWsMY/NTV8TDfe7oJNf1y06JZcBNB6RvYaFeNje1reIrpH/O0JugelqmkE6FBzsWpN8sB+3gyobYKSLZKLZaAC1ujmI6hG9uaSFmxmVyy1vb19HM5q/MxcWGZyPEpHFI6PduXWul/dB19PDrKmaJsqy4+9fWPEojb1LUNz96V0xNbHWwHunSheQXPoAnrhMee2+FkaTVOaCROyRGkOf0FVznrybOhzuO8uLu+Ovy6HZlq3WUihYj4WVmnkoT4/9zrUICMY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39860400002)(136003)(376002)(396003)(346002)(33430700001)(66476007)(66574014)(26005)(86362001)(8676002)(6506007)(186003)(8796002)(33656002)(8936002)(33440700001)(7696005)(55236004)(5660300002)(52536014)(316002)(76116006)(66946007)(66446008)(55016002)(64756008)(66556008)(54906003)(110136005)(2906002)(478600001)(71200400001)(4326008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: UKTVpZW43AstVPJLKHfzSysSNMunRv4HjTODroNpE8/ukRSPJ3vtAvDFbCItaYHal6PhHQ/eDqEeUd35wpDImBH3III4j6oSRu/fg85RjmSlb5t2/kQw4JhRy6k7ScUBKvgNEhu3ZklwWAQ5tX16kG97hMFff8uhKbncAENXqOTKA//Rk3HlHKM78ZW5V/Vzc0i03yf+cdyQ2Fe44sjCtVlcH8HVqoaHibFnCgKTVwhsOu5IN2ZTY6XTYXJ55TKHqtPlsZ4DiKfjFooTorzyZSc9/ucSNSLRUCUffTAiFrE+/uExROawL0cqVhPYQU7SEOatBzKPte/RXWK+0xM+m0jEOTUcXdRKPmmUN8DUkAcBZ07Y+GF1K1vbFiODR1s6airwF1GWc4O6XJzGAgA1JMyb/7JjS1NH7o+KdOCTyAQAAQrBqvZZ01hI3Lrfl70ny3yBA91MGeEx4ZOXNx9nO3fI1+YFSvbC/9Z/no3XyGQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 19c69daf-ec6c-458b-c81f-08d7f63c1bf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 06:17:12.1845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eHF2vBVslPLQrhPiPHnKgJ/QxXnxA03HhqmYc/ePvNof0JY4pIlloMQ/3q2A+eapsNaG8ag1JlK9MnZvI+qqEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1684
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: filter out the display mode
 exceed sink's capability
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
Reply-To: "20200417212408.19649-1-shawn.c.lee@intel.com"
 <20200417212408.19649-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 11, 2020, Ville Syrj=E4l=E4 wrote:
>On Thu, May 07, 2020 at 06:46:17PM -0400, Lyude Paul wrote:
>> On Thu, 2020-04-30 at 02:37 +0000, Lee, Shawn C wrote:
>> > On Sat, 2020-04-25, Lyude Paul wrote:
>> > > Hi! Sorry this took me a little while to get back to, I had a couple=
 of
>> > > MST regressions that I had to look into
>> > > =

>> > > On Sat, 2020-04-18 at 05:24 +0800, Lee Shawn C wrote:
>> > > > So far, max dot clock rate for MST mode rely on physcial bandwidth =

>> > > > limitation. It would caused compatibility issue if source display =

>> > > > resolution exceed MST hub output ability.
>> > > > =

>> > > > For example, source DUT had DP 1.2 output capability.
>> > > > And MST docking just support HDMI 1.4 spec. When a HDMI 2.0 monito=
r =

>> > > > connected. Source would retrieve EDID from external and get max =

>> > > > resolution 4k@60fps. DP 1.2 can support 4K@60fps because it did no=
t =

>> > > > surpass DP physical bandwidth limitation.
>> > > > Do modeset to 4k@60fps, source output display data but MST docking =

>> > > > can't output HDMI properly due to this resolution already over HDM=
I =

>> > > > 1.4 spec.
>> > > > =

>> > > > Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn instead =
of =

>> > > > available_pbn for bandwidth checks").
>> > > > Source driver should refer to full_pbn to evaluate sink output =

>> > > > capability. And filter out the resolution surpass sink output =

>> > > > limitation.
>> > > > =

>> > > > Cc: Manasi Navare <manasi.d.navare@intel.com>
>> > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> > > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> > > > Cc: Cooper Chiou <cooper.chiou@intel.com>
>> > > > Cc: Lyude Paul <lyude@redhat.com>
>> > > > Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> > > > ---
>> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 =

>> > > > ++++++++++++++++++++-
>> > > >  1 file changed, 23 insertions(+), 1 deletion(-)
>> > > > =

>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > > index 61605eb8c2af..68697f463dab 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > > > @@ -609,6 +609,26 @@ static int intel_dp_mst_get_modes(struct =

>> > > > drm_connector
>> > > > *connector)
>> > > >  	return intel_dp_mst_get_ddc_modes(connector);
>> > > >  }
>> > > >  =

>> > > > +static bool
>> > > > +intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector
>> > > > *connector, int clock, int bpp)
>> > > > +{
>> > > > +	struct intel_connector *intel_connector =3D
>> > > > to_intel_connector(connector);
>> > > > +	struct intel_dp *intel_dp =3D intel_connector->mst_port;
>> > > > +	struct drm_dp_mst_topology_mgr *mgr =3D &intel_dp->mst_mgr;
>> > > > +	struct drm_dp_mst_port *port =3D (to_intel_connector(connector))=
->port;
>> > > > +	bool ret =3D false;
>> > > > +
>> > > > +	if (!mgr)
>> > > > +		return ret;
>> > > > +
>> > > > +	mutex_lock(&mgr->lock);
>> > > =

>> > > This isn't the right lock for this - mgr->lock protects the topology
>> > > layout (e.g. drm_dp_mst_port.mstb, drm_dp_mst_port.next, and
>> > > drm_dp_mst_branch.ports). port->full_pbn is protected under
>> > > &drm_dp_mst_topology_mgr.base.lock (not drm_dp_mst_topology_mgr.lock=
), so
>> > > you need to first add a version of .mode_valid() to struct
>> > > drm_connector_helper_funcs that accepts a drm_modeset_acquire_ctx so=
 you
>> > > can use that to safely grab &drm_dp_mst_topology_mgr.base.lock.
>> > > =

>> > =

>> > Thanks for comments! I will correct the lock to protect port->full_pbn.
>> > =

>> > > > +	if (port->full_pbn)
>> > > =

>> > > Also - there's no reason to check if (port->full_pbn) here, so long =
as
>> > > you're holding the right locks this should always be populated by th=
e time
>> > > we create the drm_connector for the MST port (if it's not, that's a =
bug
>> > > that needs to be fixed).
>> > > =

>> > =

>> > Just want to make sure full_pbn value is greater than zero. As you men=
tion
>> > in another patch, it's hard to predict sink report full or available P=
BN
>> > properly.
>> =

>> Sorry this took me a little while to respond to, crunch time came up at =
work.
>> Anyway-have you seen issues with full_pbn reporting on hubs? I've seen p=
lenty
>> of problems with available_pbn reporting, but the reason we switched ove=
r to
>> full_pbn in the first place is because that seemed to be the one hubs re=
ported
>> reliably. We actually make the assumption full_pbn is always > 0 if
>> something's connected in some places in the MST helpers, so if we've got=
 cases
>> of full_pbn lying as well on some hubs we might want to fix that.
>
>We have at least one full_pbn=3D=3D0 issue in ci:
><4>[    5.061345] WARNING: CPU: 0 PID: 376 at drivers/gpu/drm/drm_dp_mst_t=
opology.c:4889 drm_dp_mst_atomic_check_mstb_bw_limit+0x193/0x1c0
>
>https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8460/fi-kbl-7560u/boot0.txt
>
>Dunno if that's the MST device reporting zero or due to some other
>bug, but at least CI is currently borked on that machine.

Thanks for sharing! It will be good to keep checking full_pbn to avoid unex=
pected issue.
BTW, I just upload patch v2. Could you please share your comments about tha=
t?

Best regards,
Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
