Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8278F95F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 09:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFBB10E739;
	Fri,  1 Sep 2023 07:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7868E10E739
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 07:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693554885; x=1725090885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z6G1xG5mhKEceQh9lckWcHx7ijWvcTuWO251aENj7IU=;
 b=il2sB5cuRox1Fwb7cOS+Q/WLO2aid4YVKRUrxuqW6/g3Cs5Il7E8sDfA
 6kQRjoVuE+FbNaWpG/W0h2DPwiLqGz9sXReqpEom9nk0QXMiR36439900
 pQZ25fBjkdYcDZBdZrS9NKmDqrFxO9E369+V/8ufz6V03X/Ws6aRfKXEZ
 aoVuz/9inXB47xW8/hUClSDh2uBeZ5x8dUof716e0vLeIjC1mb3o960ww
 XLFWTo+KJcyb4BbzxqqyPAHut96G1Wfxv3A/m1YaecFq9kO4CZQltkqGk
 REFDOf+T7zeUFTiLshrrryyXn16pV6/SgURNm0/pYybTU6J7DZMsBRyvF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="355656948"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="355656948"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 00:54:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805348884"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="805348884"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 00:54:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 00:54:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 00:54:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 00:54:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 00:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BqUzvDUZOI6Dq3Qo04cs4cYQA7ct3klJ7f2FaHLX05pn0PC6keF25snHlibXw5eR9Pt+BUq/j2Ci5DA1L4sFHtOtydeqQXAQIPKn1WZ/plY3zk+SIgm9WZ/IKHRQfrcVggi8bQhrz0n3eZoJ89qAZvX9rNuwy5qodUXvVSErdJQzlJjRPrlR/Uh9V8O5Wu9qMxx2QdhnXLjHOhy2uouqKitkpm0lF+S5W4EXnvFpugzSU1Ifgy/1/HsoRm90X2BJ5GVEZplw+l2ALxNRjNi7ml1n6FpatHbclQZefVB+dpdQYo3xVUVAhr+AURTdHjUl6RJ+FMZlXuOXYVrvUb5kAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rtc7YDzUR44qQyZ5NiXzq6Ga9nDeUD4d6G7oewiEjI8=;
 b=mWBpC6vk4QDTAgsdgVeXNltzw8PYiUa09Iqa6YJoqcIeZV1Kfmse2cfxRHu78FiIaSk+wZ7Sp0cY2LpPf0VwMlWE4ky496InqK9BRG7Za72MDhI2Rbi6W8SyBK6J/XMA+NjBxjkqVLTdoN0zTNSmu2RXHlkdCPzsF7N/8AZ6ipT95Wp8H5pKi+z5qUHUVEX/xDRbAAxfDbsq95d+ZaZKCshfY+YJa4J5EYKajTy/AtUc3NnnCgwgTh6FwbBkBVnfG0O6cbZ4r7XtVu4f2ZMQQHCRoj+F8YW3Lk8/RyLwqnqWyVpdJXFBAj43uFezr0slnkwoVRZYqE/9GPkWGH9V/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.23; Fri, 1 Sep 2023 07:54:41 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6745.026; Fri, 1 Sep 2023
 07:54:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 0/2] Fix HDCP2 capability check 
