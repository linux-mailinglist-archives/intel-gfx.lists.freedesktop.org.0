Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BDF6B2C69
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 18:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA5510E1CA;
	Thu,  9 Mar 2023 17:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3EC10E1CA
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 17:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678384541; x=1709920541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bwC2JzmGTJmDYUzP3L6Q0LWt/+bcJirHItqC7V1laWg=;
 b=oFWgpsCGJMnnN0ySsHYgPMBOIRhef6Q93yJFpHKBWzH2v5tUcZmDWhmH
 y5m2w/BNmp0zu0YqvjS6lTC3rPZpmrtvLW95QAc3CgqlZmqNZIDntFQGS
 1FwfGO6lcJbYZvxunEeVcskP831PwaqhVRPhLiDDsM8ZDM/YEtRo5oSWy
 yDxPq9UEdNqfgIkFRp2xhMlQwMxMTHmO38/A3m2oNf0hq8GhHTqfADiVp
 Y7+ASqLKCeZAIPTged1JwH7VO+7zirPtwlSHjWbaFYLNz6vXTodFMI7Vy
 aGC3XoRY4KVH2obGQsSM4O/kMW65/XD1TxJOR0hiAfR7H7TR25a/7MeSz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="316911905"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="316911905"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="851583805"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="851583805"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 09 Mar 2023 09:55:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 09:55:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 09:55:40 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 09:55:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RfLkhjZiAjLK5la+mSgE51VulWt+WWvuCdIRxXyelAVLx/KzO40j8s7WIj/v1TBwkXRGG4gA2JMHUer540GjPoKR024AXh6Yes6Wv6TpcXWpnKk6A5ipSr5YpOdsZD0mOYbMPet1T/5yODnsM+q2NP/2uLIWi3o5blt1MU1wwUbXuVWP/JyQlz/4FZxDYjSaUvnWNaaKVdNK90QayaczM2Ivri4qaYFcgwgwpnsegYHdQF9bfwirVjvMIAxJV8cWu9fpCBwbaNwe1lyx8EkRCOI6CEJJOk3CgDPDxovICmfWydXQ/b/OTp2ETSknfJtsQOI7Im6kcDNOzDgjsGFHJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwC2JzmGTJmDYUzP3L6Q0LWt/+bcJirHItqC7V1laWg=;
 b=E2VqBRXznvfhTTg6+W7P4wnk5m2Spx8Xzeezp71Dbkb5m2Xdp/BoUY6+Q5WtredQuZYuVOzshgFGqvH3xeAlRfIzs6fGJIEMWd2SseLYxi0pAHfeuM4iFHnwDy3Mi5OKpB2f1XUeAajotjPnmHxcWDa6v01ZVDzWGaJlPakM8ui1O9F0TcAYNLVvxKCs95zCJBaUYycmhQu5KMObp7KCtnTh9Y9llnfG6qsqxM6qKe9O18DlAXSrdmnraBI/H8e+NoX5VIUKUCAGneTU1IgxtqYIc3lBPNndjJGVCNQJJCB6zOtH7sps6frRo3x3sM3c/RwadDDuQ2eNsqVVLQ+Y2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 IA0PR11MB7789.namprd11.prod.outlook.com (2603:10b6:208:400::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 17:55:38 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810%3]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 17:55:37 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 5/5] drm/i915/display/mtl: Program latch
 to phy reset
Thread-Index: AQHZTHoR4gh+3QGHBUaXX2FOufiSg67ywDyAgAAHU6A=
Date: Thu, 9 Mar 2023 17:55:37 +0000
Message-ID: <DM4PR11MB59712F180912F8B01B1BF5E787B59@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-6-radhakrishna.sripada@intel.com>
 <ZAoXS4Udeh8bVmgs@ashyti-mobl2.lan>
