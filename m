Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CAF2B748E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 04:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9396E2D1;
	Wed, 18 Nov 2020 03:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 488656E2D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 03:10:40 +0000 (UTC)
IronPort-SDR: 5qM/fM8VPCzH3224bYk5ID0KUQbuew1wfKlngD+3f2ANgIJNDTSBeNdDTyPOx2PbDzFL0rOEnV
 0pM0ETexPBcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150904208"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="150904208"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 19:10:39 -0800
IronPort-SDR: tVM+Fm6ZOfQmZHxTJO+mJZkBsYLodEPgYjDYOP3uY19lObyIEjXyUAkdU75BNE5/aCzbawsi/I
 J7IPXhWYz2Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="368313154"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 17 Nov 2020 19:10:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 19:10:39 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Nov 2020 19:10:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Nov 2020 19:10:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 17 Nov 2020 19:10:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nlVn5M9LfuKWJ8tSAc/FEwtOfDn+DtnTI1txc+1PI1oKZ+ytTJMJOJ/Vp8axEN1Lez5aLu5A3bdyORwaiyUDWdlhiV0Bs31PdWB7XPvRya1ZXWRJC+at3uKcx3OIrfVhsFXP2nwUL/znUYyk+n/L3cUEf2tPtZrBnMLFHwNxjEn3jiwO1f6GuFtQ0BPXDgGqAq7Cw9wsFllBqwhmPW3cEneZZuTD++UgQ8c+r1KTm+vWPSSAgX2jo57BIXDAb1r21OOUyHsfyWgt02KzEwPSdJ+7PuIIrADwZPME0RK8qP/oLo7p3FEjbIt+VQZZbCfOJl51RDg71lhgC+e9q40SWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HuuaJWP11/hYqESY/45mHYk6VTNzukhw/6y1QRXeJdw=;
 b=FL6qNE0rsmXgKLlBG2EFjxoLJG7T3TNoS34O6SRijUelLtxEN3aHr5dYou6/SBRyKo8ZpsG7s8uWlCKpIMVrGA57y95gKhjn46jotz9NKvYhl7WeG0qtCQBVfXM87jjKhBG1ItX1Wnf56tpoNjUhsscMlVAmDxS+PfgnCG2wSK+DHdrYWX1ixdI1Z8/G5eeWvJihwz4tK4x/seQUetCxWfNYPvNhLyU/YUp4lp9GCaamfIbCKSDv6ESK+5ixU8C7c4o8PthIFJ6NXT3v2wPjpEn3AxXwU+bQsOUQuhV1ObOanVM24iOr0VNytoILSzJbRQhcUlOf223qLD+IWEir/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HuuaJWP11/hYqESY/45mHYk6VTNzukhw/6y1QRXeJdw=;
 b=F4S1iIIDE7lJTPn+AIwkfkvP96SQ8yGJnxIlv+Q3R+f75aSUyUpuKi4hwSfI0QQUN4q2PE/krUrP+I4pgWLSJvZYqyan5/J4H+9WJkZZxcClFViYbpd4pZK/Xx2OyejDdpFvTeDphe5ErlvSfeoLKVzceTndKaf4SmSimtwOVGI=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BY5PR11MB4289.namprd11.prod.outlook.com (2603:10b6:a03:1ce::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.28; Wed, 18 Nov
 2020 03:10:34 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3564.028; Wed, 18 Nov 2020
 03:10:34 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/lspcon: enter standby mode to enhance power
 saving
Thread-Index: AQHWvCAKAuJ/MKvM5kOej/bSDv7H96nMhX0AgACq7pA=
Date: Wed, 18 Nov 2020 03:10:34 +0000
Message-ID: <BY5PR11MB43072549E7F351D65E0B331EA3E10@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201116135913.20782-1-shawn.c.lee@intel.com>
 <20201117162950.GG6112@intel.com>
In-Reply-To: <20201117162950.GG6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe7d4661-5049-4354-9422-08d88b6f83e5
x-ms-traffictypediagnostic: BY5PR11MB4289:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4289734E967521A895AB3810A3E10@BY5PR11MB4289.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J7vhDZ16QLgWNrXzmZTQRRJ00f624f1XBFQLzB7ofE/o9uu8M9NXeSOo6VgmUDYZFLGr/dcrHqBIsUdgBi/iXSYhe4BE0YMTERRZhd/+JpPVOJOIXPD2j1u7cXzruuxGqaqIrflhoYz22G8886dTYRwfDjSUKmiEigNJcqJVmXLxNdfk5llqb5VhuOiZfEUxyZzA4iBBTKEcdTu78B5k0nWnzpPUJBLuB8wNeT8aWNyzYDaN/WcJKFm1sBuPZ+NSAY7cPt1PdoAtPxyB8Wi4idNMA4kd4RBlwlELYscqcz3r9Ovd0xwwCEqQ6nxBx+1pu7uP1UFTrE+ygg80Zbu22A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(366004)(376002)(346002)(396003)(136003)(83380400001)(55016002)(66446008)(9686003)(66476007)(2906002)(4326008)(66946007)(71200400001)(316002)(8676002)(76116006)(66556008)(8936002)(66574015)(8796002)(33656002)(26005)(6506007)(64756008)(52536014)(478600001)(54906003)(5660300002)(7696005)(110136005)(86362001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 87Kyc9uaadJeNaZ3ISFV28aEQV/CCl+2lBBt5mB1X3sXogS1AMaTqGawxHxrWGSGezllZKfJCCxuj1e7yDgqNrqYwnvoxkp25qPWILVznfDlU0k0XVchBmy9tDDOBuctPF40BKAKO7jhziAdA5F3P9TtVXZ6wQ3Yssom+/jZA7sa8oP2XpavYVYIdNrlT55rrpkLMzeaDbNi4LIipEeu6qrxHIwrV42w8JqPJlGXClBMS43OeuIF97YNLxdd3D2wg00+YVC1CLZKaa88zvrkXSWYvQLOj1m/cF08+D06yuCe75zylRIDl2Bc2pwZFv/lUjROZeTzgm7SUAL9pfNGm901v+jJwUJBQJQwJzpU5yCXERHOOwHRlxuKFOxWob2r1uXxVK1OjyzT2yazvyZBAFa0oE9mATKzhgBjBOw2xCna6/yjfXgnrKdKFq1n0kiKMBnul5FMoyioukLhiuJdQKbZrJO5UbCY/zKfPo11emu8aLyflEKxJwhnYEdKAZHblN06NgTouE9SKrKe6Bwijmkzbbn2UVAqVrNPX5nf9rLFAoar0BTKMAeYmZedkLSJGjolNBQ53aasp0dtrw+JX8pzWyEkjxTSbdig1KqOWFTujGuDwnHaWuOFMTGZSjJ/zw1cV2xdnJKm5y8C/3wg2g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe7d4661-5049-4354-9422-08d88b6f83e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2020 03:10:34.1977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WZKefEqutdSXFqah4wU+G1sVzMVtKiwSHHSkQu2A3epTvtlvM+U7ziGsyDYPYbfgC1IYVMnHKfZf011pKAJ1xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4289
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lspcon: enter standby mode to
 enhance power saving
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
Reply-To: "20201116135913.20782-1-shawn.c.lee@intel.com"
 <20201116135913.20782-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, Nov. 17, 2020, 4:29 p.m., Ville Syrj=E4l=E4 wrote:
>On Mon, Nov 16, 2020 at 09:59:13PM +0800, Lee Shawn C wrote:
>> After system boot up, LSPCON will be configured as PCON mode.
>> But it never go into power saving state. Source driver can do the =

>> following. Then LSPCON can enter standby mode automatically to save =

>> more power.
>> =

>> 1. At PCON mode, source driver write 0x2 to DPCD 600h.
>> 2. At LS mode, try to disable DP_DUAL_MODE_TMDS_OEN.
>> =

>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++++-
>>  drivers/gpu/drm/i915/display/intel_lspcon.c | 8 ++++++++  =

>> drivers/gpu/drm/i915/display/intel_lspcon.h | 1 +
>>  3 files changed, 15 insertions(+), 1 deletion(-)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c =

>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index ec8359f03aaf..7dd16d6bd5ba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6536,6 +6536,7 @@ intel_dp_detect(struct drm_connector *connector,
>>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>>  	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(con=
nector));
>>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>> +	struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
>>  	struct intel_encoder *encoder =3D &dig_port->base;
>>  	enum drm_connector_status status;
>>  =

>> @@ -6632,9 +6633,13 @@ intel_dp_detect(struct drm_connector *connector,
>>  	intel_dp_check_service_irq(intel_dp);
>>  =

>>  out:
>> -	if (status !=3D connector_status_connected && !intel_dp->is_mst)
>> +	if (status !=3D connector_status_connected && !intel_dp->is_mst) {
>>  		intel_dp_unset_edid(intel_dp);
>>  =

>> +		if (lspcon && lspcon->active)
>> +			lspcon_standby(dp_to_dig_port(intel_dp));
>
>We should proably just do this for all DP devices. But I'm not sure if we =
can just do it uncoditionally like this. We should perhaps first check that=
 the connector is not in use. So doing this sort of stuff as part of the no=
rmal init/resume sanitization process might be the better option.
>

Source driver already set sink power state to D3 in intel_ddi_post_disable_=
dp().
We learned from LSPCON vendor that configure power state to D3 must be the =
latest AUX command.
Any aux communication after that, LSPCON will be wake up until source set i=
t to D3 next time.

Some user space application (ex: chrome os) used IOCTL to monitor external =
display's connection.
intel_dp_detect() will be called and try to read sink's info via AUX. In th=
is case, LSPCON will
be active again. If we found there is LSPCON on this port and no more sink =
connected.
Source driver set power state to D3 here to make LSPCON enter standby mode.

>> +	}
>> +
>>  	/*
>>  	 * Make sure the refs for power wells enabled during detect are
>>  	 * dropped to avoid a new detect cycle triggered by HPD polling.
>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c =

>> b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> index e37d45e531df..4913ff20d7b4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> @@ -550,6 +550,14 @@ static bool lspcon_init(struct intel_digital_port *=
dig_port)
>>  	return true;
>>  }
>>  =

>> +void lspcon_standby(struct intel_digital_port *dig_port) {
>> +	struct intel_dp *dp =3D &dig_port->dp;
>> +
>> +	if (drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, DP_SET_POWER_D3) <=3D 0)
>> +		DRM_DEBUG_KMS("Failed to write EDID checksum\n");
>
>Eh?
>

Sorry I miss to modify the error messages here. I will fix it later.

>> +}
>> +
>>  void lspcon_resume(struct intel_digital_port *dig_port)  {
>>  	struct intel_lspcon *lspcon =3D &dig_port->lspcon; diff --git =

>> a/drivers/gpu/drm/i915/display/intel_lspcon.h =

>> b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> index b03dcb7076d8..658a2e5b22db 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> @@ -16,6 +16,7 @@ struct intel_encoder;  struct intel_lspcon;
>>  =

>>  void lspcon_resume(struct intel_digital_port *dig_port);
>> +void lspcon_standby(struct intel_digital_port *dig_port);
>>  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);  void =

>> lspcon_write_infoframe(struct intel_encoder *encoder,
>>  			    const struct intel_crtc_state *crtc_state,
>> --
>> 2.17.1
>
>--
>Ville Syrj=E4l=E4
>Intel
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
