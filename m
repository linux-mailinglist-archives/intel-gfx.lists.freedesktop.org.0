Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0E2783849
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 05:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29EA10E04A;
	Tue, 22 Aug 2023 03:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E63910E2D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 03:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692673559; x=1724209559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fl2gZ35nGsg0MgcZuUofFJm7eGgENWlKr/hXdVjmA0w=;
 b=EeHlFagEcNttVSd1pHoX6FYHaGdNimbcC3MbyUrOvJk4QNCs+kTg89ob
 jLpNo6ZN5kYgH2f10YMcEdSk8lXd7vg6uCtAzUPPi8dhuph+T1acY3KJ9
 wp6jUK63FctDMtbHxYOyx9DuZnoLR3RwHgcVAPt5Jgw30/+JNBm3ON6yh
 m3qniL9kMSRilHiiipJx4gCYWkSN5liXHGBIgjD6wtdZ0yiToaOgt6Ogu
 qAVOkTHE9lbaTKykuG6QkBzorYoC+u/HDLBJsmlbLq3hP4X3Q10zmNiib
 BHs7wmxObX3ApJ8RfNVozbQETOfzOhr+UpamcfTnuANWy+Qof5JnlUh/X g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358752705"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="358752705"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:05:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850424845"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="850424845"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2023 20:05:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:05:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 20:05:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 20:05:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=do9YeL15MiRX+V50hNsFuWbLLeyxFrPlsRk/lQ7XJUBDoiyFxMtfKrmLkdSZw3BsOiwRrZ8KjrbvQBttEm7qD5U3nRBSsO97s5SMneL7pp9lA9YaGE++PkyEVHams5V0/zwbB7/o94JK4Bzad/iEzHngikcGP/lkOg7BZBNsJDiVXcsmCzD5Z6wLoCol+9/EOnljBLBYZdZqtyQIv/Ln7v+T7AmablCdP72p4lk9gTkqgLo7LN5SB/FZQTgTDmVVX59tkpQY8CKf0gpOeDRkrph+li9NHD67HZ+KDUzRxr9nCnNPqG6RZBT0ew9WwhxqAYfJAtuHs/ZQVmBxEEJDng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9wjjXnesegiNIgMXuQtJHcXk2Teif2ho5vRD9PkAko=;
 b=OhYq1iMBmTl3UXTur6HdyU7uWLD0+U1o6KXQVPGaHSpmPNe2UP1BvGwMxi7uq6qECIIs0fRg8n+tbKdMsP0Fz6yhJuyCoAWQSVwhy/ygUDTcia25z31aOYGbH/MnDJYECgKIskBkb6eYbzG6+VAycvnyaChz8mezExuwX+MHwSbK4o9Zf7vtsX6nGKTRONxUEoALHnTvx9MuhwN9+ScpF2mso++2Bic1fwN8w2AtDp+B8RI0c514TpkgMpMWrydfmiJ3yZvzPEkz3/bjqbYqPpFXZp6uMOau9XjeFy4TIlprEinh4bObVn8tqVwelbf5cL0rfkDDwxaxOBnU6fREGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Tue, 22 Aug
 2023 03:05:56 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 03:05:56 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/4] drm/i915/hdcp: Adjust timeout for read in DPMST
 Scenario
Thread-Index: AQHZy19IGQ8tgPYMDUm+of1qprtLOq/1tBHQ
Date: Tue, 22 Aug 2023 03:05:55 +0000
Message-ID: <DM6PR11MB3177B261A73702C862EB8CEEBA1FA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
 <20230810074758.154968-5-suraj.kandpal@intel.com>
