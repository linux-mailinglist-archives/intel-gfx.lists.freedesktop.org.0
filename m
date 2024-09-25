Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498239852F8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:33:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E387910E7A5;
	Wed, 25 Sep 2024 06:33:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DJF8dl5R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DAF610E79D;
 Wed, 25 Sep 2024 06:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727245982; x=1758781982;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DQGxHl/ljwL4os0YC0g09rsUqTQ2VQvi6cX2P1M8BIw=;
 b=DJF8dl5R1TkWgpT9whuvqbvlvBqVJUstAJCXhQLHET1C6OT49kfZGHrU
 pimFFGHRFP979XyafJB0pinuYcnO8JTSTSsuqw+n40QRoWh2QGPPYOMlU
 dKO48GAaJ847sqqzD/gtfpXt4FyQ26q/rvqnZnJ6Ls8puK/OIYgpYrPMs
 tPNbVMfiVms9gt9DrYa5U+5emG+jxtgoshFjgjgYnC/mL1JovRN/QOODt
 kgqmjxoTXjDKgTcibu/tix13arkM6/DfAfzh52DSsxnNwM8VtWvBnM7Zk
 IhsPDbrsqt44X8ro+ENL7LxUZdzmIldIsHAVfsjFTBS2bXnFdh9tH3ABL A==;
X-CSE-ConnectionGUID: 9E/S1Kf4SKGznW20WG2scg==
X-CSE-MsgGUID: CQvbKd9pTS6A3UPU14UHKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="36857980"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="36857980"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:33:00 -0700
X-CSE-ConnectionGUID: fFxB7ZM6TXOOrIsY7yyiHw==
X-CSE-MsgGUID: qxFfq7JOThu7HRx0KBDwyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="76061730"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 23:33:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 23:33:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 23:32:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 23:32:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 23:32:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TJoNsg59lG7kQbmcKeJZdskJUdEke1HxkHm+2ogqOBEV7+rlqsgKY2s+oPQY+yGA2yLec6qAboKhOR1hmGTEmY9fo8bweho+yhpkVDiTzn+sHiYCUN2eH+OHAETvgjbW2QnG34ZvjHvHjKJMMOKkG5IVcmDqpYzc7ASNxX+aYmagbLJWVdzD8eIhAiC+5yPbQofgjXdhqh5r+Oi8YSa9KvODgjKz9hBMJsqo28uX5Kbhi7p1KK1s6eh1IHf9Unfvs8XFgKfdHHnEmcSupsSzk3fg8XqqedtOhKZ3ycQtVC6D1Ot6MAr3Skfs9Ynwerc5zBYf7ipBKCOFKV8UJVu5NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FmYdbhlgY9ZrL9bzL52cC8bvRagL8Dcw0WzN0kFeUI=;
 b=NXxpTTWjReqdMms+KHYlQ4w7nC/B8bgUCYMhZuSHY/pQeE2IRnxIGlZ+3ne6EXNbmFRUsMwOfyDTJQXzbBoIOx+yg8JT8HmRvPHcVvpbQGU9l8hdCfQ4GL8FvYvGBZOCt8i9+siVEDQDMdYTA1814AeIVnknWFNp9nG8Ig36BlMZ9sFwojCJlFJVuidHKPnuZNa+0Q/tOcwRU9tcfHMAHl5FHFVJJJMe2+swktskEeO8odOsMnBddyVrrMx34+PZWn/qD1zHBjA1pQyaMejYZIfiH3XvuFJDR/qoAoaq5Y48ZOFW2R/lWLj/poiHZNz2vlPR4nBkKCl/sJhu6kRtNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Wed, 25 Sep
 2024 06:32:57 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 06:32:57 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Topic: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Index: AQHbDXUVdluaRKVT8EKg1qjYSWDFOrJk9FgAgAMaCUA=
Date: Wed, 25 Sep 2024 06:32:57 +0000
Message-ID: <SJ1PR11MB612910FF505BC0784E574EE5B9692@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
 <87y13i7smj.fsf@intel.com>
