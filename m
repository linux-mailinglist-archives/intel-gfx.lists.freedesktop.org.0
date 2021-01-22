Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7913009A1
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 18:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E84289491;
	Fri, 22 Jan 2021 17:25:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E4589491
 for <Intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 17:25:53 +0000 (UTC)
IronPort-SDR: QA9aYzemAoSufjINkKq+svlBVaI68/A81tL4dY0webc05HWJJZ1bi4XYMae7arhWavFSu+yHdi
 zRH3mqMimhgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="175964982"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="175964982"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 09:25:53 -0800
IronPort-SDR: 69nVP6ea3Cxlgp7O/8fB7i0si7hoYlQzpayxlFG5gfUAjKUAtk2mHBWGjaj8XrRd2/hRlFy6yY
 BQ29gvzMCu4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="572277232"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jan 2021 09:25:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Jan 2021 09:25:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 22 Jan 2021 09:25:52 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 22 Jan 2021 09:25:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UDyNaFSGigS4XnRMO1gO8q/vkLr9XHL+tTNRD6zjF3knKmzWoCjvaMDhJANiAZRf+es95RwyrTN2bz5XfU12p8m9so2gUfZeLYF/eTetmbtDLIRARyGQvqEXffWHjR/CJHYguXUGhjC6neY6h87XwUXTxqekjSv+7sEenKVQggtXMkSFaQZ7ufgmSx+WQsShKJePX+bqUmZ9nCmkiD0nHDx6LzSpGOuZGELp0M6HDqozYjtGlBclUY34+VTJDawyHtSA2h5ceE0xdMV7nEkxf2s+5KMF8jetAPJxjGdjhTVUkUJu3jg1hSvb/K0bTmNz57MEwUlAyd4wHymk9IMKlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8F1kCGSMHODD1WlBfF+1qUDqefL766rnTIxY45QX/M=;
 b=VGSDZBK10EvgdnQ+4EkjxMDCcBcei/uTHKfqmDj9OcBTyWWx4bBPt3ZeAv+gOP7OpO2V1Hxslck4CnIApFYEhD2zYPmNqU3iYrm33dKLuhXaNrvVc7TVH0msxon7A7FcavUKMDhQ5NMz0EpE8x6s3qvALlIbwBaMmi+IFWOvFIwlDBLJ5F7XM5tcj3ZLBIyff8kIb9VTEP5laGXj0TtqLbPyl+63oIw0WAJcptmxXEg0/kyhG9gjT3ymkaitWOeEnTtaaTDst15EG9m/iJq91RDJGruLq/J8e9x6Mps9XTIxWE0i4BtgadhfZB5qn6nKHtW0+U8NON+YqaCmX6x1LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8F1kCGSMHODD1WlBfF+1qUDqefL766rnTIxY45QX/M=;
 b=kXSpavlNRlffLdnH0uyhSLrzllHiylOG3AlZCP6OJ/ZH5h+dGDZSAA1mbkBxSWkZbAx/b9GJQV/bhreFzJCc3+jBRZZj7w37r6wcYG60g9jx5jgT9d5YdTI8Lswg2z9peTvvhuQBNttH/8TMfJShCJAQtWr+5JxNidAAn3Rzh+s=
Received: from DM6PR11MB2683.namprd11.prod.outlook.com (2603:10b6:5:c6::13) by
 DM6PR11MB4659.namprd11.prod.outlook.com (2603:10b6:5:2a5::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.13; Fri, 22 Jan 2021 17:25:48 +0000
Received: from DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2]) by DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2%6]) with mapi id 15.20.3763.017; Fri, 22 Jan 2021
 17:25:48 +0000
