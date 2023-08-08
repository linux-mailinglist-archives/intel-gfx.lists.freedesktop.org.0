Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1F67738BF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 09:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4740410E3B2;
	Tue,  8 Aug 2023 07:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800BF10E3B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 07:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691481213; x=1723017213;
 h=from:to:cc:subject:date:message-id:reply-to:mime-version;
 bh=FZKoqp4bl0l/K0aGEVhULtSQq5V6GkYw5G6hjguBgVc=;
 b=A2KjlvfStGaIV6R2S04+/dXtSjb3/ZJRlWnPuwD/kdcWw7ivZJmnJDdQ
 P8cVpoP83CFRqS0DN0SmDvcQven06PeWtsgHhOAJoFdFvusdr3FxHnM3+
 zIbWrYKiZVjq9CnUgn7X2RxMeFKiTyiTprfLPjTf/g5LHfQgivwYyy4/V
 vs/lAwASC5t0jpToKzrQ3AyUzijLNQBGPPwp6s93DiWLhtL0rlSZhQ1yS
 FqI8LhFH061Z+yl65ZrDHFJu/8j1lDDJagggsW1/yN+6Ej1gYEW+BtpWJ
 5C+Hiak9JFx1wD09Wj7e0cxdGgI1FRaBke24L6ibwZkHpCw2v+Q6MwEr3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="350340597"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; 
 d="scan'208,217";a="350340597"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 00:53:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="845362226"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; 
 d="scan'208,217";a="845362226"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2023 00:53:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 00:53:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 00:53:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 00:53:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFQCyoOaChLtzDuMmp6iJZakzzLM/FNCBGGTaNa6NC27s8R/zzoZv8LAP/DVGEtFCeKl1AsgeJZOnjwNj1glAcY85bq+WIb0m0njx3FrJJVDeU9LZW4DR0/aYVN50y0ELoOKhjIisidrzx5TqYwDdKSzV9E2pPyL7ZXK514QBzuBxY4QkUTygdbeV6OYXb8KQywgCy8dOzlt6jkQALVrWQk88CLYPpcYrVVYN6TND5XYKjodFWk5IhfWE6NTnaVaU+1v0S7RFm9GUiN6X+IUZq2Qkkqu5xn8+ezC49txW95USaB/EhGH1TgoobWEyzhGsJN3CX9sqhyJIKD5S6t6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TlzpE0aDyf8HRlDwfEus/1Ok8ppzNdWQf4yBGx+43yg=;
 b=f+Po2FjSjQwTeKSoCDLup49wj4GXEdwxrYDzg0BvfumcKXQsFUghToZLzm1JNB4e82J6fIvAhVyQZKIlng61bSGNIsTtq1WY2/9nk3zDzFZ0wYzLhWLNKWvpZdkj68eHyOXADxT6M6SODtLNwr7oaHiy8Rfys0/m5DN62xwt4sFv2HgyzZN90yIzVwkUGQ7/meqwBmMpI2ixjzHvoqzk/e6YhWw0TlVD3F+z6Tb1fK8QPjW5AaNcjQ8mFHvoVNxxTfJXK+WGEp1ctwDlYmvKajwHN6FTRATbRlw95QdcrpN940h5mXmcsaLn23fFIWp885F9OVVwluGpl6vaThnzKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by DS7PR11MB6149.namprd11.prod.outlook.com (2603:10b6:8:9e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 07:53:30 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f%2]) with mapi id 15.20.6631.046; Tue, 8 Aug 2023
 07:53:30 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: RE: drm/i915/dsi: Explicit first_line_bpg_offset assignment for
 DSI
