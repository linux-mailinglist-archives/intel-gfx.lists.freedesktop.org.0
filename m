Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F9586DE46
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 10:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019ED10E346;
	Fri,  1 Mar 2024 09:28:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VpXCheJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA54D10EC49;
 Fri,  1 Mar 2024 09:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709285316; x=1740821316;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=6ImSX7RPqXtTLlSM77hgu7iekrXyXU/Hr09BTjMBda4=;
 b=VpXCheJoqBDkUYu8aNBk2U4Iqb/z5/mJDl5v5DJtMZvVQfLOfJfiojgA
 KhlEI/U2jCin9bfUFNNHu4VEN6SNJxdR39LPZepPdX/gULKGRirHdz7sP
 vLQN6v+8gehPY+aWMxD3W4mGTbkvWkcz9l2RunwdUE7GfXWt7YFn58iQj
 pwKNg1yr1tWJZ6LX9WPqtHw+7tCiwsXxAc2AEcAF1iHX/1OxmoBxS3x5W
 EQwZqm2tGnhG3alyLusrMnDBONdzUDND/iHTF3KStjgHldz8Ib4H4gzDC
 pvriiHfQJ4DozRSYKZtGkVs2hLH14lXegmTZ8fKxWZogDLwtFCg2TdPdR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="7627067"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208,217";a="7627067"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 01:28:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208,217";a="12743532"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 01:28:36 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 01:28:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 01:28:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 01:28:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4RaRn/kNvbpw8C+Lj2IEE26OVxzgIguIpOoNOP5BAlsBDG+A+FAVFGeOTfl9sbCmr117zVqyXtPAXs3Zq47c//iObBLbrfDC1NSUd5jodAuWD5pJ02VT9zkNExUZp+jbt1c717Yys2vztEQlPtCaxDg5+y4PUMdbhw3AIulWwDk4g0GAhpjH7BAgvr2NGzECSR2gYDV/doFrWBT1g2CxNgDc2V3bhjvhn1D16ke++8c+tqAW4O2d1VPlD9GAbIReNGKe0C5dHRCmYuaFGHkp/AJlcdNR/24Ap9bsM5o5l7r+IWL6SBbpSjy57044lB9AjzUFzvuXTFJUc74WcGFcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kw0Pyx9ljpSCGCi3827ekrfwcfRO6vuyvKGA+RdO/Ek=;
 b=iNIPbgQAG691MQeHIXyspOXRAKTMYHNfTJWjoZd8uPXepbsTqAfOL/eGzGNmNerWIATWVOtzvgyCd91DcTnvBgOHYhMx7Vbv+7/UJ70yrGeqgl7D4y9riCY4/XaGBNx47KHYIHYJ+R1eAtCZbEvwlwFJqDFGwBwscMiuG/k8X1JZ0kB05Y/S9XdgtwIC0/TKH/5FMeZfSGgBWMf3ivtwdC4cbikjYHxkYZ/En/GQKx14hwO6TW70vq4WI6D2mzVf21uuno0X1PENMCRYQ77agn6EzlE2PqEoAmZ3CFhygQ1dk1s9VQADKliQpb8uHJCORojb9LTLzk1CwR6R5/nAeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by SN7PR11MB6798.namprd11.prod.outlook.com (2603:10b6:806:262::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Fri, 1 Mar
 2024 09:28:28 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::6424:214a:9ed9:864a]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::6424:214a:9ed9:864a%3]) with mapi id 15.20.7339.024; Fri, 1 Mar 2024
 09:28:28 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: [ANNOUNCEMENT] Upstream Intel GFX CI shutdowns schedule (WW10.1 -
 WW14.1)
Thread-Topic: [ANNOUNCEMENT] Upstream Intel GFX CI shutdowns schedule (WW10.1
 - WW14.1)