From: "Gaurav, Kumar" <kumar.gaurav@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support
Thread-Index: AQHW7jbIH9N2MRh6tkiniInCJdu+rKousF4AgAPb0QCAAALfMIAABUiAgAAAczCAAPq1AIAAWSyQ
Date: Fri, 22 Jan 2021 17:25:48 +0000
Message-ID: <DM6PR11MB26835D747B9D941AFE8E224197A00@DM6PR11MB2683.namprd11.prod.outlook.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <20210119074320.28768-14-sean.z.huang@intel.com>
 <9babc226536544f7aa7ec98e80de4b21@intel.com> <YAnketZoGh4+ppkg@intel.com>
 <DM6PR11MB268360BF1C1787E2EFECF5AD97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
 <YAnrUeLAXCPATJ2F@intel.com>
 <DM6PR11MB26830728CD1B4CEEA315A0AC97A10@DM6PR11MB2683.namprd11.prod.outlook.com>
 <YAq+ACbar/4CKNbr@intel.com>
In-Reply-To: <YAq+ACbar/4CKNbr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [98.208.38.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5b4cfa4-1a42-41c1-b91b-08d8befac22b
x-ms-traffictypediagnostic: DM6PR11MB4659:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4659A34FFBBF80FB44E0519997A09@DM6PR11MB4659.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TxHbtguBixV2yXBBkqiu2AjbmxvdJ0VDnPSF3wLtoXweqe3jS6Xo8dAGIHlhHEX5sfyYrYz04s4irkS074R+6Tq81ydkS9T3LwT0Zv+9U0EYc7NPdfgx8uWs4nj6YbwkA+869mjITaaTOeIExf1abEfeluQMSyNmKNitH46Em/B+bBY2Y64uRwIL2cUFV44w+dlIEd4SU5iqVv4PEPET2K2ULWzCUbuhPiH4unmEKLLhl79wrMqFPO7IoS5rTFkzn5ispXFUxV2c5P7IRRzdo7NrUg0v4cklxVhjQB5nXSj8jP1v27KorgntllbNJqQnLFqVwEmZyIX73bNosZo27zL8BzclgVv0wenmToy69XYe7Pa8cIRPTAhZ5f18vtJ7BFjsuyhaHUKO80/tEjC8EQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2683.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(478600001)(8676002)(66446008)(66556008)(186003)(76116006)(66476007)(66946007)(26005)(54906003)(53546011)(33656002)(5660300002)(71200400001)(316002)(2906002)(7696005)(6506007)(83380400001)(52536014)(64756008)(6916009)(66574015)(8936002)(4326008)(86362001)(9686003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?WxCpM47AMiHTZxUyZ8i9tUSxlB5EQZxQcw5vBSuCtkuKD2xy8zdKIiZJP7?=
 =?iso-8859-1?Q?SB/pSAeDIfvHofdiCGZIo4mb0kf4DXWCrO/HgxzVEozz+1Ke67Mjtq3iY+?=
 =?iso-8859-1?Q?pBMK9zwjV12svoyEVcV6s5NnJUwIzlwKO7xO7ZXnPRgnnlh/m+G+hPBzSN?=
 =?iso-8859-1?Q?7Zzfp61fQjdzSacAW0YVJ5cL5EPdTG/5i63/ugE41YaKYo0wyei6Z7ozxL?=
 =?iso-8859-1?Q?58Ral6hySBn3jgCzVKF4Ey48HKZ7oC7Ebt80oZ6LhdyDAYQVYbaoNOQU7v?=
 =?iso-8859-1?Q?63VYWIHn36h00oFW/87GVO5ANXMcn03UnxwXq7LlWhWAlE49uzo6ZQnt5l?=
 =?iso-8859-1?Q?mCcRPgj6Cw8UpcF4zj814qosq15bKqMofY4SjCA8o8UXat69pQUrWLRlgT?=
 =?iso-8859-1?Q?RJpLygbTFrzfduPH2+cx0ClOpjYUrtTsh5gdhRJXAiUgBrUXaLgCzop6g2?=
 =?iso-8859-1?Q?S+5NK7I+9k7dGxpe4ipHiETMuWTKb75dtw9YqViAriPsomdME1Vs1wWJWu?=
 =?iso-8859-1?Q?KgQ0wc0GTaCREGEtMzH2Lzz6evhX19fS9F5bGA6eYLL2fAM/L5/xtpGQNt?=
 =?iso-8859-1?Q?TML3hB1BN7i3OAU1FQkG8KYaK5eUG/+C07mfuMAog2fOpP+Mv7957zTlqS?=
 =?iso-8859-1?Q?Eio1zFHwhzvUNQlJcu/rHE9ZuIkCryEK71w/KtTmfaHigPfEX0VZRXsaD5?=
 =?iso-8859-1?Q?oodu6Px49K4T/Y1D9a0hQZARfcEwMAVFRgDjiV34y4PxiegQGiOUPwrSz1?=
 =?iso-8859-1?Q?eopw9J4/tlcOuh5xIzmX+xMF9nno6//fpdGlGajqCOyXEab/VjqKPn0l+b?=
 =?iso-8859-1?Q?HD30IUzXL664CxM/KbR1FTikJ67w9FX63d3kK01pP7QBDbKc5Dy59q+mtq?=
 =?iso-8859-1?Q?leNSNihBhyYILqvjHl0NFXCqL/OunP79T782HHqtHI0OodSYAHJoUCBBEv?=
 =?iso-8859-1?Q?xjdWGbRzVfGukPi/EFZR2ZttaZ4IwngdxZku1TqW1dlKXpUJC2QtpTY/3L?=
 =?iso-8859-1?Q?+GiPyOzFSSOlsrpi0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2683.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5b4cfa4-1a42-41c1-b91b-08d8befac22b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2021 17:25:48.1142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8afcRB9Pcj/JDmg6OOG6xpdY5Y3n0WKrYZ5IRG62lsFVoQZR/5RhXmG89kGHHeU4yRQoTzpPkjfDwX9vaXsp2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v23 13/13] drm/i915/pxp: Add plane decryption
 support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Huang,
 Sean Z" <sean.z.huang@intel.com>, "Bommu,
 Krishnaiah" <krishnaiah.bommu@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

a) How are you scheduling flips for ChromeOS HWDRM overlays(not primary pla=
nes)?

