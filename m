Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7585A7EB8
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 15:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614F410E20E;
	Wed, 31 Aug 2022 13:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAFD310E20E
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 13:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661952447; x=1693488447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=ejBxSpQd+sllLQa/G9y7eKF9wdCEtuXYJL4Y8Gv0K8E=;
 b=bF/4aa2RTFWs4aRoTYuUfC87VqpXtwi5Z1/7zyKRV/cJakwIhfWWm5sr
 jrdlMhS1QbaKZla11YpfQUpoTtpXfxzFV433lOMMwPqGxTIe72Z01JhG6
 ghBYsh1+HGbe7HUXcjdx7203yfbdLVrW0iFavTB/nrMvpUe0DsckZepAL
 /J5kPw1er+IE3v39ugrWSAjldtnMBm9qJNSYaAHN/CdHU3gnAQQWc2G6I
 m71b9i7PryVy89RKkES/9Es+PPvXCx8QeeItib75mJ3Cx5OxElZenO3yb
 s0NdLBWwo8tXSLmHaLRFhZtoQpDcmBE5MEW5XC9/iJKvQ/VGG1bKKWCgx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="278461381"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="278461381"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 06:27:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="715693016"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2022 06:27:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 06:27:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 06:27:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 06:27:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NZCbDdyYTQBUg4gQ9CMH7vA0SgwjVPa4c7tS/Mdu8F4vk6YKwkC4dyT935yCt9F5GMxO40Cz5Mm91O3ofKKWUamFFuQjbL8vB0e7roZMhXlq5b65H2mKOYdVWeAYxKMbNQpzb0vQKFtw/mcdENhOPvg8ixSRxE5uqW8jIfIU/V5BGgMckMZXQI1Y2r9y8daU2iEcNwidSVvFr8EbqMJ9R8FKxNQm3Bmp2R2IWmrCoR5URPMocyN440DlNbFvLgrvsBU8cqEES966gugTZcS1B0d9IJuMpYbITRssrzfRXwpuHrWZC310adgj878viPcmwu/eTAo82NNaR5A/C5a/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kBk+j1wiw96lnz8kP/u7SvbJu1uv9tFUMBMzFs8Lk7Y=;
 b=WAYiho35+JBoQ2UfcyPwj4FtZW8YG5ESyrZ1yKU3oHMSvcvxeuYaj4YDfNgfGrfhXiwkRdPkBVC3ZH4/DkM76Sn5lT0hErOysu1v6ToXSNsMoS2q9zCZ3csb2Hs1OTNjUgQ4NBa2CXi380U4fUypBu7E3c7TQgDO+FM1OuX3LeW9S/D3jvp2yDGXnLC/K31nWXbGyaV69yIc/6hu/ZM7tldx1CjH+G+hC2oxaHeThtvm4Ef9L0+YKcausVwQWcS4s0N30Fn7712EHdBo2+q/1vv6QyGen1jDB6ZCgVrbvIMA8OEtbOJ/8c8hJRjIwrxnXNuuDHPRaTV2DE9/kJTtQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.16; Wed, 31 Aug
 2022 13:27:24 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::a47b:351:674f:373a]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::a47b:351:674f:373a%6]) with mapi id 15.20.5566.021; Wed, 31 Aug 2022
 13:27:24 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: clear plane color control
 register when turn plane off
Thread-Index: AQHYpbmrDIU/j9pKTEqadDAYq5wzvq3JIEMAgAAOQjA=
Date: Wed, 31 Aug 2022 13:27:24 +0000
Message-ID: <BYAPR11MB2710024A8ACCD5C8F92A3E90A3789@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20220801151616.12644-1-shawn.c.lee@intel.com>
 <Yw9VEmw6sq0Bh/fE@intel.com>
