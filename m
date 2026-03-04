Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHZYI+3Hp2kZjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 06:49:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DA11FAF7B
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 06:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483B510E104;
	Wed,  4 Mar 2026 05:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4irwIFi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527B510E104;
 Wed,  4 Mar 2026 05:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772603368; x=1804139368;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JOQnsLLYuzteMepB92ecN7JMW7FJJtzRFdoGWc4FkOI=;
 b=I4irwIFijnNKrNit3SoIqWKHcD51sKgm+31zQJ8H8bd9cDVUk1g7YQcW
 FZlH7QG/b922CFJLChEa95/yt4uXI5wkdIBGIAwWEXkP2K0U1kPYOEbBm
 FVsu1pV2CZAb6+abaYWm2co34N36v1mdWQfBJ6gngSngSE44LnizxI4yH
 yJ9BlTDNY81I/0a24twAaGGqWFG1uNe1oUTWNB9nJALCGp0YgW+1S7bU2
 olPu1sv/Ks4QNnp7bvpsIAtU4VSQ4G7NQ3VbVfDuMoP+RBKem7z3047FT
 /CxFhZRPYQZDakgdNEnuYSU75HIs0ktwXci2t1ynvBjRBIlR4DQe8BWGv w==;
X-CSE-ConnectionGUID: UZtWVVXnRneqcB+c3/ztFg==
X-CSE-MsgGUID: D5jFCPzHTGq3Ni4Fith43g==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="99129649"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="99129649"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 21:49:28 -0800
X-CSE-ConnectionGUID: bb7L1OtMSyC/ulQT1hT3DA==
X-CSE-MsgGUID: FXxRKMqtTjOvcqyIGl8tAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="244954333"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 21:49:28 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 21:49:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 21:49:27 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 21:49:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t96GDa5umxcR0HS2yqkKUI5bRZdNRSxQ5uSjPQcdWE6D7De1/XhdQCe7kKTMGOxrDgvmcS2mmPCAsH8QLbjUitfydfeKvagDYqUEUoJYP4Juy60bwhkaMPaiQyVd2l+QK9Tx66i5i7M82DhsIg38IeMn9Ym7PT2MsT/3nzrLlOx53g3zP1YTaFnbfsb3t+ChQIKuC9i0kp3MetssS2OJyBmT5M/TBHq8PM9lf//ZZ14Lt1YT8d3WX6tLYi0WKLkE5qbeg6zFHyPVjmb1KDc14Iff+F//ObjMaX333dPtXP92w6bH39p2jk/mDsNjMqAG0DkQaRi+Gwsb7xPi/q1e2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qt2k0ldkjoXQmQ6R4urx4erv+aYeale3Z3pIosc6tQc=;
 b=Huna37MGK2kN1/SXBMVRTbuTGLpQDK8jxF4UdPX3QG3UG2QnTCnw//LNp4aHBFbL04n19Wwzg9JMrFdO7IBu1IFqtRg/dxesvQY1T1Y0ReYllIGao+lxursucVyanQ5KfnhXkHztahKEI29s2sYB6L5SAOk3oPHHaSmgUleBei7XJaLp/BU2heWtW2BR5R083hQAJFkHR21T0kzY28UXo4HXdQamxqjJnD0L/vBwWJ3wNJMgMgnoBJG0QkA0lDNX7JbfeXoy/ZftDCcPA6i8J7tycQV2soXEC4F/4xxug6CTc3apIrz9vPgfKE4uU448Qa8csduHxOnkrQnvuGSXfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPF77D28E3C2.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::837) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 4 Mar
 2026 05:49:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%8]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 05:49:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness for
 VESA AUX backlight init
Thread-Topic: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightness
 for VESA AUX backlight init
Thread-Index: AQHcpUAMEnCYLJATwkydhRK/TgGzdbWRyHcAgAD89jCACEG9gIAABICggAAIbYCAAtTe8A==
Date: Wed, 4 Mar 2026 05:49:24 +0000
Message-ID: <DM3PPF208195D8DE8AD240BD7C41488F465E37CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224034526.2730130-1-suraj.kandpal@intel.com>
 <20260224034526.2730130-2-suraj.kandpal@intel.com>
 <1a76dfe14cbc90b4aaec6f0e54b4e8df9f480efa@intel.com>
 <DM3PPF208195D8DACF643E4D0D138F0128CE375A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <9f9be7c4361428b7ccb77dcc04f93b0eda024c8b@intel.com>
 <DM3PPF208195D8DBB70E17DC6764BC5A276E37EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <676746dc5a9fe839e3ed071dee1c8e89174ce0ea@intel.com>