In-Reply-To: <20230810074758.154968-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SN7PR11MB7018:EE_
x-ms-office365-filtering-correlation-id: 72aac647-20a9-49d8-5d83-08dba2bcb3f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RIJ5q23gZ34jV3AeYYl4vo4vAWD2NKy8Hm8pZy3roE3BaLrOm9sBqc4qHRpoDQvXEU/KMDn7e7uNBjPyfeOj3P6j3JIhFA98oFaXevVouOWWAZTLXJ0CaseKpU4S/ivP+8EXEQ/jANtnCsR8I0LIirGResQ9hAOZjfTrwnA6pBe5i3UUqC7jSWVcxge9SkZS9LY/vGqqoNBd2WOwEhuK/I9JmKDgK+wYtY8IGbOhhOJU6HBSma7u3WkeGHuRuujSAB0x/4guk5Cz1gPgKdXwTDSLsMJ2QaSGly5ubVN8Q6OzT60iBha08wZ+/64tP3NjBC5eMn2oI9KnLhAz97WXuXQ6KEjNKD7j/K3sUvmrDgVqo7ZPVlNZCjmoG9g4SQf6WlIjT64uioscci+rGJCKtvNqk3UzaF6iDxnyn7QCjgZC+gaUTM3FhdifQWdQkousjaXrmjpVWkOBF2GvGrDS3pYGiRt+4c5Hkqfz5P59Bo0pZQ6yKyWPehvQXh/QtjLTKl7Neh11Hu8sTXO425whBiIRDq/cEfmGSg1IKs4Zz0j/vOOBSi8JiCLgy7otprBk08yfM8dHCXiZKqEUQlfkcgLYNUNiNIBi3E0bCP/O0UAzS0zCd9BX3ps9RFKF0Tb6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(54906003)(66446008)(76116006)(66476007)(66556008)(64756008)(316002)(66946007)(9686003)(82960400001)(110136005)(8676002)(8936002)(107886003)(4326008)(41300700001)(122000001)(478600001)(55016003)(71200400001)(38100700002)(38070700005)(53546011)(6506007)(83380400001)(2906002)(86362001)(7696005)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VcAI5puNOz9k25zdsASxABo3kv9lnhTUxlWfmzmvhNu2c86m+qNPJZLmy8Ok?=
 =?us-ascii?Q?oiVYG6EbuW0F9gAH6Ju1Txt9+rMJCQDcUlHJ8Y7AONK8aq5C0F5nUK5EZuSr?=
 =?us-ascii?Q?jO79qsE8Ji2987/5ChhYDxIdqT5ngaXcxEZEWc+Rsl+iEC49thp+EPqGxOIc?=
 =?us-ascii?Q?v1CvnFY88A99Tepuxs2c3jA3Bbf5GweBlzi0abCvbb1yOhybmg4JogKgAJxu?=
 =?us-ascii?Q?ReA4Nk+1dcOADBkjw1BrBHR6cn22IUmfsmYyVmWhlPxhSBXhzkW5J6q4WgWp?=
 =?us-ascii?Q?1PdUthw8YKyruXb21JOtGWJALoVZVHo/PchDSj45UoWxsFkmKl1oTFg54Uio?=
 =?us-ascii?Q?Rc0I2Wbyw2oCR7eVc6v64Os631nqNgsWEMPggpkc0JhithnREfNu7kMq+xSc?=
 =?us-ascii?Q?7Ryn7aLkgaNRhykuF3Kk7gzTh1n1vPtVZWJk0QNzRtTz8elIYTL6pws2Z8Gg?=
 =?us-ascii?Q?c0EexEGx9pIgAvDIU/Kw4Nc77n1KN0lkwPNCqdxHGOFgP7KCN+RoS2UWS0E0?=
 =?us-ascii?Q?1a2rBqn0LbEf6WR7ImG8COrZo1ErN7D/mHkRtxlW/WqiOQdWQmUf+C8L5TJd?=
 =?us-ascii?Q?P/nfHKK2CZ1ADm8zAASBWZ0N7ZxkOgS89QrGem7RZIJqV6y3dJmlx5iEA5At?=
 =?us-ascii?Q?4Lhi0VI6jq4JPDZ33oOU7gnHL0Rhyt55t2o/rc+m4jUtdeq0wRdtVuDEJ+LW?=
 =?us-ascii?Q?CwhqaotzUFRAeIh8Iqfi2KXkhVhQZIuVjlf9/Qn5rrHRU4LaVHtK7gLCjSjO?=
 =?us-ascii?Q?EEhTufBsWlwhWoB3vGy/cOV6mgAOjzowaCJflc5tWLvOAjkQJ58iLQOncVJo?=
 =?us-ascii?Q?bRRJ3CqZscYnyUmCTvgV/41u6tlYbys5usE+7kheSW3M4qFLP0AoYVn3ohDt?=
 =?us-ascii?Q?oBGQk/AKqyMwZfcFBPTUzRx5tOn9YNWW7JlL/eiq6xmcFbGrtXJsnXhp0uac?=
 =?us-ascii?Q?sYGc1jnevrpmxinKQNEiET7iYMQXnZ0yIGcEv0pxtOSlt8IGl3w0YSqak0ov?=
 =?us-ascii?Q?CFBFlsaT++ODdBQHxLOpPNShzmK1i0LCXZSo73DHXFFCU145s2bZJDuj68bz?=
 =?us-ascii?Q?QiEV9TFBIamF/SAEFxIg5sAkiBieAnQ06Q4MYy/yRfhsauWOEwkQcZaLa3it?=
 =?us-ascii?Q?5Us/f5ZMNzBFuoloI8mPe4PTd54AdCM3108cUqW/qeWjnn8050KJ4lh4u5/6?=
 =?us-ascii?Q?lsYLuJ7sTjWySfc+KfO1P7R35cveOe0aKhzsRI3518qudcdEbvIO+Rbii81D?=
 =?us-ascii?Q?WkTl/3n6YdWGkexvmvxCuvlsHzM9oSNHPHgHYb7FziopKoSDGuXivaM0Cbsq?=
 =?us-ascii?Q?YrxomrmMABqMzpv/4C6arEDBqKH/OMZ9V4jVHjCHfuTAezaXk9HX4Tq1et7p?=
 =?us-ascii?Q?wGVq1WendL4pvIlmkkEsVVxwTM6ZIFa46UV2QhsFrDCPvuGVmaCThc8UlPSq?=
 =?us-ascii?Q?Sj2cEWJorXOye9z/6MRi4si54L7OQilMv6vUP7mD5SwvC0zP8YP4xVGWycn+?=
 =?us-ascii?Q?rW9e+2M6rKPyJegol9FUW5nxeDofeJVWOAvT9LreUYSG88+qLNXOtO/3U/EY?=
 =?us-ascii?Q?HCKjtEjmF4UuqV61vShwZarYVb6RSFeb3KxCWoLo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72aac647-20a9-49d8-5d83-08dba2bcb3f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 03:05:55.9330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kYsMzffdgQazR1dQcqaNi/3vUDGahh2rYRtKarbkGSdt2JsxoijPxjdtkuEFOFgL9ng1qEdugB4LyWNuh1ae+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/hdcp: Adjust timeout for read
 in DPMST Scenario
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
> Sent: Thursday, August 10, 2023 1:18 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; uma.shakar@intel.com;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 4/4] drm/i915/hdcp: Adjust timeout for read in DPMST
> Scenario
>=20
> Ignore the timeout for dpmst hdcp scenario.

Justification?

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 2a37a43243a3..e8cdc5721966 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -571,7 +571,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector
> *connector,
>  		offset +=3D ret;
>  	}
>=20
> -	if (hdcp2_msg_data->msg_read_timeout > 0) {
> +	if (hdcp2_msg_data->msg_read_timeout > 0 && !aux->is_remote) {
>  		msg_expired =3D ktime_after(ktime_get_raw(), msg_end);
>  		if (msg_expired) {
>  			drm_dbg_kms(&i915->drm, "msg_id %d, entire msg
> read timeout(mSec): %d\n",
> --
> 2.25.1