In-Reply-To: <87y13i7smj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW5PR11MB5906:EE_
x-ms-office365-filtering-correlation-id: 1e20b1bf-4a1e-4729-3b0a-08dcdd2be523
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6Y3OeA1XYrFv04902ibW/JjZYan6x9Szwiyc73xeWNuPs06gCxhRIC2rew15?=
 =?us-ascii?Q?yfYLFmOinBWYLXmqnx/KZkC1AAAu1POx3R8Hlv/vIsLbDVaof6fUBA9JktH/?=
 =?us-ascii?Q?ADMulmdoAgi5wTyA42uqLqPykho0D8V78ow4iJnBx2YRy4kDdGFyn1auudUL?=
 =?us-ascii?Q?kPpH/LECUOeLBHpF6miSe6aSns55nzZQaiYV1JQ/uM7VrijwxVusQQXD0+wk?=
 =?us-ascii?Q?dCgLN8Spip/OmNDcVxnKQCYrU0ITlNbDLqlmpeGaY6eGSarWpJiBX6SUznnX?=
 =?us-ascii?Q?cw1qX5RMGa0grM+x/PV23AALcP8DrGUI9k+Pm0VO+i8XjXVQYCiptxWbP3TH?=
 =?us-ascii?Q?1LRrn89eAP0P9+PcBZFc69ssZcFLcyEXmz3NLk7WDPnIJk/DmpHexN2Hch96?=
 =?us-ascii?Q?RfKHLvjAAZPkgzahm1Nuf3ibWH7grWCWlUmBgGZSzd0+DZ6H7E2zI/TGbgBM?=
 =?us-ascii?Q?LBa/Q9ADdMkllxrp9OhVUpegu//H/kLOQNqgdH1Ol38Yhbjk2iu6UCjsjwwQ?=
 =?us-ascii?Q?5P2u5svliNO8n5KJHGpjw9tvXqZ4j7KfMbxzh8S//ZQiCtOkvpfWqAEYjB04?=
 =?us-ascii?Q?4zqOHifROcbTkB0MfQyYXw56M9ROXPvRik0UEofxm7P0/TQqj4d44g7Dletf?=
 =?us-ascii?Q?8vTEEZq0FW6Akoar3308ge0kKayWxz7Q/l5GMpM/eCWyFN9IEPpmZNA9vkPf?=
 =?us-ascii?Q?zYANL4JVA/q1YX++GY4jAYMOq07cEiEazXoCsk/kigelPfcU0cZ8MpuBwzEZ?=
 =?us-ascii?Q?7f5soVZ3uind9xwvis2aNx2XMXgYrlevnwzoR91RFqz0woAGe6LT34xXZ+5D?=
 =?us-ascii?Q?07r28SUvJit4Mk0yF60teNvhxBtX+yobvmnKDlhFqPZjq+5Tdl03m39S0vBk?=
 =?us-ascii?Q?8xmXzCB+GegOSjsM5mH3Y1Psf5AbdhyZhpCnBV7aMJ7p8jAGM1KM3qWyoOpK?=
 =?us-ascii?Q?fr8mer1YkcFSIKSOvLX+2vPkdhuwuZt9EBgbU7h7gY9HGKoTk5YfdY/OMz9h?=
 =?us-ascii?Q?yXsWOcG27Rwt47irKpIkDTvgYqFdQ471wwxmN5731wC92/Q8fo0yS/+sr3Yd?=
 =?us-ascii?Q?fvbD7fTXGl/eA0ZvMqXKL6A5Nyu6nyJXYPQpo5Y9+mH6+tAEQYy1lOEodt83?=
 =?us-ascii?Q?hTf+jWg/qI9vD1CP4MHNQ/b5zLe111wbfXDYjhQyfLp4ZfeEKmHQJqgojAwt?=
 =?us-ascii?Q?X0rImL/Xkk2HWaQJAVZzrv4JoTc+8M2PyKNfDGRBvA0fd8+RAlLMSeWnqJhW?=
 =?us-ascii?Q?UkGY5qOFJkPMFzAtB68hewk02WCcJQgdDGEuUlrtOG7l+c7d/FG0dS3BXtTR?=
 =?us-ascii?Q?bZ3TGxpMgbt4Bl4WXgqPz+02bTFWSVmNn1fz1STGNSzcjA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/lSYv/a5b08epK8GLUHiNNVwJYs8uFLDh1PvalW9VhEip6Ov/HJH6eZujPZe?=
 =?us-ascii?Q?/QZ7Ry24q2wDqoBBZn/VAmx6yVlWtk+FmE4CspP/g1fmXQ0K1u++wbfZTiyf?=
 =?us-ascii?Q?XIiJeKLxO+4QygR8+ppGHOYns6vTLtZO5Grk0oENcsi/VQciX28X3mKC9oFe?=
 =?us-ascii?Q?hlh4OhkLjlDkDZts7ZCEndUgwEaW/UG22TGmsAFDO6T8q8V1PWnxwIMBkVOT?=
 =?us-ascii?Q?JWjf97fzHu8H3BktJJHBfaVh35zGCRI0tqAtszPMC4KL5F+gjhuT8RrK+xmQ?=
 =?us-ascii?Q?ABU/a2cjKlhYvcJqNT0PfeDm4/lhdKOaM7Z9oRjlTcdxu0mOmwsSH+No/ADg?=
 =?us-ascii?Q?pM+89b6RT6wfcTIc98Sq6+vT1MzFADRz35uAHcpYYGMDj9gFD2u0AuhprMHO?=
 =?us-ascii?Q?x3+sIQLL0rAFn/IMZ8job/iB3xEuLsa/3w8ZpXrV6J9zY19AFQy2tZpccXht?=
 =?us-ascii?Q?f65//Fq2Xhvy2kLJhq3jQ1rZmblZ71EUw7DH3VpaOyHwUwr4HNRGVH6Ghr1b?=
 =?us-ascii?Q?wi7e8ONtrAapVpKMjaeqBrL4v4HzTKODBeWwh4/A8Vn1/10y76WTrcuLdFVh?=
 =?us-ascii?Q?mzFhBhcTeQbVOUTIZ7dOtaIBM7l9ssg0V158ZWYL7rrlFGymjTGkjmUb5iR+?=
 =?us-ascii?Q?wsKEbKsPOfttE9wG0FWiF69almgz/3xFDN5FE7RSr4DQeCl5cHdUjRhpwIuY?=
 =?us-ascii?Q?torTT0a1zDyos2B9nznsoITB//qd2/3UWbIK7KUK7M7IgS6PhaKGxf13yalV?=
 =?us-ascii?Q?Oiu6YKbXDHhWyhYwGwmaRtIqErtjI0mg9l0ulhisQLjM5rDU/FfgkwiKtEhH?=
 =?us-ascii?Q?NRU4bX/m6On4Il/+J0Y+7qNyJo8x4/YUiXnDX8DgVD8Kg1I/bjikUzvhHyCu?=
 =?us-ascii?Q?9L4Csld/1warmPbPFzyKxTNnOfBZ0s/NkedwPq0AIPXtVr4b1lZDmXa/PrJ4?=
 =?us-ascii?Q?FSGsypI/RgNnzE7wlq1ZSjvLKXx1iyUo04vKYY0GMAsBohK6YI5+fZkUHlPk?=
 =?us-ascii?Q?vBsJtA2Z3ytkcwhs0YIIDxnGkkJAgcJQxz/hV8i38YJLy5yeDLOylEcdg0TG?=
 =?us-ascii?Q?ShEGbNVNtu/tTccm2chnO6uhwgiiFWp5Pxy4jPObzdr/RGWN1wxp2x+vGqnA?=
 =?us-ascii?Q?OeM8jQtoKRsYBVh2zaxDXcMJsY7fGzrIuShxusUB5o9oSjJZyje/8qCt9bjI?=
 =?us-ascii?Q?LQ4p2nx/oNCvik/UbE4Qve/QvVjqHezSZ9NfaYqgdAUerR7i+vuUJXRuIpjv?=
 =?us-ascii?Q?8yGP8UYihE8lHfJDOpmzUaUzPB7pUbtKDc3gUfZWfTurNXmeJ1qDJGRvGh2V?=
 =?us-ascii?Q?GSNPcNDhFo2Pw4cfGxri4Is1g2BumlK2NKtJwByNdZK3rYJ0wy3zm0unVPs+?=
 =?us-ascii?Q?iBhqlegaeTPSnBrTwaG/isYDYS4E7lA2Qd5WQosgFatMGskuG9ktehirroyN?=
 =?us-ascii?Q?cOdjDJOTeCAT6iZf6QLFZHG0pFRECt/RdHHac4awWigxdWrkW1IhwGdq3DAT?=
 =?us-ascii?Q?4e+IYFp7hquy1E9wbPZyomYDEujOp8E0L/7W73LFyL27SsPoafxhhBur//eD?=
 =?us-ascii?Q?H4gOqFTXKs2CXNdKVCBqpiJg8n7rb2U3Vx9c3pUPA2YY/jrrPQFrziIv8MCp?=
 =?us-ascii?Q?VQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e20b1bf-4a1e-4729-3b0a-08dcdd2be523
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 06:32:57.7347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n5QuPIb4EbISKHf5Es+SxcsZsPu5MohKhh+v5XvxE52KG4gLKg5Ava/e7muQr4cMN+261NDykdbyK2GAgSZ42GqCCxtvoY/gUSanh0IoFoY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
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

