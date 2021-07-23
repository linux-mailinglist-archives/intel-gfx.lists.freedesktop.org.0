Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 752603D35E2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 10:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F7D6E93F;
	Fri, 23 Jul 2021 08:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12026E92D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 08:00:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="233670850"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="233670850"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 01:00:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="434029774"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jul 2021 01:00:32 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 23 Jul 2021 01:00:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 23 Jul 2021 01:00:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 23 Jul 2021 01:00:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cLq0Sd7IAmOL3uHt5n6GiTFwcpVeGUIs68r5l06d23rIeGVd8blDn1nRPlGI5knn6BCZ81HcRBAKqMGzUdF+Am73mgi5PQqd0K8CWdO2/ky4BeLLiyVxFRGK2B9bKWQGkDUcHgjSF/9bjC+MNthJSBEIPws9d2mjV58EjkyBOur+epO0MkqOm0KlS6KCLtnf8W2ZkE0VoJ8W/DbPnO5OsjbWl8FRPDehbE/QvTlJ81t1D7D2i3WZk+80LxGJZ5GyunyrW5tYSkC95oY96VAh4PsWiyZOYaHMqQiIDUJAxPAyy3kY3/fINNs6a0QCYGfgMVLrlx8mapgQuAV/ywQE2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TKblwBJyDP08bwLM8gB2G+44PCLA4RjheAU6ABmx3gk=;
 b=dBglQPyPQp6/k+WbuCoMevc7a9QdmRZXaerVSPzWQMwkRuYSmhz9GdlSewKtlvPP9BTUeZurR2WM62HCiyvI28HOP/2gkAbFHsh2Sk98LrWAi7kVlQjR3nOPwk4WSeGfNj14IhCSuBA3FwFVptkBGZRTk8mptvg/nzgNA20gkPF0aR3anuyHzRX2EoPmj3dOa15Ip7WWsb4cOY3q/kJGCALIk1MFbDSuDRKor+UOp14pwiROfE7T31lfUL5NRmb5ZLtvhjeBm7kIgynSiv7VFhzu11JhsQmtD1eakdWX1bRAEeAn6Zq5yvao0vjI0KM++cHes/3HmD+9AxJwJdW9jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TKblwBJyDP08bwLM8gB2G+44PCLA4RjheAU6ABmx3gk=;
 b=uDhQAj69soKxBsiuOul6Farkqx5d8qgmkwCl+wYxj3C2M2r5CNTenyoxSP1YSNY+4PAHn6bJNJWH55B3zGOiRuxESj6aemepFsNtFDyBQ6IOQRz+drzbt93S0fGWLp19jfPTEYa+kb4hAHe0Y8uxmRwK3XENkRgxo4UyoZl82l8=
Received: from DM6PR11MB4609.namprd11.prod.outlook.com (2603:10b6:5:28f::15)
 by DM6PR11MB3691.namprd11.prod.outlook.com (2603:10b6:5:146::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25; Fri, 23 Jul
 2021 08:00:30 +0000
Received: from DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::3526:7e0c:cb53:1168]) by DM6PR11MB4609.namprd11.prod.outlook.com
 ([fe80::3526:7e0c:cb53:1168%9]) with mapi id 15.20.4352.026; Fri, 23 Jul 2021
 08:00:30 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/2] drm/i915/adl_p: Add ddi buf
 translation tables for combo PHY
Thread-Index: AQHXf4UhN5kuGzLRF0CfNwOf3WjztKtQMpCA
Date: Fri, 23 Jul 2021 08:00:30 +0000
Message-ID: <95c4b19882dc2eb9ceef1cc098f8ef0a384616ba.camel@intel.com>
References: <20210723053401.1269829-3-matthew.d.roper@intel.com>
 <20210723053854.1294411-1-matthew.d.roper@intel.com>
