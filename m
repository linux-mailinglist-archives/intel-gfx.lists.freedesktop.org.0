Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB588D516
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 04:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C6A10F773;
	Wed, 27 Mar 2024 03:36:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5UjySWg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F6510F773
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711510593; x=1743046593;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q2bCC0oc6Z/64UGmS7Mj3w1YK8w6c3vEYAsRRiA1iGc=;
 b=B5UjySWgy4xZk0Na1w0Pnd36+16mLKvyo8OQvl6HKhrm5tqAbTDtEg0G
 AaNPOvYpDvlElZwcX6sEBsHxm9Iu2FAC8766oEryvOskTFk7ZhV8yMkDm
 tsIEu9IoylyuJURuq9I8c8vEEbikRrDymbS+6+J/fZBGybUNrUWg2srTD
 XXdobGZ90eVEZDba16HW7IKGlRKzhs5YPA2WrjA4v0hfaRov+lZgrmQT/
 4VBA4F4TBfHgXT7pd08Cm1IbkjkIIeSpy+GJ1E5Nsgjg0RkIXo2swXWGX
 78xo2mkqs+wn0K2HBDvxWJkam6CGv63MopuAjgSBmLllKzLwKrmVqFtwA Q==;
X-CSE-ConnectionGUID: hY8oyBH4Sdma937NP12QRQ==
X-CSE-MsgGUID: Ry37S1dvRee+kdVvLW3k2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6530755"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6530755"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 20:36:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16812505"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 20:36:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 20:36:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 20:36:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 20:36:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Und6RRTwiErN+BydP7CX7obuBiDv7qXvxnchSGu6kSALf0sPFN4xb9I3zz2LhtjXnnGPLsJ/rYLShNfwZ6y/P2G7LYDecd/gROrjjdwVbKwC46kHowSKtaZ5GyX30KiKNig9OTy5ETbZFWvy0jQHZFcwTTvB6t26xmUqIoj7FpsQlPTUXWOPqLhL+4QKenIoUjOfugLLMhYcP+DBbi1v8Zw+9qGiGgDJzyozrV76jfkX2zTJhFE1e+3I6rfj8Wk3qmbUGSiJg4du3r1ZG5EcU9q2PlZduo2A2j5WpuloKPov0n1VmyQQqkGQ70R+2Uz9wYfvipoidsGRbM+EJn/kwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2wY8CzN7qvdMEacpdaUMn9ZEG+Rtu/w37yp5ziZlxGo=;
 b=gM9kH1xxQHa1VHmY3vWWdcfeSpYHbH1iOObOyhIoxN368xnp4nHlOYMwAybU1iWfDae+1GgtXyDjfvW9ytZCfF0ro6irclxIDppD2p26/GgQ7GXDMThYK72cfs2DUE5VH+CFrtdkS0QYcRYeTo1o4YjVEdFsFzFYbQy6Au0mPtVLC5Rpfinl78hkiVJnXAXef4N8IeyajAoHiO3f3KGPl8P2ipk4MzAEpRk7MbZeF4gsCsXf/Pruz4z+fDjnXLPrYeDTcaCGBcrzb0ag38lrkNVS9d3nGapIAfdRoLVnlrBf8o1csIx3+aWDDZux/+ja1AeqKkwKmssNDJBVlqxnBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH0PR11MB8166.namprd11.prod.outlook.com (2603:10b6:610:182::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 03:36:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Wed, 27 Mar 2024
 03:36:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Topic: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Index: AQHafz0Da+fu82lBsUG5nT70HOSPDLFJ3cSAgAETPeA=
Date: Wed, 27 Mar 2024 03:36:29 +0000
Message-ID: <SN7PR11MB675089A18EC04F96917196FBE3342@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240326051454.193181-2-suraj.kandpal@intel.com>
 <SJ1PR11MB61291435D7434453169B69C8B9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61291435D7434453169B69C8B9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH0PR11MB8166:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dj8m0zq19H+DmoKras7L+xTBP6f4fprJD0doHT3/Snnvf3d3EQZK2Rdez5NzAHyoCxJ/VCS80wiX0jHmJuHR2aTge8yNinDrCraLD0LsgQgoAmH2CLBga3K9DLeGeyAg4x5BPzPzeU6TFcoLoPWQ0nBGc8Y//Xjw+TIfqEbVI2OVl9hrKurjEkJPA9sVX5WIM2Gw8IoxZwGEdoP9kDLMibs0KMtJyaGJDL6w8n385bI2oShodPQSQFMUjvJcoUd4oPqf+/XLHaMGjPcdgkWFsOTx+9Dhka4W42uQl0MPDI7K05kjEx/7Uch0EqBmQsERllDIQuBBSh9IMsaagsFFo/J3+prG0bq90NYwNjEahEIazmBfnF6MWxqrUlILr+4WD/lUKpJOckwR5fj71iWUVK8X55rV1kto+i79oe3zWSsVsW4fBTE5mqd+KhdB6/jepgAJc+q3abEQ7cj2aoLIyz9MTnDeMmXCdAYmtVtYjlIxTcXIqMk6OSf25Z1xfanqwuTnFKfO4XfiR8BD8g3bqPTdmpVcJ8JvtG0ppKVWKieEcqlTxjShyew3Xfzo8NHko/yo+/vbqArnQ0MpAtlSrfXTNFZgG1gpfm3pguGwOHthGVZhTHlaXzr55hhJgsqG59ltzecbpFKpOQWk1w2iGiaUpVKV80twWE+O5usxerk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aBV49OhPYjL9xaklOe4eXJ+E6R/Y18NkyMrzNZrGBC6vDcCq2gvmFwgKqACC?=
 =?us-ascii?Q?IOYOXNQEKiQYmlMMQtwTRDY/yKGWhTlOeG7IIIEgfHFGH0NDgIBV0OFP15BO?=
 =?us-ascii?Q?aZNtS2atfdfqLAbLujvsWvqeEu/PdGP74DsBFcj1hy6TVyg3wueZqS88ESLg?=
 =?us-ascii?Q?WuMryxYGuRrjfOWyVaHtgLFlCkp+6iEjTG6MTAyXLmnD1MtLIXa6rT8Tg2+b?=
 =?us-ascii?Q?vXbhWar4DlG+TsiZ+BAydCKkSxNWuNOjK5vKMykgXv61c3YSwsTu2+jHFD1P?=
 =?us-ascii?Q?2KKokvhaCUv7p2fitN5UCtawXrwYRkFiU2j2g0YgBFTdO/xT0ECoa3vbxwDx?=
 =?us-ascii?Q?PDAJAaS5MRPW7y4+lwkfXHUf5V72RxbaC35YqU9GdMRIJummOER2+bU3YOew?=
 =?us-ascii?Q?vmAgmD0+UNmiOtHoen7hy5EGiSKcm77Wxt+HA/hnNAjsfOBxtNhAO2URSMxH?=
 =?us-ascii?Q?3ZE5GnT6iQBjnpCR5cnAfesI0unU2d2OLsLEfoYMWOiUHR4bldyxAqi/t0WD?=
 =?us-ascii?Q?L7Ix3bWzzA5fQDYmwBHDD/kPK4yJhB6JPORZnZeT9rl+WkSI2GEjNEdGLfKg?=
 =?us-ascii?Q?LiolpXyvZF/4JwglhYzagnMBzQmoqMjVqmb/9DZ0B+VUaUEuaJxtGTu3Z7GW?=
 =?us-ascii?Q?cvwHazlgPmFw8fEMSlb4mChfLMtkRBMxADcY5lYBJwOh33Fjt5n3Bud4/ESZ?=
 =?us-ascii?Q?zShzxk2SyfllO6oxHdy9NULFpY8rA7QOaKa1SD7xsrIr2VSfFjt1aQIqrQZ0?=
 =?us-ascii?Q?pt8w2+J4+IHgu/E/TrAawxcYfoRl2RZOMhObn44NkE3X2adebNXLXlHcKzGb?=
 =?us-ascii?Q?ltJn8ZC0mwxMes2fsnEL+yYUYo2MM3k4+3EElhqnzixsr/Wl3xklTT/2MFkU?=
 =?us-ascii?Q?wKU7Y7mFFGf2WzjE+hHPcROJI1NO66Km91yWJEoXi08qK4Tppl2J04yk6ETa?=
 =?us-ascii?Q?cciJE6dkzWEjrdbcrBuXfGT2YZgKr3tF0aTqMuBxohg0wXYO50ntg6BAE4R1?=
 =?us-ascii?Q?yTtvWLMKTKQ5ixOJ+o4N1y/DJRuCDPbvx6w5Yc0ccssjT9AkecT1i0gnsEkF?=
 =?us-ascii?Q?BN4KG8456/lkV8I4cmrLr14Zxj8I9Q8MTZmi0AsdmwXmOLwzdXEkOphpYHMS?=
 =?us-ascii?Q?xF9fA0djoD19ku0vA9DDhO0KAbD2kUHJ8zVoO72XIS9RcGyDgSQRQuyKbwoS?=
 =?us-ascii?Q?Jq2Hm4hyRsfEykICqiQ3RwMw9I6CZCBD07wIyxzE5O36pw83/NED7Zf3+9G1?=
 =?us-ascii?Q?OoS2JEjd9eJUvHnUWSmBPhRFUpcBdc9ZGuWUAuCwshiOZf48dCuItCXyvTZh?=
 =?us-ascii?Q?huAZCvC7sgEZW302K/hS8hF2IFCi0C8noNKq33kSaWX3QhDLJuy8DKpI22Cc?=
 =?us-ascii?Q?kl3W0ppQFKH1yl1YXmsMc9252yDwnc+x3xxDKCaZ1R9mI8N8kuTM5DCGS+t1?=
 =?us-ascii?Q?LKtPgyBlUNywrxAvb+L+NdLmO/NO7cHOQJOfjsxR/RmLuVj9uiXBKRdo02OI?=
 =?us-ascii?Q?iKbKR0ufoceyJbcRp3QY5dObb7VdSiUbOYiBPD0NfAoNubd4YPHYRFJZ+A1V?=
 =?us-ascii?Q?WvF7mm8XzUBarrNNpVOAuSIemILMh8VBWNbAm8ux?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abf0fb27-8ce9-4745-f36b-08dc4e0f170f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 03:36:29.8135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6dcgwvY/7TViF90pkvQv0ZvAg4jMnGorSjd3Ujj7cpJE64O/EzUkdWn9WpaxdTp8hvAFo4g6MKvhJxDHZN+kMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8166
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

> Hello Suraj,
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Tuesday, March 26, 2024 10:45 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/display: Initalizalize capability variables
>=20
> Typo: Initialize
>=20

Sure will fix

> > Initialize HDCP capability variables to false to avoid UBSAN warning
> > in boolean value.
> >
>=20
> I can see a case where hdcp_cap remains unassigned in case
> intel_dp_hdcp_get_remote_capability() returns without assigning it a valu=
e.
>=20
> Is that intended/expected?
>=20

That is not intentional but this patch makes sure hdcp_capable will be fals=
e when this function
gets called.

Regards,
Suraj Kandpal

> Regards
>=20
> Chaitanya
>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index b99c024b0934..95d14dab089e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -191,7 +191,7 @@ static void intel_hdcp_info(struct seq_file *m,
> >  			    struct intel_connector *intel_connector,
> >  			    bool remote_req)
> >  {
> > -	bool hdcp_cap, hdcp2_cap;
> > +	bool hdcp_cap =3D false, hdcp2_cap =3D false;
> >
> >  	if (!intel_connector->hdcp.shim) {
> >  		seq_puts(m, "No Connector Support");
> > --
> > 2.43.2

