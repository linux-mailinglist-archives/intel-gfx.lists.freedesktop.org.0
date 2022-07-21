Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED34057C9BE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 13:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EDD8F746;
	Thu, 21 Jul 2022 11:29:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2598F722
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 11:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658402992; x=1689938992;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lNzYu9l107nHXpQ7s8dzQ6xDZdoNRHykCPWCxwvbbvE=;
 b=XLaP3GLJOkaz0nrizq6H1PKI/hd1LbB6xZRfTPzWKFzC5jqsKyyn6hUk
 jbdHoMj0wf8Rxgo2nBj1z36VrkVCr9OMPmKit4hQUqYJWv7nMgO9p35lu
 qG+ST18Rc8DIp5RVnzsY2uG2hPRNlwwTWX8HMWBFZi6F9RfCVuIlINPfW
 5WFanP+VPjrJgOp90W8xCowM3+zoBwfuq9QzL0fkogKQI4OUCFspU17ht
 DaGAP0u8sWPv5LcMgfx/eJjIFZZyhPgI3EOlSxAWeGglILQJObPaiaPp3
 ucOdp1KbkaelEfu6SSd51mWBTsY8JADsMT/iQ5IIM9EDmJUM1gPaJJ+z6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267417681"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="267417681"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 04:29:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="595575873"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 21 Jul 2022 04:29:51 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 04:29:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 04:29:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 04:29:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 04:29:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEwGrtqUIuChkLxxEnnHGOiqEe7pcu3GaAm8WHkbbkhyzo8CpHb1bkJmJ4dHiypIKJXaJL+gK9b3HHqrePXwBj70/Wb5uXztx0YFiUEKpYvKXQ4/IpAob7lIVLLILM3hKCqpw3dzT8qzvsGCKfiB3XBjCfcFYTFCNZJNoZo7aYYLGGni2t9mJMW9ZevPaTUxiNnTqXr9q9h9Qerb67eq4QfIULSrUTKAeVxeztza9KTLCkSRhaU0Ws2a/76b4Kl54gCt69C6PiDK0tcRnMQWyvA0Cst/yiLMPJHbbhLj9KUPvvoMLkUO+cm0qovYRtzF0/oyXz7AYqV3S062m998wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4JBhp66gbTul5GczXBnZ8jRhkC1nqKg6XWdAN+t82Q=;
 b=iXsIVc82QxVPj4/zf1L0J8A1yVXlONxYg5p0w8xLsd7fKZw2W54cyVZ7Hh6oEH0zkCVOSMjgYHoZeaegjucY4YUDkQycSSdzMNcKSl62wXCEy/YRSMdf3WG99P4d1MBhOyzzLHoxy+aybDqTd3eklQ8W2YugdX83kZf1hjQ2UYHqST1yen6L2sjH+qOYe3fKTcnR7fWQi2w4ZjzsTiraIksSoZpOdErnZYr8M/umCEUu7lWldfn/UeTR+Xe+NURa3oPaeZZycNeWONJoQfJZx7gULiHTQpotQLLAeSdZG2fwqF+DFsoosZMOjX8h4JyTYbvb35MbeW5yLOr6JKWRow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BN6PR11MB4034.namprd11.prod.outlook.com (2603:10b6:405:7d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 21 Jul
 2022 11:29:48 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bc53:d92f:33a8:110]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bc53:d92f:33a8:110%9]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 11:29:48 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Ewins, Jon"
 <jon.ewins@intel.com>, "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nilawar, Badal" <badal.nilawar@intel.com>, "Deak,
 Imre" <imre.deak@intel.com>, "Iddamsetty, Aravind"
 <aravind.iddamsetty@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 6/8] drm/i915/rpm: d3cold Policy