Thread-Index: AQHZ2xTEFPf9ZdECKEm9ipscbKvrdbAFnHZw
Date: Fri, 1 Sep 2023 07:54:40 +0000
Message-ID: <DM4PR11MB6360B9A5B9C2902195DE62C9F4E4A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230830073437.666263-1-suraj.kandpal@intel.com>
In-Reply-To: <20230830073437.666263-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB6761:EE_
x-ms-office365-filtering-correlation-id: 407e2496-f15b-42e9-a648-08dbaac0b28f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xfg2qrR0L0JYWTzo8OrJpQCx5md+PKMC7dhYWebj/MPEAZr5MDI6PbV/4vG3F6Q3xm/RBNbiOkd6y4bHlBbsadFZM6AoHn/9wy1XdWVUWl2I8VWTRB/5Qfu+JrqM13gaDikq+WUafTbAqkvpK4MnRdLIEP8sv71h8bhU+/zHoyB4kLgmodZFam5uISmsYnAqBA9dh5A/athV2YeY3cCzKsQY8pmPTGhIQQ7jNClNg3TxaBU8Mqtvo2FI+LlOTFQo2nN3uHnuwvCn7RwVnSK5ntlOeMzO7UP4mRw2HE2dJuqETkruQJ13rGZs4z+kvXUBAQ5lyOPmOdeb+utfE1Zf7iHa3cl06j3eTCQZcLacRYg8jXkK6Sj1w+FK648SzeCao6IKANlqo1LJp4YwK3byNASQDkp1kYaxx0vzlqyx/9tUSAYwkNRfYb9+CnKO3RG3/nys/Zi87BCGBnuzSnv3CdPOAZC2ZIejicE0wdyc2r/0+v2tw4MpimCeDDnMX9/RnyVqoAh0JQ1El+vqQqro3jkTh8IHUqJ6FsBI8dZfBH7o5kPhdKIlYM9ShmflJaUOa7eeybApoRYvoI27NczD4I8AavxL/8/vfTU34dsPNqmPOeOEEVs0GK0r2cqK5/zi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(346002)(136003)(1800799009)(186009)(451199024)(7696005)(6506007)(71200400001)(9686003)(53546011)(478600001)(83380400001)(107886003)(26005)(4743002)(2906002)(54906003)(64756008)(66446008)(66476007)(66556008)(316002)(41300700001)(66946007)(76116006)(110136005)(52536014)(5660300002)(4326008)(8676002)(8936002)(55016003)(33656002)(86362001)(38100700002)(38070700005)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TCeuKVI6UTPXGPyRGwce9FetxrhshQ+7TLX2jxNuEbeRZesPf+r3ukkTRXMk?=
 =?us-ascii?Q?acg1+ylk0TkozdE4e0pubs5Td1v82AEekkyHiM6oGeG9FVrpSKNZrwLmE+RJ?=
 =?us-ascii?Q?ZLecuSs8X63N7r0EDuep/ILVm18c+IrIHI6M2DeLWBm3A4C99n8uoC82CT6/?=
 =?us-ascii?Q?RStZa87ZURkDxyuo0Ak4lCmyJoon8380qdXmuIvR1AYH5iHOvEsDUR6ViDfc?=
 =?us-ascii?Q?mbheHL1GsPqtk/IqHWxMYQElVBK+LHRw6B5EFv8ovaQFJnvB1n1kDjHFfE+g?=
 =?us-ascii?Q?QMMlc2bkpgpEFkCAAGDuVrTpTMhm4sussgskcjy0Lkk0XTJ3E0f0cIg3Nu86?=
 =?us-ascii?Q?HC64+j7xJ2W9X9WQQHR09CZ9Et2V7HXHuT4kqzGdj7Mbn2Z7aBg6okQKEbzg?=
 =?us-ascii?Q?cR0P7uh3Jm0ilAy2+UJDRf2e/6EMDk7zZF3sdFCRmLlk5uIhzulnxkgVNMjl?=
 =?us-ascii?Q?cQI0DEtdCwyXRT6kQWgnyRBtI+NzTWdFUDn75p1RZzFzORB+fKH06u7ge1MM?=
 =?us-ascii?Q?+XlFxUVazHMBv2JJsRMgMk8fOyHWF6JPOyT3Ebw33kEH3euNuc/XWSC3eJ4B?=
 =?us-ascii?Q?f5yb9Y/YPwmVs6IAW0Zgkf4rPb2xFQS1UcYJy7cVwNeigjN1aRyGwFWzZNJ6?=
 =?us-ascii?Q?gmLb4MeuSh0n1yG2kQPv7Z/rl8a8lAFq9fkMgCrl+GtjAYLhwYxhTnvLd8R7?=
 =?us-ascii?Q?NqfFEuyqA/efT8z1K/1tIwDBCFlTV/JNN+peLRWHu3iz2AQ01iwvnleXGQVs?=
 =?us-ascii?Q?kr9vSGg5gZOtjOXscxE0pnK2pkGMtG/+9Jd6u5gd0Ge/dBrSW/9StU3mMSwO?=
 =?us-ascii?Q?IrLHjUbRUXJddL8n5F0VtNWNK99D/cR9HyvpP5hXBstv5t4Qclr2RsDf45wP?=
 =?us-ascii?Q?NUfLUL+kwOI5IacYDIg1IesnBDqVrfwoGPopvJdx9Sdc92nE8aVAWW35Nbvc?=
 =?us-ascii?Q?xXQh23wpuxjIi5LL79wQk6p6AgzjfI/RsCSiH4ud9TscuyWjplyEUG/Hs2qK?=
 =?us-ascii?Q?jelYJlSBm74ddHmH+5CkxKmLjcfcbLs494IJ8yzmfT89XqLbu77ZgEQd8S0y?=
 =?us-ascii?Q?scG7hsPQoTYxV8qkDrDBlXVRvvza9cV+QaMwmsdYW1hZALeOIcaJkbWkxsmx?=
 =?us-ascii?Q?rcILw1J3oxEKiTRxGoDc4GFhU6Kb7vmkHFu7eZ8cr331MvPNLgXFmsmsP2S/?=
 =?us-ascii?Q?TZy39ni+jqY4RKI6oq+TwGV4rSgLcKvUTE20ABZMHaOmb4qFT1xyzmovAy7Z?=
 =?us-ascii?Q?AEYZTkS+0D8TE89wmKPXbWlc41/Wmvw54fzKtijsSmqMcfj3k3nY27TUjmno?=
 =?us-ascii?Q?5kKsKjol7QRd0hsdbJs+n3XuwvrQR7hF+4tTaGjr3lacP2Z9rrkhXC0mMO0Q?=
 =?us-ascii?Q?ZAxQIihFc9OWJauiGvQnv4tINBPLyc48gUTWTTzBUyJgLa/eWhiqOupy31rW?=
 =?us-ascii?Q?uRG1GeCpVAQPngKGCEfpWJQxN+ZmPPpu52uLig0C/o9R0DE41JbPg0g/HBF0?=
 =?us-ascii?Q?1VFB1koOEeLxSSV60+uZnU+hfUr+pILmXZdVxVGScb+PUMNJmYBklwh1ScwN?=
 =?us-ascii?Q?AzRH5B3Ft76n9NayldmI21YFb/hivz5ip2gEcwQB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 407e2496-f15b-42e9-a648-08dbaac0b28f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2023 07:54:40.9250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X7WY/cpo9dFZJMces2wdHefXXg+y7H8iLSoU7K1rwGvr9b0yKxS06vp5zW0cjzNwyCBcfbzzjKjVGzbSBK4oIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/2] Fix HDCP2 capability check
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, August 30, 2023 1:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>; Kandpa=
l,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 0/2] Fix HDCP2 capability check
>=20
> In DP MST scenarios we derive the connector and in turn the aux from
> intel_digital_port which always gave the primary monitors aux, this cause=
d the
> capability of the primary monitor to be checked twice rather than enumera=
ting the
> different HDCP capabilities for each monitor because of this we saw the b=
elow
> issues -primary monitor =3D HDCP 1.4 secondary monitor : HDCP 2.2 1.4
> i915_display_info reads as : HDCP 1.4 for both monitor
>=20
> -primary monitor =3D HDCP 2.2 1.4 secondary monitor : HDCP 1.4 i915_displ=
ay_info
> reads as : HDCP 2.2 1.4 for both monitor
>=20
> Solution is to derive the aux from intel_connector instead.

Pushed to drm-intel-next. Thanks for the change.

Regards,
Uma Shankar

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Suraj Kandpal (2):
>   drm/i915/hdcp: Use intel_connector as argument for hdcp_2_2_capable
>   drm/i915/hdcp: Use correct aux for capability check scenario
>=20
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 7 +++++--
>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 3 +--
>  drivers/gpu/drm/i915/display/intel_hdmi.c          | 3 ++-
>  4 files changed, 9 insertions(+), 6 deletions(-)
>=20
> --
> 2.25.1