In-Reply-To: <676746dc5a9fe839e3ed071dee1c8e89174ce0ea@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPF77D28E3C2:EE_
x-ms-office365-filtering-correlation-id: c1a03807-8cb1-4f87-b1ec-08de79b1ca6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: 3xsoo6u7rEyvOd+OXKGKlG1jRe239AlZDuwLIRo1l7/lgnCAka40rdCX88eZcSTUugrj5+BN3zGHiCQH+rQzzyfxgP0jsk4F8/M8PLEm/3L0Cszsi0Uqso4+oojfHfj39t/3xgbufoLsFFzQoKrGggAD8E2HZu51O4KBOZMw1lSXksH8a0tU0h/vQAwIBM1PQMY6cTW0Wl95otiiwKybWp27FKFaUAgOjrUE/kYSe5imC0cQQwtrsWk34e7gEh5dVSlLbop0V5KjFYGTTxAM78sGV3xCoN5vFf9L0qFmrg1RADHW0Mp1ca0HyOZsbm7omswzV9p8iXJlBzRj62ZQMKMdmT7I4HOr4P8dc4/XJ+iXyHJ6h2f6wqaRL0bsb28Nunjc85LNCfhEmm+P7m7VkytAdsnDbErrqSmmpP4FwwpgkU032Q25X1mkivmxb1dnEmeaaswozXOpvznoE4Kql+9ziDdjV8hD7OdnzMBQ1Wfv5k859nLNaAFJejM5ee7VO/fAFBEkW/lWUFiQFsj7N9qlvuQv5PN3S3rq1mUzBaaj9com95/KJ6uTLkCBjg2c4i4VmxkobEMcZpGV+wkNaNnt7lNB4Ka0KXm9PZbPwcyV+FHSZIg7yYDEbHRykNYLjEAXERezKnDOgaJbr/+KTsQUAA2iwviGmP7WHYpL7LrKpotx9n9gug9q+Uw2Ti0riDkGAUKwhq/QwE28neL6LtRP6bnCnNn+7rMzR5Zh2RD2jHu3fuUT77XS8f1JJFi7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E9vrBe3nKWOZn84MH9IKAfwUNRr/ldFO3gyUPe8DPllNaUGskaLGNaKz1wfk?=
 =?us-ascii?Q?wBzlXutL9mSMUjcMn88iPn9SlqLA9SFT04/oWqhpYJBuZk+7kbC76si3fNbF?=
 =?us-ascii?Q?/GERQ5Rp+K/GLaver5vUIWjfPGHSG4E3zr418e/fOQxBE7OcFp93Hp5JxIDi?=
 =?us-ascii?Q?ovRDXsMDWoGU/GPVIqlcC5U+1j44Lk7/1FizZ0DfCpGpyCLUR2GijJlLmJ0p?=
 =?us-ascii?Q?pLogfu9IWdZ+pqUrS6JJmQyXJRK0/BIfso2mW4KZaze1cmjhdK1qE20AEGvU?=
 =?us-ascii?Q?i0A59N3nZJ8TMlv6q9HtMIk5z9TbmyGP2P4fOScXC4KjVj0G9/qBFTW5Aa6H?=
 =?us-ascii?Q?0XMifMCOhm/CqL8Yo7jdhAJEuUr0rfskDgVaKFKjnTUqQHmDFuVnE3qA46oh?=
 =?us-ascii?Q?uP5tfabfv1IzchLkut6fxz+U4WCElTmqIKwzcJi3FPLuVr+W2zVz9gXQU1uH?=
 =?us-ascii?Q?rUw0rjy5RuBHl9yGe/NQHNB45x6Pt6hUdcympCFfrlE2BNMwhsPb/ilILSAT?=
 =?us-ascii?Q?G0kusaJZyOP1IXNuM9YNSXTeW4XUCWwyYJze4KHkErtAeUVRXpwpoLxnOWGP?=
 =?us-ascii?Q?V88IJHpWDDUbugGl6uwH85+FAIfMVUJKJ/CxndO8Ll4GYd5T/kWPhuonw/8R?=
 =?us-ascii?Q?4TlHioBhwub3pv6b4WNhik4qPCJL7P8sd/SGtUN6oqVoU+f8U0foWir/AGNY?=
 =?us-ascii?Q?rb09L5BGo19439FO06sPYNt3sZXSvCcCLNyXfgX8ufxhjLLJec7aAxQVbvA9?=
 =?us-ascii?Q?n1VvAjL25ylseWCMzbEBoJS2XLgZi5Cazr5NTaqNO1KBl0C5dozJNhNazBX3?=
 =?us-ascii?Q?NTGLZQ6SWX0/PQ2+Ugq91Zg6o8iYKNJVt0T5I4LJtdd+8Rsgbtn10KmVlzSn?=
 =?us-ascii?Q?3ni0dKu+bFs74HnPOFUylUf9KTpxTHqGtw2EqR8RhlNzwteMgK/SxDImtPbl?=
 =?us-ascii?Q?EwB7G1WSdPJDKozok9ZQgrK09FzUT8kHSV5jrVrxNMGyOeJo1HjLAhCdusuA?=
 =?us-ascii?Q?hAB+RZYvoSe3q9uVt9yiFqXLxoGC/Q/KFkZ93GM3alEqeYdBn5pzdcz7iezQ?=
 =?us-ascii?Q?A25PR0ygwjiuC/Dzp384mzbTYDifCI8BjlEsFR+MXtkY8DQsrx7T2n3/F+Il?=
 =?us-ascii?Q?acFJARljuZZDGgSDhTQXkw4Rc2gwO/9qJNL9+TJBc5BlpsdKyR2bRFkePeW8?=
 =?us-ascii?Q?SWQsFi5F9Ll+t00lNH0ZgwXSNMR/DWYqPPYQTJlOUSEF+bv+9+YWYaI6pHcW?=
 =?us-ascii?Q?wxe/at5cvPH7JKCqOW0UTskBXqiLyJBXjaHeeALioyU+F9HWvThoVA9pYrUP?=
 =?us-ascii?Q?QLvZiSWlG6K5o4rAQMsfDrhLm7iyDV0/vMC7v4b6EVrgrM37GaXYN4BH0iAP?=
 =?us-ascii?Q?CNVl6Y+392qTA586PtsxQl8GAQvUBSY8I/78PHSUFRki3AMR3gheAjhcX/c8?=
 =?us-ascii?Q?uuD4y3WpwJo3fW1mGTOTpalHx7KSUEH/TP3ksrTYouXRlxwL//Segy/IrTgR?=
 =?us-ascii?Q?9IB4NgsNxgjNJuIkr6hqIevyEWLWj01XnHVBeivlA4JfiFBOt9j/6DSNoZpt?=
 =?us-ascii?Q?c+lFpaaM2rkMEy8oTX2gC+MM/giVmniBsZPcfGiUM8NNH8yYguoOgxN13UHd?=
 =?us-ascii?Q?6beWNMgI4YPX6sf1n/0Vy3GZOvHz02t++++wi0ydg2szyvDOKEh/I56mSmhO?=
 =?us-ascii?Q?PURLYojsvf+Gse88eqpIBnQ1yRUab2LceZTW4hiHvO3YlX4DQUw0VcACVqmz?=
 =?us-ascii?Q?l5ezp5e7lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1a03807-8cb1-4f87-b1ec-08de79b1ca6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2026 05:49:24.5012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HszCMhlcSx5irvpNGRNg4PqFb7eyruvqcD9HoJekx9nUBMRFxW9h+kTrLm7HwZWf8W/Qi4l18Raf4GnhtmAaoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF77D28E3C2
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
X-Rspamd-Queue-Id: C5DA11FAF7B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max brightnes=
s for
> VESA AUX backlight init
>=20
> On Mon, 02 Mar 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> Subject: RE: [PATCH v3 1/8] drm/i915/backlight: Use default/max
> >> brightness for VESA AUX backlight init
> >>
> >> On Wed, 25 Feb 2026, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> >> Subject: Re: [PATCH v3 1/8] drm/i915/backlight: Use default/max
> >> >> brightness for VESA AUX backlight init
> >> >>
> >> >> On Tue, 24 Feb 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> >> > If the brightness fetched from VBT/previous state is 0 on
> >> >> > backlight initialization, then set the brightness to a default/ma=
x value.
> >> >> > Whenever the minimum brightness is reported as 0 there are
> >> >> > chances we end up with blank screen. This confuses the user into
> >> >> > thinking the display is acting weird. This occurs in eDP 1.5
> >> >> > when we are using PANEL_LUMINANCE_OVERRIDE mode to mainpulate
> >> >> > brightness via luminance values.
> >> >> >
> >> >> > Closes:
> >> >> > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >> > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> >> > ---
> >> >> > v1 -> v2:
> >> >> > - Let users set brightness to 0, make it so that it's just not
> >> >> > done by default (Arun)
> >> >> >
> >> >> > v2 -> v3:
> >> >> > -Update commit header and message (Arun)
> >> >> >
> >> >> >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
> >> >> >  1 file changed, 4 insertions(+)
> >> >> >
> >> >> > diff --git
> >> >> > a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > index eb05ef4bd9f6..c40ce310ad97 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> >> >> > @@ -564,6 +564,8 @@ static int
> >> >> > intel_dp_aux_vesa_setup_backlight(struct
> >> >> intel_connector *connector,
> >> >> >  		}
> >> >> >  		panel->backlight.level =3D
> >> >> intel_dp_aux_vesa_get_backlight(connector, 0);
> >> >> >  		panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >> >> > +		if (!panel->backlight.level)
> >> >> > +			panel->backlight.level =3D panel->backlight.max;
> >> >>
> >> >> How does this help when .enabled is still based on level !=3D 0 abo=
ve?
> >> >>
> >> >
> >> > Well we keep the backlight.enabled as false if we read a 0 back
> >> > from the DPCD
> >> or the current level state is 0.
> >> > This is to maintain the policy that if during setup we get 0 as
> >> > backlight value eDP backlight is currently disabled (which means
> >> > __intel_backlight_enable needs be called). We then change the
> >> > current level to max so that when backlight enable is called after
> >> > setup from
> >> intel_backlight_update, we enable backlight with max level so that we
> >> do not end up with a blank screen. This is also where we set
> backlight.enabled =3D true.
> >> > This is  to tackle different eDP behavior where, some preserve the
> >> > last brightness value programmed in them (in that case users want
> >> > the same brightness to continue) while others don't and just 0 it
> >> > out instead of
> >> having some default value (in that case we keep backlight.enabled =3D
> >> false later to be made true during the __intel_backlight_enable call).
> >> > We face these scenarios in some compositors during the pass key
> >> > phase where the compositor is still totally not doing everything
> >> > and does not send
> >> us any explicit brightness value to set thinking eDP would have some
> >> basic default value of it's own . We end up getting a 0 from DPCD and
> >> we enable and set the backlight enable with 0 value which anyways
> >> later causes us to call backlight disable.
> >> > In this case during authentication in some compositors like Fedora
> >> > there are cases where we do not get a explicitly backlight value
> >> > till the user
> >> has to blindly enter their Passkey, after which the compositor sends
> >> us some sane value which we then program.
> >>
> >> There's a long history of problems with the PWM backlight
> >> unexpectedly going from 0 to max.
> >
> > Right but at least with this now luminance values will continue if
> > DPCD maintains its state if we get a value back, otherwise we set a Def=
ault
> value.
>=20
> What's the brightness control mode *before* we enable luminance control?
>=20
> When taking over, we should try to read the current brightness setting wi=
th the
> current brightness control method. If we're switching to luminance contro=
l, the
> existing luminance value is meaningless.
>=20
> AFAICT drm_edp_backlight_probe_state() uses bl->luminance_set to determin=
e
> the value to read, not the current mode. At a glance, seems wrong to me.
>=20
> Of course, regressions have priority, so a revert should also be a consid=
eration
> before quickly going for adding level =3D max in there.
>=20