Thread-Index: AQHYnOcMDQki31XGPUS2zRoIb+DDC62IsDdQ
Date: Thu, 21 Jul 2022 11:29:48 +0000
Message-ID: <CY5PR11MB62115D47EC5757DE9863DD0495919@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-7-tilak.tangudu@intel.com>
In-Reply-To: <20220721095955.3986943-7-tilak.tangudu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa4cd0c5-e454-4912-7be9-08da6b0c51ed
x-ms-traffictypediagnostic: BN6PR11MB4034:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CEOmtZ8FMS8xws98km2+eaeMl2DXw9nMqDwjwuLHizBL21Vcz/yCeOXGtGXlCCW/1y/cjci6H+X+Q8INgBrirIRlzNcCs3jQEb0czlw+9rCXTJxhSmbAwL6pCe0s369zDvEuAQVDlxQn+htawCwvXXa/DFzunNmTeBEViltcc9p0UwqPSBEuf94eBEROa7P+Hj/h9mNC7vd8Q2CIvnD9TjqhUxnVLjglMKDc9KusO9MRzGxMQvqRVC8uDu0QdE5jNskLmpe6o1uiSps/2SXHRsyOD8G+FBG5FIUcXjvqTvNCH0vA9AybT4BjQCAOXEJFNV26bZeW72blsdUrsb5lMaYZM18XVVbKl6z+eZ/uDRuMbkYDtr34UqEfbSxX3f53T7Q6nnWzmofi20R4d5Os0lvZIQQqmxBDpKQHY/eClCNgQIUTo/R7TbfYYJ0yd7Z5MpyQmKfbz26oQVKzCL6MqswS+M5Tw4mzBsI6oplQbdg2beoBpoV2bYVyDJV+gW528hzo+Prtx9pOaAHFw5DiKN8nz7F2dsAijKx1XZmXQq1wqx/y8NPUN49QIIaIKRR7WCB/JjYCdmyNYL3VQZ+jZ7BSk7TSNStg5Md2iUJlY9mLeHYpLlAmKecaNCAIaj3c1O+v/wkIU2euHkFao/tJTKb0nSU6EEb2WKEAjN0L2uDewjBawCBzTwsawKkFQSxHIvuGMaMdVxZ60jtm2QdyyPtKMzDzGACrtQgD1mBnEoRUNKnQM0YLcQE5k3LPi+SApj5Ceb8JI80hotRGCXsiR6zef+HHdU+7oU/vrgfOIyyl44kImTPXmJ7BCr0/YEV64ivl2qZBDsF0w62QPnM+cciNeF5UlBkOwMJ8fCk6guR7GYxBSIZZHCipMbaN8Ptl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(136003)(396003)(366004)(39860400002)(26005)(6506007)(7696005)(9686003)(5660300002)(53546011)(2906002)(8936002)(55236004)(52536014)(76116006)(478600001)(71200400001)(110136005)(41300700001)(186003)(33656002)(38100700002)(921005)(38070700005)(86362001)(83380400001)(316002)(55016003)(122000001)(82960400001)(66556008)(66946007)(66446008)(64756008)(8676002)(66476007)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?odR6y6o6H2+dKQiIRmKwldQljO6/6D76cH/UaqJgHwyu9vxKkO3C16kMRjK7?=
 =?us-ascii?Q?CbcIB6hyU01FS0zILfZ2b/6dd9ZTrflIEjgiuBTBh6UuRPZl7mIL7PTXn8TW?=
 =?us-ascii?Q?1USMmdOv6B6i4z/xTt14UdACgJ11UdLJLBUQB/1ZdgBYCOluOlUU7LWFgbbp?=
 =?us-ascii?Q?0ka7hn3LajyOpt1OUlS7tExtsqYSipbE2Mo+FZQ07q+PX2GFLLQc69kTwxLJ?=
 =?us-ascii?Q?TIOceA+w4Sf86GQIeh+sNNDk8GSMw7w1pkRJA9eR3oVYh+5h3Pe3PiLT8Ljm?=
 =?us-ascii?Q?Xped/yBy/+OprgSKyWDlcjEmus3i07u6SnLHKtfLtBTLckVfT2cPKkh6Kb3j?=
 =?us-ascii?Q?JuI4xhWPGEFSFpgw2hl/l+5xVC7wEv2XNJyAwyNuwUJAGiZBfnW73KSzmDkW?=
 =?us-ascii?Q?dfjGa21gH0GnDtN6exWwWZYZdvx08cC+O9SemYL1O22AKf+e12RaQbbnzOrk?=
 =?us-ascii?Q?qmUA8rA+bZCsIA5R9GPpNp8P+qcfLEu2xgb4KDJEIAwpnzR6ESW3uqowffq6?=
 =?us-ascii?Q?Sx6XZmeQEgJegqSqlgfylGXNJMKAg390QQOStOmOvNvk2VFF8i3sFJ/Eison?=
 =?us-ascii?Q?xb22E0kHfqg2szZJ3i4fxwQWLcoKscZekwGNMY3Lz5m/joawfr+18VKVfoCx?=
 =?us-ascii?Q?3Jbp52N8m8nsHRuCBYsu+CHK+41aHMwP8t3e0ewSEwJbRQ720pgc1RYbo0QN?=
 =?us-ascii?Q?gf/qmb8Mt8N94HvuZ2QiDKE0ICbIcOHDE5gbNSsI7iTOho2z5nt7azqCVasI?=
 =?us-ascii?Q?WE2BBw/9w4KGbpR34vdvqZ65tSfa9gTCr170V0umo0Rtpkh0WOUJLLy0Xw9O?=
 =?us-ascii?Q?nOBCxkxcZWcX97SenUtcNHMIrtuXYeHWAMGJ2+sVDlAG/OeglQ3FyaPhFEE+?=
 =?us-ascii?Q?W7xOL9M0wbQHRRnwkJD0fKrUa4uwVGRoZVL1EUrCdwjvPyY0NWRmOHsMQfbo?=
 =?us-ascii?Q?mg6S6/zSaU+FVzHFYN5znRKUzYeZSv9djF1yYdtgQUDNkInOSAn01NREitRv?=
 =?us-ascii?Q?Qsl9ziqxTyEF1EOtbe9kC6GH9wiVx6DamJvT9De1ftBYSxa0j6NfYbcvFe1m?=
 =?us-ascii?Q?7BNcQjkT1RVsKOdZBqXeW6N7XbG3K+yjufKnB/MX1HTZtmp+10owp1ddiTNG?=
 =?us-ascii?Q?EsK0xOqxfu0XpESsfGbDdTMcF3xIViIL12oaRoKYbfHPvnMIc0JYxaYuM3gy?=
 =?us-ascii?Q?0L1K7sFiMBEi7XlDxGzjOO12aY5sIbhWDk6+YKAjY3x/akbswRqo79bcz2Oq?=
 =?us-ascii?Q?Ajy7Qv+JQlAEGK3q9oHmBnEk9FkfwTKf1dXdYx3HwSBWKGGdM3oE7JwovIlY?=
 =?us-ascii?Q?tWXpM8ycJsqt60j/o4h7eD7JB8YCF3Kv78OWkK4d/LIejwntA3vQyoAkGcXT?=
 =?us-ascii?Q?6i4F3q0YNs+2jIH01oe31UMxTg1VJ55tUM5y7KuiGtgroROQjHQ0MUeXwZ/c?=
 =?us-ascii?Q?09CUu+WO/fKmLixcFT27xEtvxJNqMh4mkMSJLvcTeyWKp70hU3KHVgDQSh4i?=
 =?us-ascii?Q?c1uUm04OpfP83Bpznkg2Opfu7XChkKBrCQuWexQQmAhcicgnuIdbsQhTxNAp?=
 =?us-ascii?Q?lZxzdldeeWYplbqhadRSm1BvrZ1soZBVRBicw9ur?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa4cd0c5-e454-4912-7be9-08da6b0c51ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2022 11:29:48.4488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t4qX9DG0btOasG/zfd5oU2OANLOC6MStL5OjCVdSNoY+UaLonNNb7gBgvTxD9O4QOP9m87a90MTBoTXRxst2u1T2Lg/DvyB2a6rCyNK2Ssg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/rpm: d3cold Policy
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
> From: Tangudu, Tilak <tilak.tangudu@intel.com>
> Sent: Thursday, July 21, 2022 3:30 PM
> To: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta=
,
> Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Tangudu, Tilak <tilak.tangudu@intel.com>; Deak=
,
> Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 6/8] drm/i915/rpm: d3cold Policy
>=20
> From: Tilak Tangudu <tilak.tangudu@intel.com>
Please don't change the authorship of patch.
>=20
> Add d3cold_sr_lmem_threshold modparam to choose between d3cold-off zero
> watt and  d3hot/d3cold-VRAM Self Refresh.
> i915 requires to evict the lmem objects to smem in order to support d3col=
d-Off.
> if platform does not supports vram_sr feature then fall back to d3hot by
> disabling d3cold to avoid the rpm suspend/resume latency.
> Extend the d3cold_sr_lmem_threshold modparam to debugfs i915_params so
> that, it can be used by igt test.
>=20
> If gfx root port is not capable of sending PME from d3cold or doesn't hav=
e _PR3
> power resources then only d3hot state can be supported.
>=20
> Adding intel_pm_prepare_targeted_d3_state() to choose the correct target =
d3
> state and cache it to intel_runtime_pm structure, it can be used in rpm
> suspend/resume callback accordingly.
>=20
> v2: lmem->avail stopped tracking lmem usage since ttm is introduced, so
> removed lmem->avail usage in policy.
> FIXME here, lmem usage is not added, need to be added by using query
> functions.
> FIXME, Forcing the policy to enter D3COLD_OFF for validation purpose.
>=20
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c      |  6 +++++
>  drivers/gpu/drm/i915/i915_params.c      |  5 ++++
>  drivers/gpu/drm/i915/i915_params.h      |  1 +
>  drivers/gpu/drm/i915/intel_pm.c         | 35 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h         |  1 +
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  7 +++++
>  6 files changed, 55 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index 4c36554567fd..2b2e9563f149 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1581,6 +1581,12 @@ static int intel_runtime_idle(struct device *kdev)
>  	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>  	int ret =3D 1;
>=20
> +	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	ret =3D intel_pm_prepare_targeted_d3_state(i915);
> +	if (!ret)
> +		ret =3D 1;
> +
> +	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	pm_runtime_mark_last_busy(kdev);
>  	pm_runtime_autosuspend(kdev);
>=20
> diff --git a/drivers/gpu/drm/i915/i915_params.c
> b/drivers/gpu/drm/i915/i915_params.c
> index 6fc475a5db61..4603f5c2ed77 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -197,6 +197,11 @@ i915_param_named(enable_gvt, bool, 0400,
>  	"Enable support for Intel GVT-g graphics virtualization host
> support(default:false)");  #endif
>=20
> +i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
> +	"Enable VRAM Self refresh when size of lmem is greater to this
> threshold. "
> +	"If VRAM Self Refresh is not available then fall back to d3cold. "
> +	"It helps to optimize the suspend/resume latecy. (default: 300mb)");
> +
>  #if CONFIG_DRM_I915_REQUEST_TIMEOUT
>  i915_param_named_unsafe(request_timeout_ms, uint, 0600,
>  			"Default request/fence/batch buffer expiration
> timeout."); diff --git a/drivers/gpu/drm/i915/i915_params.h
> b/drivers/gpu/drm/i915/i915_params.h
> index 2733cb6cfe09..1a86711038da 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -75,6 +75,7 @@ struct drm_printer;
>  	param(unsigned int, request_timeout_ms,
> CONFIG_DRM_I915_REQUEST_TIMEOUT,
> CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
>  	param(unsigned int, lmem_size, 0, 0400) \
>  	param(unsigned int, lmem_bar_size, 0, 0400) \
> +	param(int, d3cold_sr_lmem_threshold, 300, 0600) \
>  	/* leave bools at the end to not create holes */ \
>  	param(bool, enable_hangcheck, true, 0600) \
>  	param(bool, load_detect_test, false, 0600) \ diff --git
> a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c index
> f06babdb3a8c..20b0638ecd5c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -8287,6 +8287,41 @@ void intel_pm_setup(struct drm_i915_private
> *dev_priv)
>  	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);  }
>=20
> +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915) {
> +	struct intel_runtime_pm *rpm =3D &i915->runtime_pm;
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +	u64 lmem_used =3D 0;
> +	struct pci_dev *root_pdev;
> +	int ret =3D 0;
> +
> +	/* igfx will return from here */
> +	root_pdev =3D pcie_find_root_port(pdev);
> +	if (!root_pdev)
> +		return ret;
> +
> +	/* D3Cold requires PME capability and _PR3 power resource */
> +	if (!pci_pme_capable(root_pdev, PCI_D3cold) ||
> !pci_pr3_present(root_pdev))
> +		return ret;
> +
> +	/* FXME query the LMEM usage and fill lmem_used */
> +	/* Trigger D3COLD_OFF always to validate with all tests */
> +	if (lmem_used < i915->params.d3cold_sr_lmem_threshold  * 1024 *
> 1024) {
> +		rpm->d3_state =3D INTEL_D3COLD_OFF;
> +		drm_dbg(&i915->drm, "Prepared for D3Cold off\n");
> +	} else {
> +		/* Disable D3Cold to reduce the eviction latency */
> +		rpm->d3_state =3D INTEL_D3HOT;
> +	}
> +
> +	if (rpm->d3_state =3D=3D INTEL_D3HOT)
> +		pci_d3cold_disable(root_pdev);
> +	else
> +		pci_d3cold_enable(root_pdev);
> +
> +	return ret;
> +}
> +
>  static struct intel_global_state *intel_dbuf_duplicate_state(struct
> intel_global_obj *obj)  {
>  	struct intel_dbuf_state *dbuf_state;
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 945503ae493e..7827b0c1a2f3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -31,6 +31,7 @@ int ilk_wm_max_level(const struct drm_i915_private
> *dev_priv);  void intel_init_pm(struct drm_i915_private *dev_priv);  void
> intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);  void
> intel_pm_setup(struct drm_i915_private *dev_priv);
> +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915);
>  void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);  void
> vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);  void
> ilk_wm_get_hw_state(struct drm_i915_private *dev_priv); diff --git
> a/drivers/gpu/drm/i915/intel_runtime_pm.h
> b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index 99418c3a934a..568559b71b70 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -22,6 +22,12 @@ enum i915_drm_suspend_mode {
>  	I915_DRM_SUSPEND_HIBERNATE,
>  };
>=20
> +enum intel_gfx_d3_state {
> +	INTEL_D3HOT,
> +	INTEL_D3COLD_OFF,
> +	INTEL_D3COLD_VRAM_SR,
> +};
> +
>  /*
>   * This struct helps tracking the state needed for runtime PM, which put=
s the
>   * device in PCI D3 state. Notice that when this happens, nothing on the=
 @@ -
> 52,6 +58,7 @@ struct intel_runtime_pm {
>  	bool suspended;
>  	bool irqs_enabled;
>  	bool no_wakeref_tracking;
> +	enum intel_gfx_d3_state d3_state;
>=20
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  	/*
> --
> 2.25.1