b) For this you need to understand race. The race is between - Display HW d=
etecting that there is HDCP display config change and deciding to destroy c=
rypto context vs. Display HW flipping HWDRM protected surface.
     If Display HW decided to destroy crypto context then display HW does f=
lip user will corruption but the check before flip makes sure that order is=
 reversed i.e. no invalid crypto context flips are scheduled in Display HW.

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

Sent: Friday, January 22, 2021 3:59 AM
To: Gaurav, Kumar <kumar.gaurav@intel.com>
Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Huang, Sean Z <sean.z.huang=
@intel.com>; Intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@int=
el.com>; Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Vetter, Daniel <da=
niel.vetter@intel.com>
Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption support

On Thu, Jan 21, 2021 at 09:34:53PM +0000, Gaurav, Kumar wrote:
> So the idea is to perform HWDRM session check in flip IRQL and i915 PXP w=
ill guarantee that IRQL is not blocked. =

> We have done similar check in Windows flip IRQL.  =

> =


What's an flip IRQL? Some sort of flip related irq handler?

a) we don't use the flip done interrupt (except for async flips), if
   that's what you're referring to
b) how would doing anything there help against the race?

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, January 21, 2021 1:00 PM
> To: Gaurav, Kumar <kumar.gaurav@intel.com>
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Huang, Sean Z =

> <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org; Nikula, =

> Jani <jani.nikula@intel.com>; Bommu, Krishnaiah =

> <krishnaiah.bommu@intel.com>; Vetter, Daniel <daniel.vetter@intel.com>
> Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption =

> support
> =

> On Thu, Jan 21, 2021 at 08:50:18PM +0000, Gaurav, Kumar wrote:
> > Thanks Anshuman for adding me for review.
> > =

