Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CFD97E4CF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 04:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644DB10E04F;
	Mon, 23 Sep 2024 02:34:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lICLtHrT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2CF10E04F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 02:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727058886; x=1758594886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hXNteZksmvO8oCn7Gj3qKX5eKAPo+l26cs5FCqTrZ4k=;
 b=lICLtHrTiV4dnRSYq1iPZ9NWVr91/zE13IzLDr9zKnVYiNCxFxz0vgS1
 2rDtDkqMdrCOXFsMsiZgbTgtLg1d3hmXDoPuOD6QxHWcOCxtamUg/ePtt
 YQ4/HUJB+ANwI01JwQzNFjQyK3JWmIcGXYYaT328Ac1WXIWUE6mxFLa0C
 f6d0kVwVKfXNMcPdE+baGjjjMxU+NRKVCkpqDVPPArS4v1ZTil+OJlzR+
 82bEsVVxHfNnAsX3SOJQtytr/FJjIMmhmLXUuY7bHBEm5bh0zRh85j/At
 Px17OTy4QQTcjcwL4Fxc1Ma1POEwjSHqeKkcT9rsdy4/yIrF71bpRgHzO Q==;
X-CSE-ConnectionGUID: 9YWU+JHLQGukNQY2FOwMgA==
X-CSE-MsgGUID: R/iUmLUoSeSBdcKKO097Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="28886384"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="28886384"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 19:34:46 -0700
X-CSE-ConnectionGUID: utN3NvT6Qy6HDrLUieygBA==
X-CSE-MsgGUID: uXCBtLHAS+uX81v9zK6Bug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75475527"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 19:34:46 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 19:34:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 19:34:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 19:34:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 19:34:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xaHCjxi4L9GAHaLamvu+EMFMSb5tpd3ZlId2It9cUVTgDt8/jny5EHaxJyM+X5+RnmhHTi44HEUfewJCq3/CZuYFFCf2V224fSE0AuKbRlBWOIndW6cMBMLynnkVmK7ydIs6ivOSwv0bEX0hZwosMmlL+bxe8i4/HKbmFscil+F/CUIV6rWpMw9R0kDIerz+GgUYgdq5xexgXzUdGwbssuCrwGgkgZpp7s8G2uEuWEpYAbr+A0vU+AAVSY2NJvbotKEEkeHhwhWdkJEFQC3u8BCMS04GseAz02C06k7DXIMzZ6TrFyspwB7FzIUQCRrKzrVYian+tZaLPpz9VrO79w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q9Afh+dW7+a0kVEhYEudw6Rs/mYNYe9KyRJUkF/lWXo=;
 b=L2dDX2YLYf3G2fzaz80EqpfUFHPHdtQGvNOzLa9gmrEAY5BjPTjoN48LqWyTay8vZO49PYeoAqULcA7QsCcC3pE/xR4H3nb7goRRxnp0zXwHH9KIKIO0uBJJOAcH50CPmCSR/x4NhrbtV//ObzQRuC0FonNSG0ku4YpUS4ijaXkKWbVcQlteAQ7bPRd9eneyABeHubwpFR1HQfKpWlU4HmhL4nQ1Mx4n+T8phpV5KJpcpCZVAz5JBt7zrQSYMh9gBh8lxbYBNF2U1/1ZSwjCnnd+QfoH0y5xK9AXBzhFmidGSP/qSGwWhtJwCiuOf856ePZKnOU2EPTe8e9UreHNPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB6224.namprd11.prod.outlook.com (2603:10b6:8:97::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.25; Mon, 23 Sep 2024 02:34:43 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 02:34:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for Display12
Thread-Topic: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 Display12
Thread-Index: AQHbCMIWoFIiF1MosUeVv5npwsQDYbJhNeSAgAN6XuA=
Date: Mon, 23 Sep 2024 02:34:43 +0000
Message-ID: <SN7PR11MB675088FB74C96BA76113A0BCE36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240917052307.760662-1-suraj.kandpal@intel.com>
 <20240917052307.760662-2-suraj.kandpal@intel.com>
 <20240920212607.GU5774@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20240920212607.GU5774@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB6224:EE_
