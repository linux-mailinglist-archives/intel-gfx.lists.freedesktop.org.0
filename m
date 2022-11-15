Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D1C62A012
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 18:16:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C85110E426;
	Tue, 15 Nov 2022 17:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023B610E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 17:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668532564; x=1700068564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VQznpuCrQm8g9dWltZdn48Yd9iOLdrFHzG0lZpksLQk=;
 b=QVUnuvScWUeMzKGb8Wdv+xMBQt+4ouEnmTmk8/dZsB8ZSrjfgV9v1EXa
 LjzzeKma0ESu3b5heSosT5DoGkzOPdsr8kT1C+BvtPENhRp6fFD9FEIYi
 RimXv7Lb+JMtxhG9eq2uwfpdtE4JKN3k4tL9arh7p7dYY227muVNo3NG1
 Vpj9G3hdxylYVR88IEpdEVqrCeamHTbqgqimHjX2ui2KP1/iokaMD5qfh
 JlJt8u//bDtDAhrZCicuQhQxYIEgjdxzQqlYp2Gu7Rqx1OPIwEn+/So4x
 9iJMHWP44XjlxS8+PgZomW39w995QUIZPEw2ZPabj6MG9VeTPZtUjo6Tc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="314122282"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="314122282"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 09:16:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="884037017"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="884037017"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 15 Nov 2022 09:16:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 09:15:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 15 Nov 2022 09:15:59 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 15 Nov 2022 09:15:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=leojqlrjUW8d+uBXz0L9/BZBeK+bQHM6sD4Gz6C8rBw0zKczwiQI903t9hInWeWNf3c0XhJKvHGFyWVxrYVFz6Uzzy0fHdpmTHNqX/HiWZh3W4jbzOS2mx0ueKsFy9QNNj4Fd0w7gwGIETsB3Sp6ybPiaqrIeJM6ra3kBipp8AK8SLXazEb+IpA2hZr0XtUVoQ+wCO1UkuFhhWKJNjnJOOI1OLyljssVLtxpMtxYmkCxZD+KI0NtaEeYwVZ4puM+TFypmoD2c2pIH5F/ltNDwiLmlfeGY85a87y1UWnBUWOKhtj5BKybp7Apx7lLB52JCR/seYP4/VYXZEBQ9uwRVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MauIOf0NXME6each9AQ923iOJtx0RMHYHOWKFPM5n5I=;
 b=TKr24dVwOhw5fUapN9GTLsB8dn9uB/suVFAzzEAZQ0TItoFhaW1ComdpCcbSWDKpIJgxOS2G0IDvL6fSvSxlmy4IY8iYgth147Ge0lz4+/9E3guBlC3HdqW5+oSpvhHd/iSaWLFyd+0/wKSP1IZGVyhadbivNT19Ar8/l7n62G2APxrzhP8xilY2WCcuRykFbRj2hxgakt51f5tNIJ4p2zvzpH8aGNHTZnQ41UxfEziaamzcKRdq0cbw2RDTxpx/z9TZOUVZWO12j5tckpcYZe9+JYiIXgy4DT3rxih0zF0Gan/1ej+DnAI3+Jyiq+jbiXl7fEFX8LG9EM1NQDyu7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by BL3PR11MB6482.namprd11.prod.outlook.com
 (2603:10b6:208:3bd::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 17:15:57 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 17:15:55 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
 changing cdclk
Thread-Index: AQHY+GuqpRj5ndF1xkmRVKvqNqFwGa4+/HCAgAAO+BCAAA56AIAAAXnQgAAKTQCAARS5cA==
Date: Tue, 15 Nov 2022 17:15:55 +0000
Message-ID: <CY4PR1101MB2166FF35E7BB393EA9A94A62F8049@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221114205717.386681-1-anusha.srivatsa@intel.com>
 <20221114205717.386681-2-anusha.srivatsa@intel.com>
 <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB21663F7C69EA4AD5984E85D3F8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y3LWxBeTXE+Nt3m2@mdroper-desk1.amr.corp.intel.com>
 <CY4PR1101MB2166F7D1ED877C67D094E096F8049@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <Y3LgpJsYp3qBxnLQ@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y3LgpJsYp3qBxnLQ@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|BL3PR11MB6482:EE_
x-ms-office365-filtering-correlation-id: 62075e97-cae4-4be1-ea57-08dac72d0e8d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MRYkvCDa7qwSEk+wW7oQ2U8hLtSRgi5ac8ICRpkT7EjjY2IOpz2OfQErnSyuRlrx7+Jchu3a4tZqGjpbB3UMlcn93s1MYJA+bT6ko1iwmnCuSt+3uap7nRLZrZpIlur0i03JWQziY7eB4jnwD6lRARBBBB9wLu5nGnPda8FSmzBdpfneuSqaxgWcy/plLiNNI25JcTpuJhpYn5WWSMfyjB1hJRgcGemHygU6Rpkd7mb5ETtzyDvYvPkPbcQ7GvoMUme3+NWxTzPv180NieHWXpvWOYCI54T05rzFSChJ/P/SVk227pgJSVO6oPoYeZClLGHXvp/doGZo6lhafJFczfBrGzohTsqb55HY/6TDp//V7jK4N9IXDQ28dFnpF0qAk3eubpW/KWaxWZ32WXs3rCWvpm7fzsDWwQHTuRI1BYUj+IRkvwfrTU7HENrzuyyEkHWquxqsOPY+vMysSUsLOIYSm6MzZ7tYLUcRLGH/2JCLHl1CMzI7wHBl1fulcdZbOvt27h1FUfm5dlwhIKEyp3P9x5mAvC+fbFq4wN39XpzgvdhRv+rAKV/tGRKlagXYpbiMRgB7XGmtA7H8PqU9A6h8kvlmtLVtppCV6QERTNHSZJvGxrEju528oEXKC3FEXvDzQP96IjfWxhdPF3YcEY4PLM2oFgeWIpLvd4wTyhMiSzPGQ3+RMNKSpnAvdnBH5NAsp+mnGK597NSv4kDW9PrVRj10pXnky+UGtamSNw+Y+p6/dZxEz9n2Z6lAdwc8SHDYpXVYRzchpHeA1at9EybhN2ijg4r9QNTVRggcBuQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199015)(55016003)(8676002)(64756008)(26005)(66556008)(66476007)(66446008)(9686003)(4326008)(6862004)(186003)(52536014)(5660300002)(41300700001)(316002)(66946007)(76116006)(33656002)(8936002)(38100700002)(86362001)(82960400001)(122000001)(66574015)(83380400001)(2906002)(38070700005)(53546011)(71200400001)(6636002)(6506007)(7696005)(54906003)(478600001)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TyeH3mNOw1U0QR2I/936OpxeHqa88QY2uZWh1LzfPNMSBO9XxGU/wpPsnt?=
 =?iso-8859-1?Q?R4z3qbnwvwYfrPzfk5HrQ1b0iU06OrE/7nD6DWIPkPMBLgM+i2/KM8RCj5?=
 =?iso-8859-1?Q?csKF0LdClsXm5X82hvzG0kDQyGSP7sHNgzT26kE0HmB+J0WUaajnFbUiD0?=
 =?iso-8859-1?Q?LcRh3PngnTAE3nWxKSYtFXffR9WFd8ad+IeRdlxwy9LxCUcEr4XnG0Dzod?=
 =?iso-8859-1?Q?SWpbFRvhkmQFC0nMH1hGH+ZvC+yV1ZdKIF6l/TdcSGnH180OIOGFUzyQ2A?=
 =?iso-8859-1?Q?Kb7iBFLB+/HGkTg7ThIe6+4Scp7m0CMCryIV12cCJvkikslwL0bIbhO2rC?=
 =?iso-8859-1?Q?I6xBg6Am7CIehuRDv95Jj3PqYSTTHcaEb5cGeeNB4DTPvqAIGhAyz4aPZ2?=
 =?iso-8859-1?Q?/9Cjbe/M2pm6eqlVAOYOUihiyA8U0TQd68bkklh5tWedTf7aHakXfOniOd?=
 =?iso-8859-1?Q?4Lgkhyv82Eob8LlGJs4SVRDVaG50EiIs9RDzCcGrKMplO72VzgJhUjFQc3?=
 =?iso-8859-1?Q?jf0EI9yweEfUyR/y05EguVLm5/bj+9SZ1z2EEcjn5iTd7sz+mfIMjYGq49?=
 =?iso-8859-1?Q?f3ca8WTUhmvaisJJ39nzBW/XqVW4IHoUi9/Au9QaBJQiio+USvu80KwHTX?=
 =?iso-8859-1?Q?fGSXPOiR9P5DKe4R2TCDALBoqIA4fQX4f7MrmSsDpCzu0yhzN4xiSq+dgY?=
 =?iso-8859-1?Q?xWP/V5qGE0N4EuLf1PzniyEpJ2vUDCcVQMs6lvTm0sTQw3IpKxxLjUCKFf?=
 =?iso-8859-1?Q?YxH2saZdcle3Pksy2OIBoOPjC+C4yHHxlA/0zaIod4ggZcessOz9WNNSib?=
 =?iso-8859-1?Q?9dukNQRd48fNMQa97bThuSIogXFP2RQ9WmmUI8eZ0YF/SeOVxlofIjZRyd?=
 =?iso-8859-1?Q?gaiuLNWqAjSM+m4KV6u+pARe0yg7ZAA7YFX/mHwGkqO/IXOQOJlSNBNU21?=
 =?iso-8859-1?Q?noXEvJQNu47y2EMrtu5hfj5tLaVHadZkl988Obus1+YNHClLpWYIVvhT5U?=
 =?iso-8859-1?Q?EuUfvVmhtfHi8n1QKdFdRl2sD2aXBT+8sqqK+CwxE3mxV3vyH52qHmfebP?=
 =?iso-8859-1?Q?vaM3Ybyj5bYf2tvmG3U08AbjsPTIPlEP0nperLl7aKccotWao1hmDgKr4z?=
 =?iso-8859-1?Q?VZ5qMKpByzw+qaNd9VAS5zm/8U0CBWjOnpsg9aWZpRwlDOfvtwIbdskuxF?=
 =?iso-8859-1?Q?gmH1xkaoSa787BGpGNpo+7iXxATXTdBF9NFIrSp6DALa/OChHYianr5VOH?=
 =?iso-8859-1?Q?/llGaB5SUFsHscSiLOmRNlvjVYbbCtqk1VN8mY1/394p8tqQ+uTzBWlBSt?=
 =?iso-8859-1?Q?jYOSkpTryptPZKD2zKMlTP7wDJ8OGDrFsk/z9N0A4n5Mqj/uO7oqZxsyWq?=
 =?iso-8859-1?Q?HRum4Zj+VCEhDu/oQkeJa2FyqXtKEmOwE5WfWuQ7iSmQaqIbKSp3lzMUja?=
 =?iso-8859-1?Q?/l8WEl7STD2Ugx5SjyLfZTg1CAODtR/+6tVnasl36JYw9M3Ce0H2q4ncwe?=
 =?iso-8859-1?Q?CgSysYwwuV54qJvyJTg1LPuxscBQ4VY/cZjN+1Ni9HtIOI2QViTPpEOitx?=
 =?iso-8859-1?Q?UiteVtKJWPaAm5sxyHBxbI7KXQ4EJJQx+NiTY5ng/apDjxOsC9zUg9VEtB?=
 =?iso-8859-1?Q?BNMxr0S/vHqF5+ZpziAsvef1qDTwUZ9PS7lfjUZIhMwEsq+vVffaKbLQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62075e97-cae4-4be1-ea57-08dac72d0e8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 17:15:55.7671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XCsrGIDSssYgO7+HRwPtlLr1KKTZe1zwlnqrHJGBlW8l/Dj0pixEqbOSQy8Dhh/YFGyb4cMb4UdJxyzCwsOzMsZUrUu80wg25O6pEwOmVbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6482
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, November 14, 2022 4:43 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
> changing cdclk
>=20
> On Mon, Nov 14, 2022 at 04:07:13PM -0800, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > Sent: Monday, November 14, 2022 4:01 PM
> > > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4
> > > <ville.syrjala@linux.intel.com>
> > > Subject: Re: [PATCH 2/3] drm/i915/display: Do both crawl and squash
> > > when changing cdclk
> > >
> > > On Mon, Nov 14, 2022 at 03:14:33PM -0800, Srivatsa, Anusha wrote:
> > > ...
> > > > > > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > > > > +			  const struct intel_cdclk_config *cdclk_config,
> > > > > > +			  enum pipe pipe)
> > > > > > +{
> > > > > > +	struct intel_cdclk_config mid_cdclk_config;
> > > > > > +	int cdclk =3D cdclk_config->cdclk;
> > > > > > +	int ret;
> > > > >
> > > > > You should initialize ret to 0 here since you don't set it in
> > > > > the new branch of the if/else ladder below.
> > > > >
> > > > > > +
> > > > > > +	/* Inform power controller of upcoming frequency change.
> */
> > > > > > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > > > > > +		/* DISPLAY14+ do not follow the PUnit mailbox
> > > > > communication,
> > > > >
> > > > > "Display versions 14 and above" or "Xe_LPD+ and beyond"
> > > > >
> > > > > Also, this is another case where "/*" should be on its own line.
> > > > >
> > > > > > +		 * skip this step.
> > > > > > +		 */
> > > > > > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > > > > > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> > > > > SKL_PCODE_CDCLK_CONTROL,
> > > > > > +
> 	SKL_CDCLK_PREPARE_FOR_CHANGE,
> > > > > > +
> 	SKL_CDCLK_READY_FOR_CHANGE,
> > > > > > +
> 	SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > > > >  	} else {
> > > > > >  		/*
> > > > > > -		 * The timeout isn't specified, the 2ms used here is
> based on
> > > > > > -		 * experiment.
> > > > > > -		 * FIXME: Waiting for the request completion could
> be
> > > > > delayed
> > > > > > -		 * until the next PCODE request based on BSpec.
> > > > > > +		 * BSpec requires us to wait up to 150usec, but that
> leads to
> > > > > > +		 * timeouts; the 2ms used here is based on
> experiment.
> > > > > >  		 */
> > > > > >  		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > > > > >
> > > > > HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > > > > -					      cdclk_config-
> >voltage_level,
> > > > > > -					      150, 2);
> > > > > > +					      0x80000000, 150, 2);
> > > > >
> > > > > The switch from cdclk_config->voltage_level to a magic number
> > > > > (0x80000000) on old platforms doesn't seem to be related to the
> > > > > rest of this patch.  Ditto for the comment update about 150usec
> > > > > not being
> > > enough.
> > > > > Were those intended for a different patch?
> > > > Well, initially both squash and crawl support for MTl was the
> > > > intention. The change came to be a part of this patch because MTL
> > > > doesn't go through the Punit mailbox communication like previous
> > > > platforms and hence the churn. Thinking out loud if changing the
> > > > commit message makes more sense or a separate patch. A separate
> > > > patch would just remove make sure MTL does not touch the bits of
> > > > code Punit code. And the next patch would be the actual
> > > > squash_crawl-mid_cdclk_config patch.
> > >
> > > Okay, it looks like part of my confusion is just that the code
> > > movement made the diff deltas somewhat non-intuitive; due to code
> > > ordering changes, it's actually giving a diff of two completely
> > > different code blocks that just happen to look similar; you're not ac=
tually
> changing the value here.
> > >
> > > However I still think there might be a problem here.  For pre-MTL
> > > platforms there are supposed to be two pcode transactions, one
> > > before the frequency change and one after.  Before your patch, the
> 'before'
> > > transaction used a hardcoded 0x80000000 and the 'after' transaction
> > > used cdclk_config->voltage_level [1].  Your patch keeps the 'before'
> > > step at the beginning of bxt_set_cdclk, but it seems to drop the
> > > 'after' step as far as I can see.  I don't believe that was intention=
al was it?
> >
> > That was not the intention here. I think the Pcode thing needs to be a
> > separate patch? Might make reviewing easy.
>=20
> The pcode handling in the current code is what we consider correct-ish
> (although as noted in [1] below, not 100% correct).  So I'm not sure what=
 you
> mean by a separate patch for the pcode thing.  Do you mean refactoring ou=
t
> the _bxt_set_cdclk() function in an initial patch without the two-step
> midpoint stuff (since I think that refactoring is the point you accidenta=
lly
> deleted the pcode hunk of code)?  You can do that if you want, although i=
t's
> also probably fine to just update this patch to not delete that code too.

I meant add the if-else for Punit mailbox communication to the existing drm=
-tip as one patch and add mid_cdclk_config on top of this change as a separ=
ate patch.=20

Anusha
>=20
> Matt
>=20
> >
> > Anusha
> > >
> > > Matt
> > >
> > >
> > > [1]  It looks like we might need some other updates to that pcode
> > > stuff in general for some pre-MTL platforms.  What we have today
> > > doesn't match what I see on the bspec for TGL at least (bspec
> > > 49208).  That would be work for a different series though; just figur=
ed I
> should mention it...
> > >
> > > --
> > > Matt Roper
> > > Graphics Software Engineer
> > > VTT-OSGC Platform Enablement
> > > Intel Corporation
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
