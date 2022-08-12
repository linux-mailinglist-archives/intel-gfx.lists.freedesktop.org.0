Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C9C590AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 05:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A5D112886;
	Fri, 12 Aug 2022 03:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8996AA13F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 03:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660275073; x=1691811073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3dP4f8VcOYjQEkaYvaZ011p3S1IK9S/S7dQKVnz8bQ4=;
 b=h/UkfBywYpWpikRSkRlIgz1yqsnlECpy10f2xKplmovukZwmlFtUxeuQ
 7ArpsSn4iLUPlG9VjT1LOyfob++OedPFQxDg8FWM8ckAbKn+gvKeNXzwC
 UmpiDsRxrSzAgwk89jd9O66Al22+dyYATWFw+dGHhQ9Vu8XtlQ74N8ebw
 JAdOAvUZGdVwyexJfC+w4I9RPIhOKq42YHCDqIx7w8rzU19Yh7pR0N5HB
 UGL9h3a9+RK+eN90VcD70H+lcOF3xCzdjPP0VlTivfVNKORLe310Ucj5/
 S1LBQj2wE6RkyzI6fVAt5Pd5raHvUht1Br6iYnUpJxXxM3qnaSluiyv67 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="271286823"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="271286823"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 20:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="638758513"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 11 Aug 2022 20:31:08 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 20:31:07 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 20:31:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 20:31:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 20:31:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FHwwuC6k7pTCHgXa+r571M3TEsgoUW6w0Im/NuCGOsY4L2CtkDApvWF2IraNWcjR+Z8HjYlgxJlvVqiJGbwHfe5v+vKUEw4KguwjvNEJlYz/uOeNk002ZrFm+NtbA+723m674i+sZ9PB++t6NPZNGsALE41hlEcK26s7UZ7ICuD8oVHBjH2MLy4gpA/0ZFCA6Ie/X+Qsv1Xvx75+y8oKGCf5YEVOukbmn1Qxv7+LnvDjuFE+lk5PfzypvCoNER+Lnpr+RYvxLgzdYIKKZjVR07r4B8f6b+j62xRRkP7e9+sJ5pgnkKmuzXevicz6SoywhOmXAF9TzeFaDBC84NA7qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WVMD9HPMmAIOxb1a4RB7kcM2d7v94VNxqHkXCHU5Us=;
 b=eZyC70xr+oaySSSM46GXRZ0TMWgmfVTJvgnPzxTRFI+O/FdHk5SxYGYthUMF9c1HlCJIgzXsn98VkhKLTj2fAOmjtPzyW50Nm5edoveDpEq8zSq19d1RRlYqV7sszeArkTWRKUltbehQHaXrMddJii+vRUNqq4u1bzHdJlagdUb0a4dbVAkGztWW4eAx6jqq0P0bPybSxl19wxusQPxOg6EEEYMnhqBclbc2NVAWRuY/vvc5mQ8kEjQbMHJuCCcWrZ6SyS+y4H/V+EgCewYoiRMM0tYDtqzus2RJ2VgcCPlwjS5ttcGavjQiCwgkj6RTa+lIkKJjH3sXbc31cF0Cng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN6PR11MB2749.namprd11.prod.outlook.com (2603:10b6:805:5f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Fri, 12 Aug 2022 03:31:05 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 03:31:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/4] Fix HFVSDB parsing