In-Reply-To: <20210723053854.1294411-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c783ec05-e32e-4550-7b23-08d94daff0f8
x-ms-traffictypediagnostic: DM6PR11MB3691:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB36917913909DF479FA50563189E59@DM6PR11MB3691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: McIRm7TP5/vkNokjdwG9mx1qB3aY5Jz4vtlDsaH7gZguC5lGUMWPLZuufRVeWfGAR0ZN8hg+Rt+mc16qtYU3BbZ/+SveelYnZMiJ2j8A1/LT0HPeFAE+3nyUnFkLBTMiGx6/67tFqsFYsTB43zVvsUri3lFYbxxX0c7XwpDJxAT/TE6lM7Pvry61bUeevnFyHBktIqnQAOIYaZsVoCzFTDs0RGZ2QdHkWp135MxJL5Mn+LFZShnwPV2U3IfQHh0sY9xAj4cvFC20PyjWwxvO3A5kUyfDX00oMpgRAR0Y3WQD+ERNCpkre6x/mFVDu1SmfXlVKaDYAYDLo91J9VqeWmdYrEI1RUbN8Y4IUp840t4gdUfnJpT2J33x/yTN0tiLF1uQsO7nJWRrTpPJlf8e0ciwjmVOhju3v7h1GoletSCMSiy1ZXBjwt7WpShgRqBR0HFUnS1LAwI6L9xRzJA6kvckn7c7fQkHCYPZGUrs+XNk/A6h+8YRjV8i+pmXq1MO8QhIUY/WQ/fBp29gUI7P2uSBwIF8BBpZERNX3FRIu1c1tR5Ayf1dQWDOsPTrKe/fTYdF/KrxEr+Yue0qYzz5rAYa8g0BqaaOsx5LuLF3nINoIgDLXT+pg6crzwbZA/DfAaCfqD9HgGldE6LhGqQRz7XQlRYgVJlNmLJxSR/KgvmVPLdsyLCzxTY9usjd7kBt4V7c9AAP7qoOAV0sOkJxjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(83380400001)(6512007)(66476007)(66556008)(91956017)(316002)(66446008)(64756008)(66946007)(8676002)(38100700002)(2616005)(36756003)(86362001)(8936002)(71200400001)(110136005)(122000001)(186003)(76116006)(26005)(6486002)(6506007)(478600001)(5660300002)(2906002)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?l8tQxgu4w63XyXliBVx8IMnzLcUGtR8zlOrIGkNqKQBlW08ENoYlJQHk7?=
 =?iso-8859-15?Q?6XB7JL5su8Gi5Ilt0PwBBltWrNxLvUjDDCCm+BttYsthdL9TU4CYmJ6Zt?=
 =?iso-8859-15?Q?g5PPxG2qblUzUcST6nXtDVb1T9rl0MYheoDpUEysb2Zu7ghP3PtHNSyZ7?=
 =?iso-8859-15?Q?icnbbbg84CGpSwLehkvpPHlDN8LfZmCwRFpsqAlcptLdUtR6RlxF9LCCh?=
 =?iso-8859-15?Q?G3oyEMxPoR8NFTiv9WkYN7ip3ExBhilA5wo0B084wgZUF/dVTsIzP0i6J?=
 =?iso-8859-15?Q?Txf4cAF4JFruLAyvXvUuN1VOZkEGBc2IX6uhSXBNcp1sbLpJTIf66aMHp?=
 =?iso-8859-15?Q?6RwkdIRzR/wDaHQLRv7y884xaH/NrW4OhApHw6aM2bZpUQOSoKLVYPZVh?=
 =?iso-8859-15?Q?HK5pUGT1B8dF6kUYY5L5zmXV5dFR75BOu9VTtJwypmYXhDXwvo5B5W3YA?=
 =?iso-8859-15?Q?MDgKbQWhbOYWeY50PfvA35+q/hzwc/Ucfajln57FbUz9/f7hzIjbovJHM?=
 =?iso-8859-15?Q?+E8yHiPbnLBlW5KO/UydI1Ni9bQmDLP7GJr/DIx8i8RyAyPCi+HRSqCjk?=
 =?iso-8859-15?Q?ydg156dR/0yyTq27BGdscQ7o7P8gQoW1NYTVkDXWRWyk/N4QXRGl4Y9LF?=
 =?iso-8859-15?Q?0kzdJwvFnsmlC+Dnb91ZlmQq+7aJGsfMAVwXqHR5sk/mvs71k/AY9zD1w?=
 =?iso-8859-15?Q?k2DeNhsauXuBTgk9YTral2cAa14ohadIs6jrLY7bSin8DhznCOIfjHEw4?=
 =?iso-8859-15?Q?tlEqOOGIqiwWSSdro5rMBkHQPKWDnqeDMA8QTpyRknI2RVTc3MhYshmmA?=
 =?iso-8859-15?Q?/nsLJ00t7s3EOUJz/fVuu7ThEjhkhTBcvMBIvXcFrIYMsbtryEB98yUEW?=
 =?iso-8859-15?Q?BtBMCRf0Mm5pzVshUGDsrR3ChkzjnW0ESFALD3RQABHd6T3vuwQJeLAq3?=
 =?iso-8859-15?Q?SWR4AI1vSkLa0VlYXGgRZRwyhsSJBthYZh8jCyXb0HDi0Xi7N35OHJ+7Z?=
 =?iso-8859-15?Q?+pOet7Wd95j89b9o1gdIxdkNQNkyyBQM4NZRubFmtgTgMZ6dyLXsrmQTw?=
 =?iso-8859-15?Q?rw10xhUZFi46J2CD8NXfTs990MCKw340S1tsWnoix9DD45QKe74evq5nZ?=
 =?iso-8859-15?Q?La4EsRQ23arl21YkG2d7eBseRaJ08VCQSYb48+UsV/+nfuRzo4Pmdj/hE?=
 =?iso-8859-15?Q?pExfi5KNDm4br249jnGOt7rO3eREidmCSMEX2yPfgnhai21cbBZltKl8J?=
 =?iso-8859-15?Q?eJiCv3e/LYR3dsKO6E5yKyfjCCWRfPQL97Q6WMZzuUzIAGAa0KwUA5dE2?=
 =?iso-8859-15?Q?tvrLgr+aNdV2f5mqx3LQBzT6IyGNJpPGzVf+lglQjUwXYcwRQuxTpy4+d?=
 =?iso-8859-15?Q?CGVGNPypQtAnjeWgsTDDFgr/S1CKzZ4gWHJ8t8WkaWx+JqMLM2TuLjQ?=
 =?iso-8859-15?Q?=3D=3D?=