Thread-Index: Adprsk8RlgMN2PikSUacNZk7m5wL3gAB/BSw
Date: Fri, 1 Mar 2024 09:28:28 +0000
Message-ID: <PH7PR11MB7073DE583E56495EA51802C2935E2@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <PH7PR11MB70736340693F8146960A54C4935E2@PH7PR11MB7073.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB70736340693F8146960A54C4935E2@PH7PR11MB7073.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|SN7PR11MB6798:EE_
x-ms-office365-filtering-correlation-id: 9c197037-05c2-4511-436c-08dc39d1f3d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QYln9UGNT91cT9K4t8FK7+d7XNPyDT1X0/U4djkffTtOkvrECWCpKgSqAtcTj8s80Rd9e4esLyqQHjkqKQ2/ckh905kqRfGgQAaHanM5TziQN0UL8n3FemxSxv5oNhfaCsw/yIoCXk/DcEjRqZeozhAdQpm2n30tei7DUrrFlHXd3T14Z6Nwwnh9RTLv1avy1ZiIBXR7H29ELpAr4YdxkvY8Vlrb5QUCz7Z1Jnj3JIv5wj/EBNmkXd0CZEDrE38wzBSN3utgCjIVrv0I6Dl/xqHV2+1KSGdk4MGKk0IkxaHR0zscirJMe3tXV3nyINSPqzApA1mFelXMY+fpbE/yQ+UOyecQmanESn0Ci56viWdYHWtr9sWuAGXnnZ1eRMYDV1DeT3CaPSNTXvO7+gP3y/CuE9fXxiQRA3TmIKft/B/fKnEuXWKLFt7/Z+MvPEcc3wvmJxEeSpaeHiseZJIYF9J9x8QhQH0sxgsndMD6o/nJX6Qe8jpWv+YwHCIjhXK0h4ACyJ/We24frAwu8mRBarbWjM47uSdZz1gQYGo1HGAdMzJnBjXFzJnNIelUb4hh2zRRR6GASt9yGSPkL0zf1eSW8Zog/JjU9Hm63G3x8CqHc9xQdMeF8m27NZ+FZlTN7o0m6hUaCYeJPz9Otalo4q87ogacjLSOas49eP2ftO7t5FcgW4PLd9WbW+Q7EV8BU6AiY4UV8XXbnGBR69IaFP3uQEJOzwJnPDoMeJBILbY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tT5H/j74VdAhbLQ0kBydT0mLBFnpvH8Jp9Q4i4wBzeGvgLu29ZL0fj1Wnw2k?=
 =?us-ascii?Q?dHMaT3ju8b9GXnFu2Bm7eqHziyR9k6c5JmQPh1ogLfNVZkerk7Gvn1oP1h47?=
 =?us-ascii?Q?8HrdFx4ld+fcn3BeyN3sBVpHqe3lIqwFxZZxiF3GxrgaDhJOT82i7c+bjIeu?=
 =?us-ascii?Q?rvf448D4GXsEgM1IuJat7umvGNIdq3mND4mW/k6Pwi8Kn3YzUJNDJUIkrLQe?=
 =?us-ascii?Q?XI/mQXi0TjiCpEC97PFSYGDWrKFvyS/Ym0hzbmmwOQvt+jol2aRFGR1arsba?=
 =?us-ascii?Q?WjJS0oq7Q9HdAFW6O2qR2m+UEKRG/Qj8c43EUMAHNjYwpqn3sGhln87IhTkJ?=
 =?us-ascii?Q?wOinT3Lp+EKRe0DK4NwW58vQr1Q7zmBIUm43StRJQ+KODBKpgfZlQ9YxyXog?=
 =?us-ascii?Q?UxKTVimLjEgz6tuB8u4j0T48vfJbn0kEVlYbC4fC7uy7noVRlLNERlRoyS9Z?=
 =?us-ascii?Q?yJ5A6voSFsfjk33qSq3mz2Wic6dCs59BrNtYQRyy+hrSKaS/4LkdKu24EuN7?=
 =?us-ascii?Q?bfCwg5E6jgLUWmEVn9ZLzQTVFNvnMtsX+9J5MhVHGhYDi17xrLhxNldF95k7?=
 =?us-ascii?Q?3HL/SkapMN9hyxv7tLY52aLEyxtgbq+fZi2MK6t6uJoL61iaKWbmQzVSuDYM?=
 =?us-ascii?Q?4UVgf5DecStLSfficgOa202m2DZn0uBHavkLvaI5d5IqINE5SP0mA4zfa09e?=
 =?us-ascii?Q?s5BZEyG+aC78MR8wRtWuF5qZzVn8olCtxF8txUZEO2gX1hl9Nhi04TBXnh9v?=
 =?us-ascii?Q?rk5S0Y/6LlTv5NFuMbPaUc5nrmuB1Q9rqxV7+8XMnPJbx/Xwh2hLxcwF4e43?=
 =?us-ascii?Q?t5/AAwoqeGgJAxs/V3dNWlm+CN2VTXXNpOxI85F/agBRt0JjQ1ta5Ia02XZZ?=
 =?us-ascii?Q?DK1JUSg1SRRQW+RsUvsyX11+ab8INKHZOWcIssjaj0avCu/arT6Y9FhELAtk?=
 =?us-ascii?Q?tJKrrGxepm/tw4vlg5OUF9jefLMTpzTtVdZrLWs3eiTo9XwAcna+neFuToYT?=
 =?us-ascii?Q?kBULSk79ouILcF5sTJntPqgCC0GeSF4e9WjFJq9XQnd75cuHugEtXpGBz1Nk?=
 =?us-ascii?Q?iFtHQ1mlK0xmJwioZpJYF61Ek5K5xl1kRhlrRA6G/6I7Ny2n+TDj00u637Y3?=
 =?us-ascii?Q?Hv+6PeNQrAtHS/i02wBGkoHHVhdfmpsSQ2t3bPj+uKcqzFZZMLoS+/XLbywY?=
 =?us-ascii?Q?7dwksxI4E8j2g0anAPoKZ9LJWvujtrlFv8M7vFCUCQi7NLTbntivtXjA7ZAQ?=
 =?us-ascii?Q?BaqHdX/4/lCGWbeEIhDH6YtyRDGHCyslGz/hSb0qcOExyVTeQFMxwXQirImV?=
 =?us-ascii?Q?44QbZmRvwspGzJJ8Mdu758lNcxKQGCUIl7KYHHBwOiscptvcmuBh1rEUkDE6?=
 =?us-ascii?Q?8CT7TGvleyKFBwmeEW/fPNqB8JGoGDd5pLhKECgvNvypVCgWoeuILP/nm53V?=
 =?us-ascii?Q?D3dVmFZP0MOaP2h9QqxZZ+8AyNdSaNWbZkjKQZIS473ux1LY9nxa6SFvknsz?=
 =?us-ascii?Q?m3zVvw7IX/cCz57b/Iz+JBQjMMBQ4nKFJFSINBN533y9vcFHpRcqHVXCq6Rz?=
 =?us-ascii?Q?EKe04KD3r89Rd1wiJ0FJKp91fhyUHjj0BfXCTm0y?=