x-ms-office365-filtering-correlation-id: 61a3e92d-afb7-4b9c-7f61-08dcdb78480c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?lFKD0dUXnzCqZ7lbajOfnoR5rleijaQKS/sJ0jH39nMD+GBMC0vQa0D3zrAa?=
 =?us-ascii?Q?x7dmlbOfrnG9Ig0Uu1dLQzNoi6wDqZe+BrEQlWT1uDSXtO3a9jD0vnDNni1u?=
 =?us-ascii?Q?IchAKZ6MqmhMK2kKQqN0Lg3KfipwFLE41EjMNn7EVIsrFM3h+qFlp6piYYgG?=
 =?us-ascii?Q?bxCwHOWssDAJU5EswEAFIgcwDQduc2DOX+O+k0uTnPLOBuLF1/ycpSBm0rky?=
 =?us-ascii?Q?zcOucF/rVrDC4qA++PT2PQf1Dfnax/GT9ikKEJe2TO1iJe+ik7HvVVHFmrNs?=
 =?us-ascii?Q?GNYmFEXjN/t0kwD6Zi3SZQNUAd94QqIZ79GG2obOPoGS0efSXQEVba9yKaCg?=
 =?us-ascii?Q?paWxt3A45w6S9JcJTNwtmdmAYq24E7YCYoSSW2dLbPokDp8dZFjMm8eqJa+L?=
 =?us-ascii?Q?l5Srr+Fgdww5/Q2OOuB/+7koiFnv3o91eZ91RDH4MMF1I4U5fMU8C3TnRZKA?=
 =?us-ascii?Q?Nl3V/tWi8ZQUAJaT5ODXxikqJKgRORxCfF4rK+04Qfy9FjJYy5qcdr2q825e?=
 =?us-ascii?Q?dOyJ/0MONhyQxyGxuOrtoB/w4cNiCKLefieiWhX4bEwnszPckzuNnYYL+f73?=
 =?us-ascii?Q?LqI01F69+Cj5sDDdwoO6G4/MDPPMVZRaeF7iZmkTtmUZPoIfpiHj9JPh8+O/?=
 =?us-ascii?Q?TxyM3C2dfuOoROGaztspJfd7adXFhW99JhyGesPIjDFqjsp6cgc34mx5jaAi?=
 =?us-ascii?Q?bACEcMBa7s79As9BEBEG3EuJIlB8WRbwpLSA5C5R2l48ykPR5I/F5exiWA3Z?=
 =?us-ascii?Q?zeogKuIcmd6EewPSRsm3AQfy07wPc0oy+H5O6TdXlW55HrCLkNbqdGPDl7rv?=
 =?us-ascii?Q?JMyIkKUezNNHDj0XS7ULk5FUH1A/tSUgWDnSaTVnqTeldKlU7iDVCfKfH00N?=
 =?us-ascii?Q?L3UAJhhWeQ+bgRXy70feh8PCcJGK11/cD6tWByP6HNaKJLGbZOC8iIJiyfza?=
 =?us-ascii?Q?BErjsO6WdgP/qqb+DvxvQlmPHcK3fajiK6gVDrcRcoXTOOxZEYnPbdDlOKuB?=
 =?us-ascii?Q?fO/4HMZ8H7gvqLmUbCuIEzEnJd2gyz5MupP2TP5bpRF63yzChA+gtoIJq4pb?=
 =?us-ascii?Q?z1JqXcJdbwA3yuJCPk2RYyithLrRzf7zCL3CEFSbnMwOA1iJP3laCR6YBacD?=
 =?us-ascii?Q?okbxWOAfpE2tFn1O6wd8RtbS0XsqovjzduVtNvbmEkg6qQtC+Ix9foHYzDo9?=
 =?us-ascii?Q?FYb0NawY7gg6rewn+jVff/SlCzLd+HK+D76SPP+wZ5tYV4g28X+AsrV6Jt0g?=
 =?us-ascii?Q?nQY1Pa8FqdosEds1yovSbuodgrIh4y+LP0mLfTczpK1Q/oc/qzIBXWDd/np/?=
 =?us-ascii?Q?AVuK0k33Qj9e1m96kIxp5qL8pOyoewCHWRFhgpetHym/S34XnDXpexEO1OVL?=
 =?us-ascii?Q?E04i1wn9+E1UafucucsfOPYWxVmewforHKn5D9tY8z96JlG1kA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b3gG1cfbov7djVXi0/rK1kapsgKRGNY4yGYuCZJDyK+iJOjG7T0YNA2Awgvs?=
 =?us-ascii?Q?LDFI0TWuiKUzKKPKbkQUhAoOw30qGo7b7G9q1mkLcisP63jjj4KXzdB7+8Wy?=
 =?us-ascii?Q?IJhWU94nQHNZc6BvjgKURB25Su4k6HxpkxzU/JQGN0LY12zU27Evy4ke32rm?=
 =?us-ascii?Q?hDoV5SCt9eJ8DezPEtIzEx+gOz/Zv/sWNt6miMRDdTosu4IS0kvgaLomhqXA?=
 =?us-ascii?Q?b1BWo9XNUlIM6MUu1d36KORsPNjECVJiMzUBrdD9Gr0sdJkm8hEWNrqFVxyN?=
 =?us-ascii?Q?xFsYxjm+gIBCRiT53BO8pQ5C3BiI91j315z93NCFhGEv6DTuKDQpwlbcy6PB?=
 =?us-ascii?Q?q1zpKt3x5x0JOU2GVFFDjTEZNm1yOZxLglIDlr8l1LrIPWGzQ+XtX1iKsLvi?=
 =?us-ascii?Q?F/pD7b8zdVEwWuP19WVADntPbk9+daFJaZfDpYgPfwd5PkOEw+2pvOJnYYMK?=
 =?us-ascii?Q?wcEUJkqO2wyxqGIYQqNjwpUbf5SqisOAuReUtnpQJJVkrbGUIPnIQ+cS0LfN?=
 =?us-ascii?Q?9pAfRi/Yj54b2irchmhb0CQOPhAsYwbLBHeMZpeuRZH3UMYsKRd49I4ZcLp2?=
 =?us-ascii?Q?L6MZ+4Q9p09HCN3l/2hMRu9Jk6OhhPQFNDS3YWKVRXEotrvlI64QRhErQ1O4?=
 =?us-ascii?Q?bOSB3rwiGK2EGcO17Yiz8IrlqJi/mr+Kay2u2J0oJ9hAc+panrMuApm7l1+l?=
 =?us-ascii?Q?WWEh/rHrLq9Hsu49xdCZ3ZwYraQn+30s00gtoTBN1T7giuKiTcs9dqsis9eD?=
 =?us-ascii?Q?trHENW3akd5q4JRfRrh6pB3w243KmgyWKS1ruK486k9cylrf99qUfAo9T0bk?=
 =?us-ascii?Q?YEe8dEPJ1vLEG/4svRN0JKnCWzRU65LKL/N6rH0byChCAE/jd3cbOHkbB2BN?=
 =?us-ascii?Q?PeoUk9x5dtHrhB6PQCzYYxncYx63xAuiRm10mYASp8Hglsl2KqUL/DxvInqz?=
 =?us-ascii?Q?27ocpMR8l+7qa4lbQsRy2u9AVdHKXclJh98DXS6bNJ9b2SsmDaBjpHZgblPy?=
 =?us-ascii?Q?xQZushkx98dmZf53+yJyJb0iG5TDHvlfTGiGLpt/M8kSU8Vc1CoK4O/VMsZg?=
 =?us-ascii?Q?99C0sH4nRVPm/gpOM4Z56Q89bOkZZG6angUZ1LXbD9h1X67sB8Z11yUxgG6E?=
 =?us-ascii?Q?7nvlZSIRSSY62pCuHmUUEj5DfTYQtiuZjXQEP27p1vUjuGZj1Tq8w+vp763t?=
 =?us-ascii?Q?5jV5OyaSRBqHk2xMjMVvsVxnGKnML+5+LgflxtMMJkNHzE1JFsEVv0+gdRQZ?=
 =?us-ascii?Q?JQ+h9q4YLjYB80qd4EEIA1i3AzsNpKeE0WRT370nx2wh/lz+NHkyQv/frlSi?=
 =?us-ascii?Q?Yw11QuSN7bcVhRhaHVu/LWzlyMZ+CYbQrKtZ5Kxpq+DHXYhDKLULz2pwmswU?=
 =?us-ascii?Q?qb5ji2Uiz2vEhImt/uB0gZPEYatLqTy6t36beIHAhY1oVsjn72+0g/i2UxqO?=
 =?us-ascii?Q?PG4+lNGOMT1XWu24BOarUhZp8rcZk6HGZ/mr9qlwr27Xad/FUktXMHnI/HJu?=
 =?us-ascii?Q?DmpZol+j291FAvobyHEpiaIU+XltZjxFXnt+jExU57lvOKrsNizQbyAUoDx6?=
 =?us-ascii?Q?daiKQdLk3rMzzC6Nsj8zjjE10FHMusb08nv4Z6Jg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a3e92d-afb7-4b9c-7f61-08dcdb78480c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 02:34:43.0898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1bjs8YWpu09vjb44XPTN312ZJNTzsHIJwiIuRn4HXFiLn7+gDx/rlZdqwD+UcGb93d/I9Yesvb/XcFEYr2Jc5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6224
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Saturday, September 21, 2024 2:56 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
> Display12
>=20
> On Tue, Sep 17, 2024 at 10:53:06AM +0530, Suraj Kandpal wrote:
> > Reduce SHPD_CNT to 250us for Display12 to implement WA 14013120569
> in
> > a alternative way. Its not what the Wa asks to do but has the same
> > effect which would be detecting shpd when it is less than 250us and
> > this would be okay as it lines up with DP1.4a(Table3-4) spec.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index 2c4e946d5575..05a9e82cac75 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -849,7 +849,12 @@ static void icp_hpd_irq_setup(struct
> drm_i915_private *dev_priv)
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> >  	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv,
> > dev_priv->display.hotplug.pch_hpd);
> >
> > -	if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
> > +	/*
> > +	 * As an alternative to WA_14013120569 we reduce the value to
> 250us
> > +to be able to
>=20
> If I remember correctly, when the SHPD_FILTER_CNT programming was first
> added in commit 4948738e296c ("drm/i915/hotplug: Reduce SHPD_FILTER
> to
> 250us") the justification was that we thought it could serve as a cleaner
> alternative to the steps recommended by Wa_14013120569.  However when
> it was later discussed with the hardware teams in July 2023, they said th=
at
> this was _not_ a valid replacement for Wa_14013120569; the steps given on
> the workaround are necessary due to the specific nature of the clock sign=
als
> on some of these platforms.  However changing the SHPD_FILTER_CNT value
> to 250us is good/desirable for different reasons (to align with the DP so=
urce
> requirements in the DP spec).
>=20
> So as far as the workaround is concerned, I think we need to either:
>  - Go back and actually implement the workaround using the original
>    steps the hardware team settled on.
>  - Decide that we just won't implement the workaround because the
>    recommended implementation is too ugly and Linux use cases aren't
>    suffering any adverse effects by not implementing it.


So we wont be implementing this wa and ill remove the reference of the wa f=
rom
Commit and comments and only keep the dp spec reason for implementing this =
change

Regards,
Suraj Kandpal

>=20
> Either way, I think we should avoid mentioning that workaround in the
> comments here (and in the commit message) because it turns out that this
> is not actually a valid alternative.  The justification given for switchi=
ng to use
> a 250us on platforms with a TGL PCH should be focused specifically on
> alignment with the DP spec to avoid any confusion.
>=20
>=20
> Matt
>=20
> > +	 * detect SHPD when an external display is connected. This is also
> expected of
> > +	 * us as stated in DP1.4a Table 3-4.
> > +	 */
> > +	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
> >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> >  	else
> >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> > SHPD_FILTER_CNT_250);
> > --
> > 2.43.2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