I did some more digging and for aux_set enabled we really do not need to do=
 get_backlight=20
And read register again that is filled in probe state and fills up the curr=
ent_level variable that can be use.
Check drm_edp_backlight_probe_state.
I also found this little comment there

        /*
         * If we're not in DPCD control mode yet, the programmed brightness=
 value is meaningless and
         * the driver should assume max brightness
         */
        return bl->max;

So this was a policy that was decided during VESA AUX Backlight implementat=
ion time. Also that Mode will not be DPCD
Initially and will change later during backlight enable so we get to assume=
 max brightness . That should be okay to do with
Luminance_set case too then.

Regards,
Suraj Kandpal

> > Can we proceed with getting this merged ? Would really help the user.
>=20
> The real problem with quick fixes to help the user is that they have the
> potential to make it a lot harder for a lot more users and developers in =
the long
> run.
>=20
>=20
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >>
> >> BR,
> >> Jani.
> >>
> >> >
> >> > Regards,
> >> > Suraj Kandpal
> >> >
> >> >> >  		drm_dbg_kms(display->drm,
> >> >> >  			    "[CONNECTOR:%d:%s] AUX VESA Nits
> backlight level
> >> >> is controlled through DPCD\n",
> >> >> >  			    connector->base.base.id, connector-
> >base.name);
> >> >> @@ -573,6
> >> >> > +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> >> >> intel_connector *connector,
> >> >> >  		if (current_mode =3D=3D
> >> >> DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
> >> >> >  			panel->backlight.level =3D current_level;
> >> >> >  			panel->backlight.enabled =3D panel-
> >backlight.level !=3D 0;
> >> >> > +			if (!panel->backlight.level)
> >> >> > +				panel->backlight.level =3D panel-
> >backlight.max;
> >> >>
> >> >> Ditto.
> >> >>
> >> >> >  		} else {
> >> >> >  			panel->backlight.level =3D panel->backlight.max;
> >> >> >  			panel->backlight.enabled =3D false;
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