In-Reply-To: <ZAoXS4Udeh8bVmgs@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|IA0PR11MB7789:EE_
x-ms-office365-filtering-correlation-id: dd8c220c-8246-4b9e-3552-08db20c77d67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iZG3pFWoz2+4Qh/8czlGdIONgV6r+TyjCNW1ztq0xVlpMBZbitccI4/JWwcNNqb2QspdRhycVWFRkJHrP3jecoPLubv7EPJh00Ueof7hk0ZBDu1xnZ0Zja1Op7DkJ7VrnR1EGPwQDfFWy53CdUrDkZNuT0OpM7Rgp9cPG7oKb5ZQMKyiAABF312VknBqA8ooBJJ+A7I+Lmt8WOPJ00Yq6L9Lm9eyhvGqhS+FeeFLnY2AH/QAUQyiGksQJ+Ya2KlewqP5fRI+VdwwITIOnKWYoQpcpdSY4wO/2WarLNNansnX0HkqUUngJVH/WNgu1XJllcJHpWZO/Uo+A4h0xtXloj7sISop+5RQwm4AYIQAkRIy1zdQAnAYTfO9192dszVp9hF8qnKn4iDVVhtyPeNKR8xqW4Tf1wDXjfzZC9rv1Rd09bnGnXcdHRTUEm8CFqdwwhfvcTRlA3YaQqtYcMGTQUjKtqHH8oS31AdQA1txW6cg19wi2FFdJb5boQaTdW3NeRah3tVlCTx74mBY2doaHeQqg/FexylwZBbH8KLUi8N4JeBkv8xNIige4ilt51d99Ka8zyZqkoLhkhD4yTGPrT/K+qXCd22Yf+N+7wgWW4VyhD5KR1rxQhwT1+nEJvaD/CX6b1xpXkTYKyV7H5M6h1DKg8WOY9zZMbtcwE7yd2LetgX9arsKF7zVaU0G1s5nXWd+aSc5X4AH2fcp0puyoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199018)(33656002)(9686003)(54906003)(478600001)(5660300002)(316002)(71200400001)(7696005)(52536014)(4326008)(66476007)(2906002)(8936002)(66446008)(8676002)(64756008)(76116006)(4744005)(66556008)(66946007)(41300700001)(6916009)(6506007)(82960400001)(186003)(122000001)(38100700002)(38070700005)(55016003)(86362001)(53546011)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?dl5d5eazipUvlOK551i9iNXOenMUvaZIdUjlbMuiiDWezAycaFh1NSm0Lw?=
 =?iso-8859-1?Q?lqkG7Z9SG4nDslUcCElfP4U04IHXCh5p16+Xv9e0ebL6XSvN0Wj/vakmgm?=
 =?iso-8859-1?Q?gZyjPfklXxRScT7Jcp7d9HuCFNtc6AVRgpVlMLEu2p+ZV47kcxr7eZtWpk?=
 =?iso-8859-1?Q?wLrlY4B5/+XnKwSrqosIZ7QCPoa95XFTzdG66VQ7sDKipMe5Znj6603orn?=
 =?iso-8859-1?Q?SR/o0jkWl551fte4DxJYAFA7J2LwMbmQqITYPVqUQJ4L+fFbMDoq2GxB6V?=
 =?iso-8859-1?Q?aZI7QLjimDovOO842UjGM7PgoQh45+6HWgAUvnBnpETMF5ro6/QFWPcUUX?=
 =?iso-8859-1?Q?A4obce5dVUp8ekoabvLvQGRs2WigZLBkEoIO1DUnS13ARjsU8xXdfaGDzc?=
 =?iso-8859-1?Q?zUvU95WIhj1cH4S9kN87iLINuBMzgFrSBtXAMz56VPj0gGQXBTX/b8Tw47?=
 =?iso-8859-1?Q?ur55FFX7Xju7nbz5F0RBRMTrWjBtbch+TOozPkM1BaFrwNNNwiqCxYVoee?=
 =?iso-8859-1?Q?r0gHcglKn+oPJWi/owHrlDy31bcGiEwb+a2B5edeQ3J4J3idPptm5KtVbp?=
 =?iso-8859-1?Q?xHR+UYf8UCso/sLzbmVyWDW2S6UdqSFUl75ZeOavUquohkgrti4zSqrTJh?=
 =?iso-8859-1?Q?HEasxhY5mkgfw1QHaeAeangL2pQNZr6SMuUZ0O0dmCxO7G7fKf2aiJPtEf?=
 =?iso-8859-1?Q?k8L0fXGSMze19WhA8ktjLe0oubs+2sMMRYxgXQqOYKOlB5CX6oIiyJ3UJS?=
 =?iso-8859-1?Q?uVb9y4N96OlCtmZzYpRCGKx1RXhIlxMcct2Q6gl7a6r7Y3jfr2G3pMRZ9p?=
 =?iso-8859-1?Q?23fnrigtLA3iHlupCkVVv+FkfLvw974pw6e1lxbd8NhZv7zmnoHed8RXa9?=
 =?iso-8859-1?Q?dBfbTxHQdK2A5t8tKyLvKKYQ3bJWzBvdQWRs+xg69VXC8ynVpzsU58xzEn?=
 =?iso-8859-1?Q?Ol51JfXT05L0PcBt7qCJJAcpWoLEeDrjBTMcyzMg0IHBeDbuntbdj+bLMD?=
 =?iso-8859-1?Q?ZVVE+O6ndUDn5NzexI8Vte9V72K+6gVfj7aRU4P778nz1B6U8fHwiH6ktS?=
 =?iso-8859-1?Q?JGkmk9cCV346bxwZrWEpUjm7qw0Upfixx6sbK12EE6J9a7TUKv/JdqLQli?=
 =?iso-8859-1?Q?CyZjdoD0NJCHrYGAtFy9urHMjXcP5WaBQ+6JYSujjfXWUpifxCTXywzTTV?=
 =?iso-8859-1?Q?yHcn49J4WEzuXTNqGg0F9XFeGIViFHYOPpDDxloyxij4ymt9HZvXhCZOtT?=
 =?iso-8859-1?Q?6bUQyQYVEVKD3ZWGgGtXx0gZm874nbj+3rn8WMFb7vyUf2l09Xhplh/GpS?=
 =?iso-8859-1?Q?/Sqo8onSRffRjyKFqy2unaUJeibysFynVM3DDvVTulRYb2WPWUipdJVjhC?=
 =?iso-8859-1?Q?3ksEIp7SV0xIx6rQv6gcqpy0hzp8Sh1XIYGL5aoryT3HgG0Q9T1+toPOW7?=
 =?iso-8859-1?Q?BuFQTs8nBL3mD1TohylsWZ9zx0Pqm6uWiTtonZhqqh3Nsg7+saOOIjknvO?=
 =?iso-8859-1?Q?47O+xHXiL8zvwgA26pq6VhgnnCrvEG8832lYY3FFPhrMmoz3pTkH7+m0ty?=
 =?iso-8859-1?Q?TanpSqF1VLAVU0wNCpjUx/ambkXrY1QQIvkssokA3UJdWM+CxBmctEjjVy?=
 =?iso-8859-1?Q?dwV1wap1r6dL15kZuE3eIXl3XSzRU0r/ucCPw534BA11E8N4Ul3OPdWg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd8c220c-8246-4b9e-3552-08db20c77d67
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 17:55:37.7241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ITsu/AS6Cx3v/EAJm6Hk6OLSfeWaAEXK8dh8fzcRRVe+s6tG1WLkDtDwXG7utEuj0kXrSSuKjnuJhT4yLr3c+ERqs6JQXCyIrMl/tKvU9y4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/display/mtl: Program latch
 to phy reset
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the Review. Pushed.

-Radhakrishna Sripada

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, March 9, 2023 9:29 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/display/mtl: Program lat=
ch to
> phy reset
>=20
> Hi,
>=20
> On Wed, Mar 01, 2023 at 12:10:53PM -0800, Radhakrishna Sripada wrote:
> > From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >
> > Latch reset of phys during DC9 and when driver is unloaded to avoid
> > phy reset.
> >
> > Specification ask us to program it closer to the step that enables
> > DC9 in DC_STATE_EN but doing this way allow us to sanitize the phy
> > latch during driver load.
> >
> > BSpec: 49197
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>=20
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>=20
> Thanks,
> Andi