Content-Type: multipart/alternative;
 boundary="_000_PH7PR11MB7073DE583E56495EA51802C2935E2PH7PR11MB7073namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c197037-05c2-4511-436c-08dc39d1f3d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 09:28:28.1612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SomqtWI3SskOmR2kKndbSqbyI/8B1eFqQtBLnMs9jNd4VpqFTg8IkSJlQCE6tLSZMfbjh9HAPostAzHQ719XPlfJjHsQSPGxZSJfVqPBXhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6798
X-OriginatorOrg: intel.com
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

--_000_PH7PR11MB7073DE583E56495EA51802C2935E2PH7PR11MB7073namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Due to lab management activities, we will be doing short CI shutdowns every=
 Monday for next 5 weeks. Xe and i915 CIs will be impacted.
Lab team is required to do actions around benches on which we are storing o=
ur hosts, therefore every week we will lose access to few/multiple platform=
s and after reviewing exact list, we decided that CI shutdowns are required=
 to prevent regressions being merged.

Shutdowns plan:

  *   WW10.1 - Upstream i915 and Upstream Xe
  *   WW11.1 - Upstream i915
  *   WW12.1 - Upstream i915
  *   WW13.1 - no impact on Upstream CI
  *   WW14.1 - Upstream i915

Shutdowns will start 8AM CET and complete 3PM CET

During shutdown there will be no premerge nor postmerge testing running for=
 affected projects.

Feel free to contact us in case of any questions.
Regards,
Ewelina

--_000_PH7PR11MB7073DE583E56495EA51802C2935E2PH7PR11MB7073namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:148712568;
	mso-list-template-ids:1233580838;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:260649899;
	mso-list-type:hybrid;
	mso-list-template-ids:-221204216 -1830276772 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
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
<p class=3D"MsoNormal"><span lang=3D"PL">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Due to lab management activities, we will be doing s=
hort CI shutdowns every Monday for next 5 weeks. Xe and i915 CIs will be im=
pacted.<o:p></o:p></p>
<p class=3D"MsoNormal">Lab team is required to do actions around benches on=
 which we are storing our hosts, therefore every week we will lose access t=
o few/multiple platforms and after reviewing exact list, we decided that CI=
 shutdowns are required to prevent
 regressions being merged.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Shutdowns plan:<o:p></o:p></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 =
lfo3">WW10.1 - Upstream i915 and Upstream Xe<o:p></o:p></li><li class=3D"Ms=
oListParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 lfo3">WW11.1 - =
Upstream i915<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin=
-left:0cm;mso-list:l1 level1 lfo3">WW12.1 - Upstream i915<o:p></o:p></li><l=
i class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 lf=
o3">WW13.1 &#8211; no impact on Upstream CI<o:p></o:p></li><li class=3D"Mso=
ListParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 lfo3">WW14.1 - U=
pstream i915<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Shutdowns will start 8AM CET and complete 3PM CET<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">During shutdown there will be no premerge nor postme=
rge testing running for affected projects.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Feel free to contact us in case of any questions.<o:=
p></o:p></p>
<p class=3D"MsoNormal">Regards,<br>
Ewelina<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH7PR11MB7073DE583E56495EA51802C2935E2PH7PR11MB7073namp_--