> > Actually, using plane Gamma is good idea to show black frame. Another o=
ption could be alpha value since we know for ChromeOS protected buffer will=
 always be flipped on overlays.
> > =

> > Below explanation captures need for black frame in i915 Display for =

> > HWDRM protected surfaces - Problem Statement - There is race =

> > condition between Ring3 and Ring0 where encrypted frame could be flippe=
d by i915 Display despite Ring3 checking if HWDRM session keys are valid fo=
r encrypted frame.
> > =

> > Google Bug -
> > BUG1 -[Intel] i915 framebuffer tracking (protected surfaces that =

> > can't be decrypted are being rendered as encrypted) -b/155511255
> > =

> > Background -
> > There are 4 high level pipelines working together in HWDRM playback.
> > 1. CDM Pipeline -
> > App CDM SW Stack -> LibVA/iHD -> i915 -> MEI -> CSME-FW
> > =

> > 2. Media(Audio/Video) Pipeline
> > App Media SW Stack -> LibVA/iHD -> i915 -> GPU
> > =

> > 3. 3D Pipeline in Compositor
> > App Composition SW Stack -> OpenGL/MESA/MiniGBM -> i915 -> =

> > GPU/Display
> > =

> > 4. Display Pipeline in Compositor
> > App Composition SW Stack -> Ozone/MiniGBM -> i915 -> Display
> > =

> > Discussion Point -
> > Even after Pipeline #4 is context robustness compliant there is a =

> > corner case/race condition for corruption as following  - BUG1 App's =

> > Composition SW Stack -> Creates Protected Context and Protected
> > Buffer(MiniGBM) App's Composition SW Stack -> Supplies Protected =

> > Buffer to LibVA/iHD -> i915 -> GPU -> Encrypted decoded output App's =

> > Composition SW Stack -> Gets back decode output -> Checks for =

> > context robustness -> Submits frame for flip -> i915 Display(by the =

> > time i915 Display gets flip PAVP session is invalid despite being =

> > atomic since invalidation of PAVP is HW async event) -> Display HW =

> > -> Shows corruption
> =

> It'll always be racy unless the invalidation becomes a two stage process =
that first tells display to stop scanning out the thing and then waits for =
the display to finish scanning out the current frame.
> =

> > =

> > =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Thursday, January 21, 2021 12:31 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: Huang, Sean Z <sean.z.huang@intel.com>; =

> > Intel-gfx@lists.freedesktop.org; Nikula, Jani =

> > <jani.nikula@intel.com>; Gaurav, Kumar <kumar.gaurav@intel.com>; =

> > Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; Vetter, Daniel =

> > <daniel.vetter@intel.com>
> > Subject: Re: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption =

> > support
> > =

> > On Tue, Jan 19, 2021 at 09:35:18AM +0000, Gupta, Anshuman wrote:
> > > Jani/Ville
> > > I had received an offline comment form Gaurav on this patch, See =

> > > below,
> > > > -----Original Message-----
> > > > From: Huang, Sean Z <sean.z.huang@intel.com>
> > > > Sent: Tuesday, January 19, 2021 1:13 PM
> > > > To: Intel-gfx@lists.freedesktop.org
> > > > Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Gupta, Anshuman =

> > > > <anshuman.gupta@intel.com>; Bommu, Krishnaiah =

> > > > <krishnaiah.bommu@intel.com>; Huang, Sean Z =

> > > > <sean.z.huang@intel.com>
> > > > Subject: [RFC-v23 13/13] drm/i915/pxp: Add plane decryption =

> > > > support
> > > > =

> > > > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > =

> > > > Add support to enable/disable PLANE_SURF Decryption Request bit.
> > > > It requires only to enable plane decryption support when =

> > > > following condition met.
> > > > 1. PXP session is enabled.
> > > > 2. Buffer object is protected.
> > > > =

> > > > v2:
> > > > - Rebased to libva_cp-drm-tip_tgl_cp tree.
> > > > - Used gen fb obj user_flags instead gem_object_metadata. =

> > > > [Krishna]
> > > > =

> > > > v3:
> > > > - intel_pxp_gem_object_status() API changes.
> > > > =

> > > > Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > > > Cc: Huang Sean Z <sean.z.huang@intel.com>
> > > > Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> > > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_sprite.c | 21 +++++++++++++++++=
+---
> > > >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
> > > >  2 files changed, 19 insertions(+), 3 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > index cf3589fd0ddb..39f8c922ce66 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > @@ -39,6 +39,8 @@
> > > >  #include <drm/drm_plane_helper.h>  #include <drm/drm_rect.h>
> > > > =

> > > > +#include "pxp/intel_pxp.h"
> > > > +
> > > >  #include "i915_drv.h"
> > > >  #include "i915_trace.h"
> > > >  #include "i915_vgpu.h"
> > > > @@ -768,6 +770,11 @@ icl_program_input_csc(struct intel_plane *plan=
e,
> > > >  			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);  }
> > > > =