Content-ID: <E15AE6F8D7DB564088862FCBEED9A584@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c783ec05-e32e-4550-7b23-08d94daff0f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2021 08:00:30.5763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q6c90/YdXAcK9aSzCH3VtRtffPzAiJnv/ltbXdtgFEt+c8Rd7I8R951OueUyTB/YdMUF+azphDvD9glgtreGp5WlPlFoIWFNqM+pUJh0vRI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/adl_p: Add ddi buf
 translation tables for combo PHY
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the patch. HDMI, DP HBR and HBR2_HBR3 tables match the
spces.

Acked-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

On Thu, 2021-07-22 at 22:38 -0700, Matt Roper wrote:
> ADL-P now has its own set of DDI buf translation tables (except for
> eDP
> which appears to be the same as TGL).  Add the new values (last
> updated
> in bspec 2021-07-22) to the driver.
> 
> v2:
>  - Actually hook up the new tables via encoder->get_buf_trans()
> 
> Bspec: 49291
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 106
> +++++++++++++++++-
>  1 file changed, 105 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index cdd0df467287..7bf80b72733d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1057,6 +1057,64 @@ static const struct intel_ddi_buf_trans
> adls_combo_phy_ddi_translations_edp_hbr3
>  	.num_entries =
> ARRAY_SIZE(_adls_combo_phy_ddi_translations_edp_hbr3),
>  };
>  
> +static const union intel_ddi_buf_trans_entry
> _adlp_combo_phy_ddi_translations_hdmi[] = {
> +							/* NT mV Trans
> mV    db   */
> +	{ .cnl = { 0x6, 0x60, 0x3F, 0x00, 0x00 } },	/*  400    40
> 0      0.0 */
> +	{ .cnl = { 0x6, 0x68, 0x3F, 0x00, 0x00 } },	/*  500    50
> 0      0.0 */
> +	{ .cnl = { 0xA, 0x73, 0x3F, 0x00, 0x00 } },	/*  650    65
> 0      0.0 ALS */
> +	{ .cnl = { 0xA, 0x78, 0x3F, 0x00, 0x00 } },	/*  800    80
> 0      0.0 */
> +	{ .cnl = { 0xB, 0x7F, 0x3F, 0x00, 0x00 } },	/*
> 1000   1000      0.0 Re-timer */
> +	{ .cnl = { 0xB, 0x7F, 0x3B, 0x00, 0x04 } },	/*
> Full    Red     -1.5 */
> +	{ .cnl = { 0xB, 0x7F, 0x39, 0x00, 0x06 } },	/*
> Full    Red     -1.8 */
> +	{ .cnl = { 0xB, 0x7F, 0x37, 0x00, 0x08 } },	/*
> Full    Red     -2.0 CRLS */
> +	{ .cnl = { 0xB, 0x7F, 0x35, 0x00, 0x0A } },	/*
> Full    Red     -2.5 */
> +	{ .cnl = { 0xB, 0x7F, 0x33, 0x00, 0x0C } },	/*
> Full    Red     -3.0 */
> +};
> +
> +static const struct intel_ddi_buf_trans
> adlp_combo_phy_ddi_translations_hdmi = {
> +	.entries = _adlp_combo_phy_ddi_translations_hdmi,
> +	.num_entries =
> ARRAY_SIZE(_adlp_combo_phy_ddi_translations_hdmi),
> +	.hdmi_default_entry =
> ARRAY_SIZE(_adlp_combo_phy_ddi_translations_hdmi) - 1,
> +};
> +
> +static const union intel_ddi_buf_trans_entry
> _adlp_combo_phy_ddi_translations_dp_hbr[] = {
> +							/* NT mV Trans
> mV db    */
> +	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/*
> 350   350      0.0   */
> +	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/*
> 350   500      3.1   */
> +	{ .cnl = { 0xC, 0x71, 0x31, 0x00, 0x0E } },	/*
> 350   700      6.0   */
> +	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/*
> 350   900      8.2   */
> +	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/*
> 500   500      0.0   */
> +	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/*
> 500   700      2.9   */
> +	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/*
> 500   900      5.1   */
> +	{ .cnl = { 0xC, 0x73, 0x3E, 0x00, 0x01 } },	/*
> 650   700      0.6   */
> +	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/*
> 600   900      3.5   */
> +	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/*
> 900   900      0.0   */
> +};
> +
> +static const struct intel_ddi_buf_trans
> adlp_combo_phy_ddi_translations_dp_hbr = {
> +	.entries = _adlp_combo_phy_ddi_translations_dp_hbr,
> +	.num_entries =
> ARRAY_SIZE(_adlp_combo_phy_ddi_translations_dp_hbr),
> +};
> +
> +static const union intel_ddi_buf_trans_entry
> _adlp_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
> +							/* NT mV Trans
> mV db    */
> +	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/*
> 350   350      0.0   */
> +	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/*
> 350   500      3.1   */
> +	{ .cnl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/*
> 350   700      6.0   */
> +	{ .cnl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/*
> 350   900      8.2   */
> +	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/*
> 500   500      0.0   */
> +	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/*
> 500   700      2.9   */
> +	{ .cnl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/*
> 500   900      5.1   */
> +	{ .cnl = { 0xC, 0x63, 0x3F, 0x00, 0x00 } },	/*
> 650   700      0.6   */
> +	{ .cnl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/*
> 600   900      3.5   */
> +	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/*
> 900   900      0.0   */
> +};
> +
> +static const struct intel_ddi_buf_trans
> adlp_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
> +	.entries = _adlp_combo_phy_ddi_translations_dp_hbr2_hbr3,
> +	.num_entries =
> ARRAY_SIZE(_adlp_combo_phy_ddi_translations_dp_hbr2_hbr3),
> +};
> +
>  static const union intel_ddi_buf_trans_entry
> _adlp_dkl_phy_ddi_translations_dp_hbr[] = {
>  					/* VS	pre-emp	Non-trans mV	
> Pre-emph dB */
>  	{ .dkl = { 0x7, 0x0, 0x01 } },	/* 0	0	400mV		
> 0 dB */
> @@ -1661,6 +1719,52 @@ adls_get_combo_buf_trans(struct intel_encoder
> *encoder,
>  		return adls_get_combo_buf_trans_dp(encoder, crtc_state,
> n_entries);
>  }
>  
> +static const struct intel_ddi_buf_trans *
> +adlp_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> +			    const struct intel_crtc_state *crtc_state,
> +			    int *n_entries)
> +{
> +	if (crtc_state->port_clock > 270000)
> +		return
> intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr2_hbr3,
> n_entries);
> +	else
> +		return
> intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr,
> n_entries);
> +}
> +
> +static const struct intel_ddi_buf_trans *
> +adlp_get_combo_buf_trans_edp(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
> +			     int *n_entries)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	if (crtc_state->port_clock > 540000) {
> +		return
> intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
> +					   n_entries);
> +	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
> +		return
> intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
> +					   n_entries);
> +	} else if (dev_priv->vbt.edp.low_vswing) {
> +		return
> intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
> +					   n_entries);
> +	}
> +
> +	return adlp_get_combo_buf_trans_dp(encoder, crtc_state,
> n_entries);
> +}
> +
> +static const struct intel_ddi_buf_trans *
> +adlp_get_combo_buf_trans(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state,
> +			 int *n_entries)
> +{
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return
> intel_get_buf_trans(&adlp_combo_phy_ddi_translations_hdmi,
> n_entries);
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +		return adlp_get_combo_buf_trans_edp(encoder,
> crtc_state, n_entries);
> +	else
> +		return adlp_get_combo_buf_trans_dp(encoder, crtc_state,
> n_entries);
> +}
> +
>  static const struct intel_ddi_buf_trans *
>  tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state,
> @@ -1738,7 +1842,7 @@ void intel_ddi_buf_trans_init(struct
> intel_encoder *encoder)
>  
>  	if (IS_ALDERLAKE_P(i915)) {
>  		if (intel_phy_is_combo(i915, phy))
> -			encoder->get_buf_trans =
> tgl_get_combo_buf_trans;
> +			encoder->get_buf_trans =
> adlp_get_combo_buf_trans;
>  		else
>  			encoder->get_buf_trans =
> adlp_get_dkl_buf_trans;
>  	} else if (IS_ALDERLAKE_S(i915)) {
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