Hello Jani,

Thank you for the review.

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, September 23, 2024 12:40 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
>=20
> On Mon, 23 Sep 2024, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent of
> > TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> > sequence without re-doing the whole mode set sequence. This separate
> > control over FEC_ECODE_EN/DIS sequence enables us to have a retry
> > mechanism in case the DPRX does not respond with an FEC_ENABLE within
> > the stipulated 5ms.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 61
> > +++++++++++++++++++++++-
> >  1 file changed, 59 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 85e519a21542..589acea9906a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -78,6 +78,8 @@
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >
> > +#define FEC_RETRY_COUNT 3
>=20
> If there's only one user, I wouldn't bother with a macro.
>=20

Ack.

> > +
> >  static const u8 index_to_dp_signal_levels[] =3D {
> >  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_0,
> >  	[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_1, @@
> > -2255,6 +2257,57 @@ static int read_fec_detected_status(struct
> drm_dp_aux *aux)
> >  	return status;
> >  }
> >
> > +static void retry_fec_enable(struct intel_encoder *encoder,
> > +			     const struct intel_crtc_state *crtc_state,
> > +			     struct drm_dp_aux *aux)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > +	int ret =3D 0;
> > +
> > +	/* Clear FEC enable */
> > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > +		     DP_TP_CTL_FEC_ENABLE, 0);
> > +
> > +	/* Set FEC enable */
> > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > +		     0, DP_TP_CTL_FEC_ENABLE);
> > +
> > +	ret =3D intel_de_wait_for_set(i915, dp_tp_status_reg(encoder,
> crtc_state),
> > +				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> > +	if (!ret)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Timeout waiting for FEC live state to get enabled");
> }
> > +
> > +static void wait_for_fec_detected_with_retry(struct intel_encoder
> *encoder,
> > +					     const struct intel_crtc_state
> *crtc_state,
> > +					     struct drm_dp_aux *aux)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > +	int status;
> > +	int err;
> > +	int retrycount =3D 0;
> > +
> > +	do {
> > +		err =3D readx_poll_timeout(read_fec_detected_status, aux,
> status,
> > +					 status &
> DP_FEC_DECODE_EN_DETECTED || status < 0,
> > +					 500, 5000);
> > +
> > +		if (!err && status >=3D 0)
> > +			return;
> > +
> > +		if (err =3D=3D -ETIMEDOUT) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Timeout waiting for FEC ENABLE to get
> detected, retrying\n");
> > +			retry_fec_enable(encoder, crtc_state, aux);
> > +		} else {
> > +			drm_dbg_kms(&i915->drm, "FEC detected status
> read error: %d\n", status);
> > +		}
> > +	} while (retrycount++ < FEC_RETRY_COUNT);
>=20
> Please use a regular for loop with for (i =3D 0; i < N; i++) so even I ca=
n look at it
> and know in an instant how many times it's going to loop.
>=20
> > +
> > +	drm_err(&i915->drm, "FEC enable Failed after Retry\n"); }
> > +
>=20
> There's just way, way too much duplication between the above two function=
s
> and the existing intel_ddi_wait_for_fec_status() and wait_for_fec_detecte=
d().
> We'll want *one* code path with the retry baked in, with no retries for o=
lder
> platforms.

Agreed. Let me try to cook something up.

Regards

Chaitanya

>=20
> BR,
> Jani.
>=20
>=20
> >  static void wait_for_fec_detected(struct drm_dp_aux *aux, bool
> > enabled)  {
> >  	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev); @@ -
> 2303,8
> > +2356,12 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder
> *encoder,
> >  	 * At least the Synoptics MST hub doesn't set the detected flag for
> >  	 * FEC decoding disabling so skip waiting for that.
> >  	 */
> > -	if (enabled)
> > -		wait_for_fec_detected(&intel_dp->aux, enabled);
> > +	if (enabled) {
> > +		if (DISPLAY_VER(i915) >=3D 30)
> > +			wait_for_fec_detected_with_retry(encoder,
> crtc_state, &intel_dp->aux);
> > +		else
> > +			wait_for_fec_detected(&intel_dp->aux, enabled);
> > +	}
> >  }
> >
> >  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>=20
> --
> Jani Nikula, Intel