Thread-Index: AdnJzTPMgMNY30TUQ124WKw403/+OQ==
Date: Tue, 8 Aug 2023 07:53:30 +0000
Message-ID: <SJ0PR11MB58940226ED208C01B9B85A88F10DA@SJ0PR11MB5894.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|DS7PR11MB6149:EE_
x-ms-office365-filtering-correlation-id: dcc12080-dfba-40dd-44ae-08db97e48e8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EwbCOPr0lfbgkTV0jw7bZHfOoeDubtUZDDvYQ1/iK8PJOfEiN/64DgvXRkZKoHDqw9JwLvP76tjpasHdvLmGrmEyC0q61A29+PfqULU8JTZ7EcV9JSv8s60YDW7P9MDqzZQv31uGSbzjYliM4+MzZE1UbzIHz0AXawiSgrR2QNnVfDCgLqy4xeuQYbeILchd7RQvWnaeI/Wlga+ssFX2T6vJVG0IbMk7K7mVh/DZ7cIJI+TtcldnFKTEp3VV9QsG0qDyzbY8B9GmlxI+uCK5ZzD0v6r7Eu5uK36EOf+05rh2W1xw1UR1M481ngnU2RR+xb3dDmYP0kfjHQjrQz3Qno4MOI6bhBC9ER92wS+KftW4vlp29MLr4KpO7nPiuXNNXWEuBKGkRMEi+XMTadRCne+U8vNgDg/lx+hwVWCzIdGNxSt4734tTfY/C8gP4rrg5kKxNyjIjDwbQFEf4PyO422UsIyVw1/WU701Gj0JHlTT5TQGpQ6BrHGWhKpWVHoVJhkQZ0Mk/yVB1kGFEOiFoknOvlX5ujJOrjVFGus3a465PY1Cz9zkErSk6zEvZsFtxEhkweM9ank5P5H7jzsaOuuw/fQ+n7ojrmsP3U4YlQCb0i1yhGDbl5sLnYjFebt+Ud4tv9bZv6WNZ8j65eWm6WIiQKSaoA5jMIYglgam9wU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(346002)(366004)(376002)(90011799007)(90021799007)(1800799003)(186006)(451199021)(33656002)(558084003)(38070700005)(86362001)(122000001)(55016003)(82960400001)(38100700002)(7696005)(9686003)(6506007)(26005)(107886003)(71200400001)(66946007)(41300700001)(76116006)(66556008)(66446008)(66476007)(64756008)(316002)(4326008)(478600001)(110136005)(2906002)(52536014)(5660300002)(8936002)(8676002)(8796002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uChtzJwvu1lk1hEcM0pq2m54QgrLIWKBHYqVQ5tOBR6bA0p9n0mHMohtdM3D?=
 =?us-ascii?Q?hTev5lpkCDcevflwCnnjk89VSEMW5WSr7LhpYZVkj1Z2hyDWKoxWV1xTp2qq?=
 =?us-ascii?Q?vuwFFIseAdh7z7hVcIKTxLsylQWvJHLKY93G3bcE1xKcrewy1NU3WYnj6ucB?=
 =?us-ascii?Q?mfmSa6xzjU9UrXaK2ArtH2tJPYdZ5hIv08vf+k2Ikt98DJqbk1ovKKjWA5jz?=
 =?us-ascii?Q?BFtMU2vOGAV9DaAcHEGlaLRFSFEcqyyUxhLX3ZturN9EKUioryRSx1Scah4N?=
 =?us-ascii?Q?bqn4SSmDyYuwJJd4n1s7eUhB8heCtPQ22uGxdJE4ZFphO5gHO6iYqnLr+NUt?=
 =?us-ascii?Q?qc26E3K/fXW3GDlOY07dmeR0KOcKWXGOtj5pT0oXGYhA5ngByeKPQ5vlFr72?=
 =?us-ascii?Q?+UxgsFbItFANB3I2IGZ0XyES/gVlRvMKgF8JwHN+AhAJlL4XtP7m0RxLH+QS?=
 =?us-ascii?Q?uCWa+R/hjBB/t+DMNSce+dvhJRO06glGF5lkJw6STMmbsTPixw/tIv3H1i2/?=
 =?us-ascii?Q?iPao8Xms+rksnOycAADVjBr/NOvpE6P6egDOsX643Rg7FSJtBMmHgg6JWh+V?=
 =?us-ascii?Q?/Dy7DqqNFeZbvZVxxVLcwO+E/b0chEwP/19Logs0bCpMitpHApYJLPwJzZJb?=
 =?us-ascii?Q?YXKeELwwB3eRjcridcf5xyIgJP6kGKwLCCvK+yBti/C91x4A5WO1y1HXJizo?=
 =?us-ascii?Q?t5yu2/2MfM0Zh8alERNVjAtC60GXkCINBi3WwzCWaU3MBlG4TY/T18aJWxjz?=
 =?us-ascii?Q?ozZBZIuRvxWDgXYGQ1hYevoBH+ne4RVLxn6j0P21o59cyVYBM0uwZQsj1TvW?=
 =?us-ascii?Q?j+8Cb/g6H62h38QjPAxHtM9Hy+dUA1zg5F7b3I71gd749pjmCiopuAq6OVEK?=
 =?us-ascii?Q?io5s/DfeNxZE3Dby2gf1HM2B2mqAIueQy5jkbtBnUuIWiIyD6f6MOeLL5AUT?=
 =?us-ascii?Q?2IwF7DUHUgi/yUvJoyr7ZYGnSuGZMdRUC1vwrGZUjCRTCxmHUuqKiPiyIbM7?=
 =?us-ascii?Q?Ty2ub4SkMt5fIlLNh+DNwhxzsuUwCs5+3Ltw7bGhcXG06FRUs1NtPkKJEhjA?=
 =?us-ascii?Q?IW+vFNQPxSxeCJ8JFxfyO5vLB0pix2arn8b+kOHHSeOF+ZmgaBXeu/t6cMfL?=
 =?us-ascii?Q?Mc4rOxwaurk2f7WwP1pqsjzbpbj9K5+mcBpxbMi54RXWNI9gTOLdaC0J6esZ?=
 =?us-ascii?Q?rQZa29Bv9zL38KcJoPNY25YDLuCYnv5IAuGZAf45wrH4KTNQCN72Vu+EPjqE?=
 =?us-ascii?Q?Un193V/WkaPDXdHEdrUSwrhcXcAJWxn2ZBxjHypXGVVLV404sts6jFmO0y+u?=
 =?us-ascii?Q?5udzfZK21juqh2v7uAnsruZVfOmi+z/5wHqai1WbvQWNbJS8itOZ1ZkESX8W?=
 =?us-ascii?Q?//GPzWhE1YW0s7DxoazHB6633/bzJBYF9zch7cciFSQKrGLcv5wlizMKAx9Y?=
 =?us-ascii?Q?q/eKXiF/0PSHKq8+wwXw5t76rzDes6goOpLTOECTHKQWkEhXF18lPdDu3jPK?=
 =?us-ascii?Q?weN5lFdhFg4Vm9DTgN9CxcZ/bPHdArHqwIUzjTA0jjPbNLZI6apRq3hLpPGF?=
 =?us-ascii?Q?Qrjv5aML98CJ/p+OP0NiFzVD/4zx4LW/Gtlmfdx7?=
Content-Type: multipart/alternative;
 boundary="_000_SJ0PR11MB58940226ED208C01B9B85A88F10DASJ0PR11MB5894namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc12080-dfba-40dd-44ae-08db97e48e8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2023 07:53:30.2806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vpfne/l4cp6eGYuYcIA13PSjitMVxt2HhxSx/E3P7HI5eHD7yxZ/Sy+AEFnUfwdTlkeABYqCV87UbYVfsrTzCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6149
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] drm/i915/dsi: Explicit first_line_bpg_offset
 assignment for DSI
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
Reply-To: "20230807142754.3891787-1-suraj.kandpal@intel.com"
 <20230807142754.3891787-1-suraj.kandpal@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_SJ0PR11MB58940226ED208C01B9B85A88F10DASJ0PR11MB5894namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Suraj

The patch is tested without problem.  Thank you.

Tested-by: William Tseng <william.tseng@intel.com>

--_000_SJ0PR11MB58940226ED208C01B9B85A88F10DASJ0PR11MB5894namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:PMingLiU;
	panose-1:2 1 6 1 0 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 1 6 1 0 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Suraj<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The patch is tested without problem.&nbsp; Thank you=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;;mso-ligatures:none">Tested-by: William Tseng &lt;william.ts=
eng@intel.com&gt;<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SJ0PR11MB58940226ED208C01B9B85A88F10DASJ0PR11MB5894namp_--
