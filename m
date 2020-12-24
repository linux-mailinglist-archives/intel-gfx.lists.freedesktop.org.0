Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C592E23C4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 03:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0EE89FD9;
	Thu, 24 Dec 2020 02:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2055E89FD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 02:45:44 +0000 (UTC)
IronPort-SDR: zYT9/eV1zKtdn/9Wm0YNlYu+hlXwvJXeRhtTdtBH0F9P3hSjJ0kwOQgA4iUF9h4W4OAWwsNrU8
 aDeHTNamcKgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="172590011"
X-IronPort-AV: E=Sophos;i="5.78,443,1599548400"; d="scan'208";a="172590011"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 18:45:41 -0800
IronPort-SDR: xu58QlAdV3fpPtLY4i8GDhU6hLOwwvGRjGqOsODVcp3Az48eHqwKEm43AT/ogUoaG1eC6FLNIt
 Td698VPRj+bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="390824347"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 23 Dec 2020 18:45:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 18:45:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 18:45:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 23 Dec 2020 18:45:40 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.53) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 23 Dec 2020 18:45:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bi79MtHgrfv5IhRCpSN9cN87zfUkjRZMF/xggdta0hgqPX73YBKb8lfu3qqPLiZfTJhNk7fpmVSMrS3igDJznhRjZ3fLYG0o/BRgB/IImG3dNfOfDq6EqMl9DfcweHe1bZSaz1CbfZzFFYUivppcojuJk8qsczrdBpJyh3XUdND+BzvUJ8/Z8ckXBDcLqrujIh7Z5tyjwvZMV/J78ixVIoXzOD/hjBBJK4poPMQ9m35IzxEjwuY6JJj3bJ43NtI6LsB10fs2Pe+hUtVVg4nUx6q4Y0OvQycRN9tooCfOWAoDZsA/EB/PZeYdgen+bfcGaDtEi2aTG4vSKRH9Ubjc2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FxfxCC6PZ/k1xDDTXBTy57HZVL+5q1iq3urVEoyWuI=;
 b=M8zicwYnNVQO8NMh8B5BtnDpb3Jz3QFy9o+Hhinn011ST8/ZY/Xs2rcEgjqA3SYL5tGgMAgn294r1wLe8/ULCwf6dqjC70DPHlb4pNGMtxQEb+Cd2CcUE4gG5LFrQl4Xa8sWX/AYrCpF31o+jLLgQkBHDQZ1MMrlELTUY3bepFdf6KPg71NpF9QKTxZODzESL4uO9EZ7gm2ZEjk353ALE3HRwWH7Id8iJIrWLh3bSr4nzav5ixPujzaqhIpYfdXPoMFVT77crqYQZTr3Ckj5/hHQo8jDJEEFHREeDPUctmCqR7r7ULu560v2Juf9xANggz8COtDH18w7oBnTQ2vfHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4FxfxCC6PZ/k1xDDTXBTy57HZVL+5q1iq3urVEoyWuI=;
 b=Q3i3HM8poQaBuOXkRs5lteSjMQBXWBwvdOhCTM5mbt6yu0q7lD1DLib8RIQXgT02SUxR6HgUL8cPCeZ4S0VVVrqC9UdoQAtI/Gs/xLYaZsaYynncLMa60fIzLnnHOangot0By0rijZODBgu3UBMdMlR40OI490A3ov0GEHNZHDA=
Received: from DM6PR11MB3340.namprd11.prod.outlook.com (2603:10b6:5:56::14) by
 DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3676.33; Thu, 24 Dec 2020 02:45:39 +0000
Received: from DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481]) by DM6PR11MB3340.namprd11.prod.outlook.com
 ([fe80::c471:66bd:15ed:9481%6]) with mapi id 15.20.3676.034; Thu, 24 Dec 2020
 02:45:39 +0000
From: "Zhang, Xiong Y" <xiong.y.zhang@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Try to guess PCH type even without ISA
 bridge