In-Reply-To: <Yw9VEmw6sq0Bh/fE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f09b550-ac80-411d-3ac8-08da8b548a70
x-ms-traffictypediagnostic: MWHPR11MB1584:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kpFOSv6U8kaMet45ficOtSIcugruOZM3yhlnD1j+7JiAk26oKfwZnoTTs6nDudKbdtL6+Ce1EVmhfcOfa8PDRdL+BOC7ZgRFGeHADeR7OCMBCZsOxsRu3+zxG9YHHtTe0iIq7l122JFZKFJTwsNmTNBDSBWYQEjN0D9Ya/5VvljsObNCKQpTeCL2SEthAB3ciA22dMw5S2GCYIqMA0hxcOTaNNU4AsGB5Uy6qtjfp8DTkwJmGcjLbZSUNH++f+ChZvRFUPbKf523YPZP4ipY/6aHVwEnbB4SIaRVrrX4xm91ErV7MDXy4+TIDa4CSaqgiFkI6/Abr9z+oG6URubXfJRRZ4s2s+7rmrsccOVxO3GxE28oOEo8gpa4IDznBg0OnMw8KGjMeHa0TcDAR/6kFJO0g8pm4OqVipcLGG7VdYmDP4IXSS/AnXin9be/4bER+yqxEjUk5PnA6fkmltGPfJjF9M7STgLwzhrzzpLm8YX34W/FKmaBU4t7OP9U7QOZC1DRoQhhALibHWfc7o357VuSzIpeeVjuVA7DH597EWo6OHeMbAeRBMD0rHhoscPohSMQWYEQTKSy5DQVOpmyIRjZ/viLY4O90VGldsRaJu0uhiOdMx3BWvpNCPW/9rgXZyZiOk+QEq3C/LZ/BUPNZFL+M0AODxPNNeMQbOQBMdtsO7qmSxXMNett/UGFa7FQ5hfE6yC0rEMlB3f+LV/UAvW9FPL5KbKceQPxjZu9RT8hO3vfrbyBBcrmv7epBIwnHAcNSOOCqFKFaTcqDIWENA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(39860400002)(376002)(396003)(136003)(64756008)(122000001)(66556008)(82960400001)(38070700005)(55016003)(86362001)(52536014)(66446008)(4326008)(76116006)(8676002)(66946007)(8936002)(5660300002)(8796002)(41300700001)(54906003)(478600001)(38100700002)(71200400001)(6916009)(316002)(186003)(6506007)(53546011)(33656002)(7696005)(66476007)(26005)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?or1TOru1LHXqSyLPRQ8TcOW3sCGror2ZRFFqXKJ7jWZJbJh2exHF5Udado?=
 =?iso-8859-1?Q?Nb+X1KILSAz4hTZITSuVdQZm0461AcF9fJCHICyijzdBfIpbDSdtjJLanK?=
 =?iso-8859-1?Q?O8ntNAX7Rx8Qie7zc+3fRxeLqXTvP51sJXIVQoSoFxwMzUk5lT4bsBlAbl?=
 =?iso-8859-1?Q?8SdmZ76XpcbLD3mO7yw4LuED9Jkv2+hiTrq6AA82b/urEk8omv0Kx/Gsz+?=
 =?iso-8859-1?Q?qW9LMX/oKJ5R+iZOUKYnScJXrMibtpeUTqQd31QPeKzmV8fke0PHoQ4VXQ?=
 =?iso-8859-1?Q?5w/HP8tR6Yezxd/VCGU8Bdfb6i9Rom+G3KPYRydqCmTAXmHx5Sjw6zjXUd?=
 =?iso-8859-1?Q?3CBWZZSDZmU/uTmI6CjgJUImhRxHunHusi5i/S4XEcgthLS81H6gpPiKb1?=
 =?iso-8859-1?Q?gvkjWTMNGl4uOdbHPgMthCSOBvVRyC3wKnMaXYHXEYpCzBFYHajJRYozh3?=
 =?iso-8859-1?Q?3Mv0kH/MM5b8SUiY3gHsQdO9K8Dk0sTFJSye6s8tipeetyuHdXRBzJYXbn?=
 =?iso-8859-1?Q?zwZVH4npX21tNtA7uyYbUOf66bRUKBsIh7cqZXkPcSAwVAjzArkE+gzLcc?=
 =?iso-8859-1?Q?0qF2PF+thbCoOk7T5LR1YDeDyLbzM5akP9jcI44N8E//XDExhaT6K22sMx?=
 =?iso-8859-1?Q?2kW/n536mXe6ROF8EcVjeDqk1+sZLnBuLv+hbIeFJheRkqFvZsbjniKT17?=
 =?iso-8859-1?Q?qxbW0jyhSsFyELT0KqgkMc1x4HgAeZjkQIUbxEEhZo+Ir4Mz6/QpWMY3uK?=
 =?iso-8859-1?Q?yoL633uMvrLjAxQPa2qbX7g7ladEuDl/P6TnaJ1VzlEyOIx/XOrLuzgZB0?=
 =?iso-8859-1?Q?x5n7h7ErJrpVITIQZnJQaCAChAHLuEd+Rr6Xv+j46FCfBCAHZ8X3KzELv9?=
 =?iso-8859-1?Q?Y0ZUR50bIrA7aVK5WWJ1aQQGkINF4WaPGXH5GPF7A+ohK9w5yVC2V/lBsw?=
 =?iso-8859-1?Q?gKT1In1dY6GgGo/AQC6UNDCRONQ/h+v6ag+le1cyUCcRXKXO70ruYMd9es?=
 =?iso-8859-1?Q?T4ElwOEnydSQ6QU0/lkpFG1oCDvvlDN5yWH1AajBextPbplwqlHrlOzY+A?=
 =?iso-8859-1?Q?Q5GEW8FGUjHhFCzdNaIbENoqLsW6aB2of7QVbLNmIdgQqQUN+E1zG6UCui?=
 =?iso-8859-1?Q?UPjgd14Mheqc4DjQIzOdh3zoA92w4VjUQ3whnA5fY8RGT96t1wIrtKh9yt?=
 =?iso-8859-1?Q?kxrC+gcAeG8sJRXcaYe9LWkYAviS7xMfLKVkuqP0ThwBM366lwWgF6YojP?=
 =?iso-8859-1?Q?xbu1PXE5cO0L6u2QGSw0sYTCXj1uNlsWZ4rVnWPF83Y24lbvfLWWqzqsid?=
 =?iso-8859-1?Q?27lAQxDCgNGw2ER3d/8EXgXnZAa84jUUCTr7ZY0rcb9RfvxboYLLUAsjCY?=
 =?iso-8859-1?Q?JrBwBX30dioosLxUxS8QRCG2KOfXJXaWWG7CseCIGMVx5Dix0UaDAPaCTx?=
 =?iso-8859-1?Q?ZHgjrsEJEiAuFu6C/aKJlRwrw0OzDCAgYGka1UmgmvgHWW4tdj6sbr1Z91?=
 =?iso-8859-1?Q?6Dyvp7CnRqzerctXNeX9h+Glr2YixqPRzawzMpAlIHjKIYt5d0UcnyZPot?=
 =?iso-8859-1?Q?Iut7Jpt06mKGL97zxfYBx6l9euKshD4+Wv+lho6DxfiSzWMCBAY4WRqejD?=
 =?iso-8859-1?Q?ng2ho7IaWN3ceaDh7ziBFkV7TqnvY79N/j?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f09b550-ac80-411d-3ac8-08da8b548a70
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2022 13:27:24.1846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G2Z4ClEQTO/C92pOvVX7d49M0rZDD1hDhYEkiGBBg8Uye8detwq4MgYsp5xNThBMUwac5K9cGeg9OE0Z/t/C5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: clear plane color control
 register when turn plane off
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
Reply-To: "20220801151616.12644-1-shawn.c.lee@intel.com"
 <20220801151616.12644-1-shawn.c.lee@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, August 31, 2022 8:33 PM, Ville Syrj=E4l=E4 wrote:
>On Mon, Aug 01, 2022 at 11:16:16PM +0800, Lee Shawn C wrote:
>> Customer report abnormal display output while switch eDP off sometimes.
>> In current display disable flow, plane will be off at first. Then turn=20
>> eDP off and disable HW pipe line. We found the abnormal pixel comes=20
>> after turn plane off. Clear plane color ctl register when driver=20
>> disable plane can solve this symptom.
>>=20
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c=20
>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index caa03324a733..90977cfb7ebb 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -620,6 +620,8 @@ skl_plane_disable_arm(struct intel_plane *plane,
>> =20
>>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
>>  }
>> =20
>>  static void
>> @@ -638,6 +640,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>> +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
>
>This makes no sense. The register value shouldn't even get latched since y=
ou wrote the arming register (PLANE_SURF) before this one.
>
>What platform is the problematic machine?
>

ADL-P

Best regards,
Shawn

>>  }
>> =20
>>  static bool
>> --
>> 2.17.1
>
>--
>Ville Syrj=E4l=E4
>Intel