> > > > +static bool intel_fb_obj_protected(const struct =

> > > > +drm_i915_gem_object
> > > > +*obj) {
> > > > +	return obj->user_flags & I915_BO_PROTECTED ? true : false; }
> > > > +
> > > >  static void
> > > >  skl_plane_async_flip(struct intel_plane *plane,
> > > >  		     const struct intel_crtc_state *crtc_state, @@ -804,6
> > > > +811,7 @@ skl_program_plane(struct intel_plane *plane,
> > > >  	u32 surf_addr =3D plane_state->color_plane[color_plane].offset;
> > > >  	u32 stride =3D skl_plane_stride(plane_state, color_plane);
> > > >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > > +	const struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> > > >  	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
> > > >  	int crtc_x =3D plane_state->uapi.dst.x1;
> > > >  	int crtc_y =3D plane_state->uapi.dst.y1; @@ -814,7 +822,7 @@ =

> > > > skl_program_plane(struct intel_plane *plane,
> > > >  	u8 alpha =3D plane_state->hw.alpha >> 8;
> > > >  	u32 plane_color_ctl =3D 0, aux_dist =3D 0;
> > > >  	unsigned long irqflags;
> > > > -	u32 keymsk, keymax;
> > > > +	u32 keymsk, keymax, plane_surf;
> > > >  	u32 plane_ctl =3D plane_state->ctl;
> > > > =

> > > >  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state); @@ -890,8 +898,15 =

> > > > @@ skl_program_plane(struct intel_plane *plane,
> > > >  	 * the control register just before the surface register.
> > > >  	 */
> > > >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> > > > -	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
> > > > -			  intel_plane_ggtt_offset(plane_state) + surf_addr);
> > > > +	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> > > > +
> > > > +	if (intel_pxp_gem_object_status(dev_priv) &&
> > > > +	    intel_fb_obj_protected(obj))
> > > > +		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> > > Here in case of if fb obj is protected but pxp session is not enabled=
 i.e intel_pxp_gem_object_status() returns false, request to show the black=
 frame buffer on display instead of corrupted data.
> > >                             plane_surf =3D 0xXXX; //Pointer to black =

> > > framebuffer But above approach would be a hack.
> > > @Jani and @Ville could you please guide with the general way of handl=
ing this as pxp session keys can be invalidated at any time.
> > =

> > Would need such a black buffer to be always pinned into the gtt, which =
is seems a bit wasteful. We could perhaps just force the plane to output bl=
ack eg. by using the plane gamma. I think we should always have the per-pla=
ne gamma available on skl+ universal planes. Cursor may be a different stor=
y.
> > =

> > --
> > Ville Syrj=E4l=E4
> > Intel
> =

> --
> Ville Syrj=E4l=E4
> Intel

--
Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