Thread-Index: AQHW2Z7c9LTyS7G4IkSVoA2f8Y/aRw==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 24 Dec 2020 02:45:38 +0000
Message-ID: <DM6PR11MB33407E0B4EF08CD25468592DBBDD0@DM6PR11MB3340.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e13045d8-4b2b-4534-dc54-08d8a7b5ff7c
x-ms-traffictypediagnostic: DM5PR11MB1324:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1324F9BDD23714670404FBFBBBDD0@DM5PR11MB1324.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QslTYsO86QSeRhJi7HepK2HDYWF7duPjSVtTUTOoER0+KlHFgcLaHYH5jgkpO5HE3b12n64dwaLZyGGhCqyxjY7WHojItyNMoouEyEf7RF50nW3fRScukgv0Zj+8FBp7Uq3xR2WMjArnwGEPCZnLuZEQ0AV+pdixuQGaeKVImNdaJPwT/0O7iqp2VXfQYz9+GYqngPNJsZRaw5pXXrv6LxKbATFwu8HHy3MMiCR10BDxi9jflBEyV4hfT1rMrkvN2w8MoflNl+/zJ4JLkvezqS69jmJBn6Px8HvFpqg+NH0Nk9Qwapd+61GCXy6E6EXrBePBWz0UiYGoC3jRcnO10+yB6dfUGSF6XS4rppJxuvkeXSfEISm9b79z1T+MaPDLrkSBgnBr9Rcgcm8hpMXyPwzvdPgcEyF2w4WGP5pqnxSZuXwKBbTjFXZD/q09CiDs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3340.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(76116006)(64756008)(316002)(71200400001)(66946007)(110136005)(52536014)(7696005)(54906003)(8676002)(66556008)(6506007)(4326008)(66446008)(86362001)(2906002)(5660300002)(83380400001)(478600001)(558084003)(26005)(9686003)(186003)(66476007)(33656002)(55016002)(8936002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YJO4Exto+1hHE7xz9uWctoA7fNfjH+8tY7jDu1N15epNOd/lR2duy2blnlbE?=
 =?us-ascii?Q?gkFUp3hbSSLFK9G5QOUicAmhjsxsxiiDRIrAEVpe5YrpdWETzgQxjNMd9Iwh?=
 =?us-ascii?Q?BljjGzJqqmmR6qVh8OYIK+VFGMBmn5whXWBf27TASLTh3ujyE1DtYDTzQRLS?=
 =?us-ascii?Q?uyWKUdoT10RnoQ0taeRdUFO3A43mC31Z+7/Ttb+1qMVPhJO0DSJZP2g+N1fG?=
 =?us-ascii?Q?7QFMpZ3bZlnfjUQaID7Y/Xa9KLoxLZc359QK430wPEWFWkrfV2CuPhOQXpSk?=
 =?us-ascii?Q?FI52x3S5AWH0n4o+7UaIejQ3aOjUGuY+lRcQAiKc4C7f0oENfodOFLXz8/Lm?=
 =?us-ascii?Q?r75MjFTTIl3RZ/rQ8gdSN5DXMwRdNt9Kcp9T9Vw8nEDdcT5qtdifFJ25x5Gu?=
 =?us-ascii?Q?DEGbN3dELMpOyiWziXsALd0m/nS/c7kddh5s+J/IwzuOqu7lacbOCz7UTmHw?=
 =?us-ascii?Q?VIX4fe3uPgeRSq76fPjI1WKEWBQch/+fMTEal9p1XKm2JQiUohj/J9k68ypR?=
 =?us-ascii?Q?YgttMoNRkAXQAD2t/fhTZOqgaJZTSK7tjaprkPM2jMBZdgkFH5L+vUnNi1av?=
 =?us-ascii?Q?jAJovuuLV5OM72JUvfMd8Yo5ZODBOBkXUTEnSfaKcHL8oNAQ9NnsKSi6UzQH?=
 =?us-ascii?Q?S0r4YaW3RvWhBJ6/nV3wNaGqc/S/M1gdjbxx7G04h5E+WNZcgJT/pA3zqaUZ?=
 =?us-ascii?Q?A+nC/bibMDG3ZGis9p+ZqpHBu48cZyd4IPfQ8TuH0a9Ao9ZlZkBcTQDtmQr9?=
 =?us-ascii?Q?zUokagWPinSsFWM+g/EqCfH5cYlWC9b8YkFbx5uTKEpfa1YrHrGllNCB4AJ4?=
 =?us-ascii?Q?d4uCoKhusybZLkmRlHoaC0PedH/JS18nTYztNOWNJ42NNdMgeRdeNU/ugla2?=
 =?us-ascii?Q?SLAsCVxyRYLUskEmXWO3mslOCHb1Qn0MUxOM0IurogTj301miizuB0SZ7aSd?=
 =?us-ascii?Q?dcqWbo7UHVNNLkDd82jK88NloQ4pY63YKObU4/MRH1s=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3340.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e13045d8-4b2b-4534-dc54-08d8a7b5ff7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2020 02:45:38.9347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E7LWwbJdMZdhZ3bnyKjqwP1O2B08mAE63n9wmJ0L2/8rw6tZPSlOr7ym8CJ0/wYhZGEH4g51SENRvLC++faJPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1324
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Recall: [PATCH v2] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Zhang, Xiong Y would like to recall the message, "[PATCH v2] drm/i915: Try to guess PCH type even without ISA bridge".
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
