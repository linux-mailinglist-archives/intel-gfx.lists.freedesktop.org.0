Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9EC59F1A8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 05:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B9011A367;
	Wed, 24 Aug 2022 03:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18175113EA7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 03:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661310160; x=1692846160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kvVGoMQJ06+EkNQlsQpty7gNFfCXNqSw9e+LVrdF6U4=;
 b=csoA+uKxH9prgfKvPY+UckMW8gPzDJ0rP1lk5enhA9YsCErNPXAj2bT1
 NR016ks+HzlaRMG2CSIlT9S+GmvHd+ovv4RS3lQHtc4NKPurjMtm5sPhy
 pMZi9vueeZjLC62i7rfy2GmBROY8qtHcgTr/4SLXMqDdT9peygDImkntP
 dKAUzjpP9cgYUqzDSJ8c8G5NykbTjz2Y7rcBkBAqZ4pfYwvqr558ZaMlM
 QY9OEuJI1+SXS2dMCO03u71/YXuyXiUbrbi/T+D2dxB8RTbvxfnn6o5/l
 rAiMl3jcFrDNbQa4qWu4VUf0AEFTVpCiF5D39LEGE25JXp6uGz12Afgn5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293852543"
X-IronPort-AV: E=Sophos;i="5.93,259,1654585200"; d="scan'208";a="293852543"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 20:02:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,259,1654585200"; d="scan'208";a="586246443"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2022 20:02:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 20:02:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 20:02:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 20:02:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 20:02:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H8k9fH+j7ka8d31ihMp8Cj/BSZWnFzlqcxuZ/TcNaqns+OaVbqW2y/QAdA/Bs6+AA+HkrZTc33MnqXhCtzS6TH/pAqE4JapNDXUPXPBlReSO/1J0EGl2Oj8dlRbOPY7yDdRo4qBImLLsWXUQmQEnQZ2VVallq9SmhxfF1nlznBeE9d4YM/PxUHNR1/koxx1V4IEf1dTid4M/0nG/ZUgU4EKNOSo7yxl189B8V2zDtEMGh2Mq5o7g5Q5jiHdSg/8GiaNBeWG/1jtS7jBXPwxzLekudlWE0L/IIg3Sc3BZkoRtHr/kp1/MkevYN/wBAUxlebW6G5XKHjIq+FOINyuNRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvVGoMQJ06+EkNQlsQpty7gNFfCXNqSw9e+LVrdF6U4=;
 b=Z8p76NcQi+8uYpqKDxgV2XZKzpkykT44XkpZkucq41Z95nnnap1+xKMcrANG2v1p2koydXk+/vlVpx/M5w8C2yrk2LD/sgztdLH5+Av8R3tr+DWo6zsoWUZpyq2uGajbWfaM1M0DFPh+aSHcT6vitSkqCVt3pMZQv/KEyMTSNtgNEh/r85MXCpmXY+lsoDGBO2HT+nr+s4/aXRmsowANClvCpdX59Y2ttR8oLQ+Ti6aEEWVIp8jfMCJ2ZXWLfG4rsKrAVBh/ezC38nhjPJZox45Qcceh1oWmhy0SEs+25YZJ5iNwSXMUZH/BgqjYRPT2D7jCbdGewkSRqyPeh5+MsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN6PR11MB1955.namprd11.prod.outlook.com (2603:10b6:404:100::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.19; Wed, 24 Aug 2022 03:02:34 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Wed, 24 Aug 2022
 03:02:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYj8Fkt9meJM7X2US4ugUo7v9Xka28wCwAgADq2NA=
Date: Wed, 24 Aug 2022 03:02:33 +0000
Message-ID: <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
 <YwTOoCLIBf8KhjWB@intel.com>
In-Reply-To: <YwTOoCLIBf8KhjWB@intel.com>
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
x-ms-office365-filtering-correlation-id: 6b3b3160-647f-4dc1-add8-08da857d17a2
x-ms-traffictypediagnostic: BN6PR11MB1955:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n7K0ekYuEEy8hg+UwG0n0GuvAz/Xe4dHvokQ7IRrNaVg6mEKI8ZUpaghM99qXnOpWPvN0vJy0DXdifeuhS2rKGwGfu8u34dPTIuIsGQShyiyTEDcpF44sWJPtN2zb23DzfBd/0rIBpPkKa4MROqGlI2qXGtz8u0OnQobaBa2hIucHJhbcPNaPVLmNx+G589YZ4XWRbBJh/zSo63QKZf2w/IlXRqE7o3B8rbD19TY5HQU8laihFMspwt8vTK7RQTpLKvZTkluFG9TiFFgIcyJLapWFsCCvJ4PoqCyiwi028WIj5J1s6uWaBLVvEAw2/T6r/DObXj61LeB3mAeku+M8XAaVpSkbzB4gj/oE24NcaiZLrxUMAMxZxYCOV37Qu6OIrZ+A44jg6QQdod8baSWdNB8B+9CJhWjL/UpJGGt8oVOyp1IdVOdNxRTt5UeylVzwHdzekM2OhGH9XH0ebXpShKph/L0Z0sQsHhkQlcxFBA7iPcmsRSzfY2cTtGqn7Y1DfEF1g9olCKosHTYzs/9DanVxjexpk6+87GzD8AuxLsSGq4Hlu3sv9Fwixau3jboBtaGRzYl6vQcmJT8TJt93oJWHU4Yu+oqQhnDiLpCHNWW9agffxL/4mM+xchJ37BwMlsuR7A9bZCjbC2dPMyqczxqRJ4jXsRZKY+qQoZsVipjp6CRnHBKlTL8+G9PR87jU/N5SP1wbMY2Q6XWRcyFyyPMjP6HhJLaQf2moXOz+erBDg3I9VsUnZmSKe48rmtMJXTC2GKAPrHDGswdB3qGFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(396003)(39860400002)(136003)(366004)(38070700005)(478600001)(52536014)(8936002)(86362001)(71200400001)(2906002)(6506007)(186003)(4326008)(26005)(76116006)(7696005)(55236004)(66946007)(9686003)(66446008)(66476007)(66556008)(64756008)(54906003)(82960400001)(83380400001)(8676002)(53546011)(41300700001)(55016003)(122000001)(5660300002)(33656002)(38100700002)(6916009)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?l1ynqRrJ8hfKcBX22iNuyBYYJdWs3wCUO5VayTfU0h0/sYYuPoxW0W0eEk?=
 =?iso-8859-1?Q?3ckPbEcT/l8PaJP0tp+0O1bgL9OZ3upObpjf/vJdt5dy+b988GhUL2YwLe?=
 =?iso-8859-1?Q?EKpxN4jTo+AifGuTyv2MOPpJ64Y2AoliiRLtDZdNH0YCmVP6KBaZJjiXr+?=
 =?iso-8859-1?Q?/jrKF0zKpmxWJvfH2QdI8XBGGWOL8E/HCy+9nzv9QsSh1MuiXn6dJhDGJ3?=
 =?iso-8859-1?Q?iXfPrxsoUZAbIQqiptE9k+RQCPUBdhCk6x0P7WwnQBVU2TpNbunz5thrK6?=
 =?iso-8859-1?Q?q0BnXLel9+T8AiPpmMgenWZa0GJrUwzTQDYEfpAyyaq8rr+YqwVh6O7IM2?=
 =?iso-8859-1?Q?W87pRgso3w5G/8wrQ7lON8Ioboks0y+aiIGemuwqaAZVLAZ17Y28vzuC6A?=
 =?iso-8859-1?Q?6KtpgjunGbCXH2TDjY0/cYqVLni72KaNkewXkcXgHCp/sb4goTtX2GjhDQ?=
 =?iso-8859-1?Q?wiZILoA4HsRFGuhojqiNIGa1CC/DQu+flOfqFLjPCS5kgB1W2k/uxK41Iz?=
 =?iso-8859-1?Q?ONPMwzYY6ilDPmcSdgsVy13kcOzF6SLDyx5sSuhMgAkp0Fko2Ztek+UkKu?=
 =?iso-8859-1?Q?SPb3gzZBufzrnsp9LFN87KamMv9xamjaCKUR2kzbWXA/vdZDU4PpRgrJIF?=
 =?iso-8859-1?Q?Kb6cPecCIkLxt1AQ0z9yBC+RoKcIXdmnkYOFW7of1okrplhaapzJqXuzvg?=
 =?iso-8859-1?Q?lmBNVCFRMTdE2Qd3wlImpPgNVI349+OaZZFa1bRF5CbhJK0Pk7AjVHvXDV?=
 =?iso-8859-1?Q?u+DAerSN+0/D3EAW0WcWXgHps/JZeHhgbsdegVxhAC3sIPgVo/vdG+vNbG?=
 =?iso-8859-1?Q?zoY4FB4XqpgW11CYWWKF45vt6Sc56F9vM6v4fbovxBWJG6jzEZsS3WY/YR?=
 =?iso-8859-1?Q?T8ulHFljScIstdUkoGEpr8WB1HK71786Wz3XMCuND9yTVN57gMfcuYlYW/?=
 =?iso-8859-1?Q?dpay/K9jPaMNf8FKcZP2b+q/EgmBcqpWztkYVpPwBtdqnjjS/gcbusvjQ1?=
 =?iso-8859-1?Q?/y4Phxee1wZgyKj2lM6Zc+3vHK4cwS46hes1mibkm0dlGn0kD4oB0NC+G9?=
 =?iso-8859-1?Q?6PEHYIwnPa7VLvtpUbQmJdr39RB3F3FQQP4tjckBlzxDpie21uwth+m8Ia?=
 =?iso-8859-1?Q?R/cZBTGl0vG9yX3f9da1uwbh+p9sSbyh8zR+RkeTxj3wP2Z+FqU+BTz+bq?=
 =?iso-8859-1?Q?9MdnfBtqW9nNMj2ZDOcrSyiSWlr9Qp2UCcwC7In/QDj5GxtrxMdmfNaaMe?=
 =?iso-8859-1?Q?gZESGhRECURK2Z6vjSReVbjPOwcCxc9ilmaha8CriBGqX1FAKmiFCw1Iz3?=
 =?iso-8859-1?Q?w97ct1BglicoHVeH1fROcS4DevTrO5LcNbs/5FD78xQRU6pfwP43HSbnFc?=
 =?iso-8859-1?Q?usI/hjKvb/FSiqr4XkOOJ7Rw1f548Cjn2nql7XaNY10g7z/EbSYRwM97Zf?=
 =?iso-8859-1?Q?XhslcezXphAkKVGvksqC2ShdoAt+K90yyY8KrD5GCrRBbI1lrcHRfBzpFt?=
 =?iso-8859-1?Q?6Mqrq24j377FGjPOS8zqi5MMODiBP2d82AJF7f8ICvrHeQ3toaZb5LASzO?=
 =?iso-8859-1?Q?tuEsoBJBMsNEmNAmu/M7hg+uVyfyvcC1QRWu76FB8k9Pgc7/00RF8NmgoZ?=
 =?iso-8859-1?Q?P6aweM0W0AFVAYtnm+b18uejXAzOhVVZEC?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b3b3160-647f-4dc1-add8-08da857d17a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2022 03:02:33.9665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OUpTJpSv3irSF2yKFA/c6BY6zFvKGx1+sKwAsGqgHESNWgirwa1OS/X/LlgQKPjdeLLcHviiDAB++lc3EgRK1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1955
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, August 23, 2022 6:27 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> On Mon, Jul 04, 2022 at 09:45:48PM +0530, Arun R Murthy wrote:
> > Intel Gen do support Async Flip is supported on linear buffers. Since
> > we didn't had a use case, it was not enabled. Now that as part of
> > hybrid graphics for unsupported hardware pixel formats, its being
> > converted to linear memory and then flipped, hence enabling!
> > This patch enables support for async on linear buffer.
> >
> > v2: added use case
> > v3: enabled async on linear for pre Gen 12 as well
>=20
> I didn't think it went all the way back to gen9?
>=20
It's the same as other buffers. I have just added support for linear buffer=
 in the present async flip path, so the platforms on which the async flip i=
s supported will support linear buffer as well.

> Also we still don't seem to have any tests for this stuff...

There is an IGT patch in queue, once this patch is merged, the IGT patch wi=
ll be floated.

Thanks and Regards,
Arun R Murthy
--------------------