Thread-Index: AQHYrT9lIXmIvJJlp0ifIkhF8TipHq2qnP4A
Date: Fri, 12 Aug 2022 03:31:05 +0000
Message-ID: <DM6PR11MB31770EF1BA81D104ACE92D85BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f96c8b53-9dbc-4141-f9cb-08da7c1316ce
x-ms-traffictypediagnostic: SN6PR11MB2749:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gLk+yEDFMeoZcyihAdGIkUnH9SwA7gcDIkiTXet2QoXgg9E7NquSqno/WbZTX1EusOmxm/0T4UrjdY1/aUOBBPDvRvRchBAHLwDYiV9i/pfLpODrNtBpk4r2uEKixqTLtr2/4iArrizNQoodsj7fS7QwXzUiBtMHXH2Z2hl+u5iaEuVFH99wcKE7XuMjyYt1v5tmrXeso+amxq8QWXA7b3/uVXDXsQ+O8i0jCKW6Nl1J8dPPS04zNB7WJYwiKTEQrG/BLShsBvpGvavoOAngmTtNtlj0GT1U1wp5eP8Sui/E0tdO1ttEckFqn9zsbIy4ZMhvjJiXjewFl1alp/fSvndqhHOWGfTJJT9KXYimZ4BW97yOI3XMC+j8vhzTfmo+yetk2jmmuYcwxEdcRIO/WmhLYUkeVtiRpDJQnqje0Ec2MERCC4e/bFJKZAo5YB0S+XsgTcaU0aHdSN3N/bJtsRoKUCtTfz4OlQGIUX5eBCa/C2zLnmqh2uCKaCg0FxWXz3C2bESyFOZH/GaxuxOSNdsV1cOSJhCY9Rs1mgwTvWnK2/XmAaw6zMbZF219KuJ5MUqVVhEvS48G3HOKeqoxVRtvBHYTWIKTVJxbg8nBfiKf/mh1y2Xhv3fMFyASH6Zpv1YRfIaGlcWw9t05NL20wlI/lixw3F78a9cVVizgQTuaBoBRuQ15d5ilK7PnsOTX07ZZjMx12Y1THdI/tNIerAEpyz2TiPKbs6O+5OHfzUXBKLJ2viv04IIF1Hdzj5og
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(136003)(366004)(346002)(5660300002)(53546011)(6506007)(7696005)(55236004)(82960400001)(52536014)(41300700001)(9686003)(26005)(8936002)(86362001)(478600001)(316002)(110136005)(71200400001)(66476007)(64756008)(66446008)(66556008)(966005)(66946007)(8676002)(4326008)(38070700005)(76116006)(2906002)(33656002)(55016003)(186003)(122000001)(83380400001)(107886003)(38100700002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IlI9/c5SAhNL1EQVUVdYS3vJrKEnWxupuaiXg/BxcvrpbHa4r0T2sZcTjvch?=
 =?us-ascii?Q?dNlXhx8wyl/Ph5FvgU2bnndtlxzU39gcDv9YMXFBZYIZ0CLK51Aw8+6d4Reo?=
 =?us-ascii?Q?gQ5VinmlkH+vlbE54CdA+jzDTG9PTO5ltklrzNSgDj6RFIjrpOySEolLA8NE?=
 =?us-ascii?Q?vqepiN9D4eOqdJVi7RA8yBr1wKffkdyBHWiD9F50McYeE4F5kOqWh3XQqkwC?=
 =?us-ascii?Q?nm8J0rUVxyxKYHjISWEUrYVKFsh3d1I3Ca+MgUnk0sXdLtne4B8w6BrZw88F?=
 =?us-ascii?Q?OskF2PQM66UmnK8J0wzi5ZLKuTI+C9XVUSAeBCpA8utOXQ5jjAl32xwVwj+I?=
 =?us-ascii?Q?FPsiKwzp8Y40F+ViqkqpwFMB5nbJNZvBv6tLxSHRP0YmioKpvs5Iwr6JTcvo?=
 =?us-ascii?Q?w5PiXZNlW7HwuNLZdoJmm3li72wS56Aeg2ndxHnEZFiGiguALdOtmFyU9pMl?=
 =?us-ascii?Q?s/7WlPW2PWk7D90bm5guBhHsLD8SJgg0OFEqv+VLmRvg9ZbhoFBnQu5e8KI9?=
 =?us-ascii?Q?q9q4krMqjj5y16XElprrHI3nbR0XpgUcZbjyQIRrbREMvpkXfqeCAS8b/gTV?=
 =?us-ascii?Q?SU/5fTYl2Gr02DbOLsMVVwXJnAz8LawoJfrUYg+Y/wPMFELetGFp+74O64jO?=
 =?us-ascii?Q?wcBO3DaWc7uCD4xeNgrqAI/wWO9miS88+tbNen/RLm6Ih+6ccTjyGK/a36Kp?=
 =?us-ascii?Q?+sNMIGM+GAte/WT2xLsgi7807rbIiPhgr/k06qNgJ7Ek+GETRlAGL6EdFYV4?=
 =?us-ascii?Q?1iJrKUQA7wX98xNiGSQ3GevQMEx8nAl2lswmKV9ZYlM4+4l2iJa/6NawmAP1?=
 =?us-ascii?Q?giHRicK+4Bi5HOG38A/5qaeMOWyHdb3jnmalpRM+z4wk+uStZRq4YD9t2BoG?=
 =?us-ascii?Q?yyxzugwenY0Jm7y0RG32lVwuL1ML3zVbFu3oZ43H9Vy11De5fwZq0/fDruqK?=
 =?us-ascii?Q?qI5vKSICu8ewCVYxsx+cVe3gE7XfSVTTFrJ/F9nMreirbeXhqCt6Rdjpv318?=
 =?us-ascii?Q?Vq50eVL/kcYSzsjOQ/XLIL7UL8gwiiNslDcK3hoZeUbJeAl5FKVPCg9NZmF6?=
 =?us-ascii?Q?q8HOGZIofm1ocREJ1RaUH1evvzcHaNsVxVog+RMjzFPRNM18lIBhm47oBaR9?=
 =?us-ascii?Q?0hPCUDvzsgATnEgR5amE6B2FnG4QOac5a4uzCZfhkufWiWV0aCfMT7KQwvES?=
 =?us-ascii?Q?N1qhUpis9Mic+1Ry1Q03Rw6PP/LoYmM/YSJV76V4RVHK8Nqkxv+7wEKeEH2g?=
 =?us-ascii?Q?y+tHpQlJ+vFn1snrAPqs5LkYuGwc66MAJX5x63FS+tJRLu8AjOuXf7KL+GiU?=
 =?us-ascii?Q?n4vI2TwkqhavwxYV/QtPTK4nq256sDeWElK/hvifL6xaIpgrBfWIjLvKeFZn?=
 =?us-ascii?Q?4GDVyTXcccR2gm49aAjvAki/mKegmdCFv0vbdu+It7WghDcQWg2G+mA4ggXt?=
 =?us-ascii?Q?l+a+Yt2dG4fg7snDn1ezSt6LJq2kjP4bHXs/F6fpT1B0mOSzhPq3uXc6E55n?=
 =?us-ascii?Q?f/x4YtXtO3P6ATXKZO/WPpkuqrR5DvBN93CvcvJ0Co4Y0Lb2fR+cBZIRe9Kh?=
 =?us-ascii?Q?OMzj5LkvJCZ5/r/5bVPdEQB8MIFVam8taIIT5L+4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96c8b53-9dbc-4141-f9cb-08da7c1316ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 03:31:05.4763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1uWm6QaJfxne0kL3XFY791MYYqi0LENtaIxhDAFs560SKXIYcIiNYmZzdDuDZCuzaX9B+uZt2/23suAuY/P+Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2749
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/4] Fix HFVSDB parsing
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
Cc: "Lankhorst, Maarten" <maarten.lankhorst@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I think this series will have to be posted to dri-devel as well.

Thanks and Regards,
Arun R Murthy
-------------------

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, August 11, 2022 10:30 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lankhorst, Maarten <maarten.lankhorst@intel.com>
> Subject: [Intel-gfx] [PATCH 0/4] Fix HFVSDB parsing
>=20
> Fix issues in HFVSDB parsing for DSC support.
> Also minor refactoring in Logging.
>=20
> Split from original patch into a new series.
> https://patchwork.freedesktop.org/patch/495193/
>=20
> Ankit Nautiyal (4):
>   drm/edid: Fix minimum bpc supported with DSC1.2 for HDMI sink
>   drm/edid: Split DSC parsing into separate function
>   drm/edid: Refactor HFVSDB parsing for DSC1.2
>   drm/edid: Avoid multiple log lines for HFVSDB parsing
>=20
>  drivers/gpu/drm/drm_edid.c | 153 +++++++++++++++++++++----------------
>  1 file changed, 87 insertions(+), 66 deletions(-)
>=20
> --
> 2.25.1

