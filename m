Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EDA7B9C30
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 11:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8E010E1D3;
	Thu,  5 Oct 2023 09:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD61810E1D2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 09:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696498269; x=1728034269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tEWMi44teLbVbrIygcESCB6FciaAuuWx9yboHsHPJuo=;
 b=azPtidLoz0Il3M8RGIBRpOWptFgtpsY3VGUXleXXdKTEqZTQfJ3Nd5Xq
 ieVxJO710mQI8tdeoEjoVUmr6Mxdlt+jTWyCPQOlsS9x9uYIPZ3FAqB9Z
 WyGROjhE3fQ6nMB4t98bQEZ75IiDIUiTBZUUfh2OJ5IqkfAZOlhsnaBel
 KO3kkNd9gTnem7SIA5GtxQbTrdkPzqz4yGs43eWdtgbXjO9CMTFJT7N+j
 pmH38yjdyMbE6Gqea4pVsYBYy6ADNNcO8UejociWpUSbVCsbKDlWRuFO7
 dIJU0p0NPjNJXceC9mSDC0lZiPML758i63cadzzZuahXpZbrozMbUzDOD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="414420768"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="414420768"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 02:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="755363136"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="755363136"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 02:31:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 02:31:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 02:31:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 02:31:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TfMLvAaqf4vRxsQs8YJtZEbhL+QOBBow6i3/3JhJlqYWMSxT2GGvekXOINVoVqmqTHHyRkuQM23bOJoz2nkk2UD/+MNhn40XoZwGA7Y3tE5RPI4GOF2Sg5wSva7wEv8aZjSRdoylxQI8qLJsgx9Fu0qhiULUc8G+2yYoUrpD+azvqzyPC9NMF1M53wJ8HWyJw3RPW03ex83gPuuvreZHAjLwGBsDISbK/6kRHG32wbP0o+U67dT9KK3NHpC5NayiiaHGRInL+XoeKQcBStcZEsbBgw89ir/Z+KNyrZTOVnC/llneNUZT+qpUgAnt6XLMG+hLO2moy3h+53Kwt9xNXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEWMi44teLbVbrIygcESCB6FciaAuuWx9yboHsHPJuo=;
 b=kzNOow4mGUFHKghi2CEvAWfN1qXbCS5a/Ujb4Sy0Zc8hcrZyAQIxK/wbMdORjxgtICfFeA6GqnJ6dAezav4lVw+c1VMbK4HyBKdj7lGfNhJdIwmosCN6QGAOAGxuRoIjLFiObYFr6vJOIoZwuuS3InpTj2EpGGLY3xZ2XMZVpQZ36DJZavOWelRK1E7A0XxTgqdsYuFCGlLiegSBGtuvwE0n/NYSSRPiMYNKBLZyWSKs8SBqFW0eWmD+9g0YUFtswdVvojTI3D6Ul+VWOF+iTZo+1kZh/hwtBiokQFaZ/jpbB0yY9b+U4xX310jkSnGvO17BuF+nU6fiDQ75GZxf3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH0PR11MB8213.namprd11.prod.outlook.com (2603:10b6:610:18b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.34; Thu, 5 Oct
 2023 09:31:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6813.017; Thu, 5 Oct 2023
 09:31:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
Thread-Index: AQHZ91d7tKKexFiC3UuFGnLSTwqrhLA66QmAgAAFHIA=
Date: Thu, 5 Oct 2023 09:31:05 +0000
Message-ID: <SN7PR11MB675054C8B1F82FE42B8A09A5E3CAA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
 <ZR59pREyveKjZI8V@ashyti-mobl2.lan>
In-Reply-To: <ZR59pREyveKjZI8V@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH0PR11MB8213:EE_
x-ms-office365-filtering-correlation-id: 6376231d-25ba-44fa-b759-08dbc585cc9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gJJ7ejEm/uO/ob4jrO8wQEAuf/+wy7fD2dZFGxckdX/MLzL6ET+YtWN9ubnsodIbNekNZlwd59BXFNrwiI8b4+bcvVQZ4bJEBB53ldmAzAtkfW3tyygPpIP21bajxcCZQmO9y3b3rAP5oau9IbKHt8WsJId8OnsZw7wieLJ91syoYoWQ8X0OFd/rQvEUWimLMCuWzEOXv8x06eJiMapB5uQw2Z6priEH7mcUeoaEL+swt4dP1r0z/HtZpS+8NWzwi0zz/0a/lkomA1ZNtwKBQPt8J92BZyAwM9CH2pYW5BfoJg6Rg+q9NrgLXrKSKHR9rpCG+Kjuw7xngON9dzhKC6B8/OjDBv8y29P8QgrpP8y2J2RUQQnJI8w6qdAbTZ6TjkKAkSde83n4hYAy09XREnmjOYT9XUGDeb58cA0yiWunPajVIH+46pWi4r8o17vO5Yv/Xuu8tAnWeTg8ZT3kaZDFIzrbqL5BJwB+d3SnELMbYRF+o0bsDBJge1Hhj28s4O1wPQJTjNzDFMUgoHIwIl57bgaUK1UMLuuaeUyNDNh+hFwbcs1JcH4gLooWnduSSplhCckiXfUqd0gT5N6ecm6epjXZP42thwMZDdspeaKmz27crgmJT9Hxh5qW/k3E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(136003)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(66446008)(64756008)(54906003)(66556008)(66476007)(6916009)(66946007)(316002)(41300700001)(9686003)(33656002)(26005)(71200400001)(7696005)(6506007)(478600001)(38070700005)(38100700002)(82960400001)(122000001)(86362001)(76116006)(55016003)(4744005)(2906002)(4326008)(8936002)(8676002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GXdq6xtqfgk9dSpatNXXlZOVVl2QASU4Dabojg7ES1zUdJFqX5uds9kf3qlE?=
 =?us-ascii?Q?UFN49PlWndy83dl+UZjP74uN5ZBvB9Am/AEPP4nTV0r7bsxzzu9YTG2+w4aA?=
 =?us-ascii?Q?c/0e5WABVMPf10bblfKw+5MFVNPz+O3nhtIi0hbjy5n3XrcJlvHlEQWy5wKr?=
 =?us-ascii?Q?drK+ttlMhXJUv2OnZMenPOIyEDVFKkFtpYWkIkR2Cq/6lhm6myxgdqhr+KGr?=
 =?us-ascii?Q?o+5CeUiO8OexbSjuxiZ113cXQYZGoBqgNQWu+tVUaGI8iFPlPtxXNIR0MZn5?=
 =?us-ascii?Q?mXvUj6+puLwOldxZ8Z5AvpXZUbYU8kmWgBwJhYVoitxbUUmN8vTExAMIuFH3?=
 =?us-ascii?Q?FHJzroo0p2epbz6iO2cQ5AQuoZdHEqs3dwZtwqbQMRv6BPNEBVXXNuWsU/cy?=
 =?us-ascii?Q?eKvSQk2jcZ9luPOpUzB2xFDh45/CroRdEYG1SZ1SIuywWGPdSyZVc7Z8Xov1?=
 =?us-ascii?Q?iz3B5HKcRGNN0f58solVnoM93tLnugHTr9fDrzB9DpRb3hjRvkgg3PjhDzhr?=
 =?us-ascii?Q?RFUnTX0A0sNeDiJqdSNzGw58b6p3Ry8NyCr0DLzDOfCHloZ+jEVwExlqMV8I?=
 =?us-ascii?Q?+HYVkT24upKX864g88TDWSZga/jyw5WYELrhcUcj0Y02TJu5VCm+TEa+n//B?=
 =?us-ascii?Q?ph5uqOqOoM9EaEWKKPm50OGeFEVBupDwtlI7ciCq6KOV3e4s+pqVv1vEF1Rf?=
 =?us-ascii?Q?2gG7IJApOLkJ0b+7jUMzf5z9YwVrppx7OPWnwtVh79YcKGPloz2GHHglQgqY?=
 =?us-ascii?Q?UpB7Uw8w87YiJzTwT+DxTR3zjpzmpxBmf+YYdqsA+9g1oQL01vwxICzi43fy?=
 =?us-ascii?Q?dHTgF2Z58VmQ8jaOvtsv4eqKaOr1QzjH3SUohFtvG8ZKtdDdFl9sTo5ao783?=
 =?us-ascii?Q?cKQyGnBVCArDnjuPIqKapg0JYMvajQAwhA+DAgf9LpudUXi1IvLVZIUworhU?=
 =?us-ascii?Q?K46bAM6Ei1BSYL95JiqTwC6VK9vFOX1Xbk+TzKLi1VkLvgqn8kUJ59Sg5Q3G?=
 =?us-ascii?Q?7z6HZYqaIuFM+5gCs6XUEQUog2XYWcdiuJAncwqS5Errk5aDLB4rippt3MO1?=
 =?us-ascii?Q?Kh1id6V331sXGBJhXUSR9jssvN6dMRbrcVfLIxbi5PHVoBSmOc+gM+DHZDnV?=
 =?us-ascii?Q?FlbG+MKZF9h5+ziuIkaygK6WwhVYmj9v7VPnWbG3vUXihDQuooq1Zlzxt6lm?=
 =?us-ascii?Q?Qyy0Brgm0zK9Iu1WvbrdnHJpQdBGvLCeC7aFW6qJUqPQqZmSJ1FCKwk65+EJ?=
 =?us-ascii?Q?q/3GPMVMmD6XtePmlyOVvsgziPxzyzHYyERp3+BbuomnWwPuXMvvaDnspF9M?=
 =?us-ascii?Q?iWbP7bKaAT3OEsGupNKvavkko+WgoqYdee08jCD+4h8aLYf4lDQk/718r8XX?=
 =?us-ascii?Q?n7huNdJJkc7Vwx3gCkItqlUjQaYVm3s2MeIqtaIRCEwUis7iNlvG7zTCPQ9V?=
 =?us-ascii?Q?25oz0ucZ7nEfQBxwJorEPnlE2HcJmUudnKbzOnKLPt8y6GcMJi9fCndFDrh0?=
 =?us-ascii?Q?bFky37m71Ah8V4hXQ8JgTGzEe+1UAM/0IYCVNn525S8s39tQZv5eo6iDfQFk?=
 =?us-ascii?Q?zY2iyRRyIEEfYgQqvqJ8/oHuo57KCp0+dxLnkKxt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6376231d-25ba-44fa-b759-08dbc585cc9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 09:31:05.6904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /mqq+2APs9vJkYQmEuYfMY+Q0TKGwicojh/v3Ui1KaEU2ZGOWSyDBXizxNOQZ5yMo3srP56H414BeVkoTsbCyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
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

> Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
>=20
> Hi Suraj,
>=20
> On Thu, Oct 05, 2023 at 12:12:58PM +0530, Suraj Kandpal wrote:
> > i2c_adapter is being assigned using intel_connector even before the
> > NULL check occurs and even though it shouldn't be a problem lets just
> > clean this up as logically it does not make sense to check the
> > connector for NULL but dereference it before that.
> >
> > Fixes: e046d1562491 ("drm/i915/hdmi: Use connector->ddc everwhere")
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> please don't leave a blank line in the tag section. No need to resend, I =
guess
> whoever will merge this patch can fix it before pushing.
>=20

Hi Andi,
Thanks for the review ! will keep this in mind in future

Regards,
Suraj Kandpal

> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>=20
> Andi
