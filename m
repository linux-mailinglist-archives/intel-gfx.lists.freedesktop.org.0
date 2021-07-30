Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF593DB458
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 09:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C896F3F3;
	Fri, 30 Jul 2021 07:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACD06F3F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 07:16:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="213078265"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="213078265"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 00:16:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664727846"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jul 2021 00:16:20 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 30 Jul 2021 00:16:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 30 Jul 2021 00:16:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 30 Jul 2021 00:16:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfBAfm2PaXITez4o310wrbCVtZXowTlP5iIfmavC+jf7kraL/kkMBrISGwjpi5EKiapYOLeMF9SQhz7fAmjE/6/7OoOwEMamhjJdb3WU6n1KgGBAqtwPwFs5xvLOWYF7me5X63OsKJPNHH66eupehDKY4oW+5smCYpDFf3h9iHdUsqlFk8Fi6zABjGneMSqWEbVEISRrO+jJtWtrK9m4FeKmmuKsr5XWRxk8B1ydik/bblQqkZPBWCAcX+Gm5gpe4t1lDuARH68+ebTAc4ueWih6X4pBIEmeamnhJqLE3P/0ozILqlZnyNV0wxqOOL4eyyreNp2RpEsy6btc41CC9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WgwSyZGbGlGqtGV9euv9surl5pnZK/W38MiDv+sLkk=;
 b=dxKkiWXJbUSo6oMJ++yj5at9zOe6CQz0XxuM6ZZfLIObQK9Li8YWUpPsI6OWmntgE3YEmXM9N/d+8uun/jlxtzb6pLgWCTNoUclV0rSxPWJJ6o6y5Qj/icuNIiw47JabACyXxTNH67YiUabOq5kX0je4KqRmayvKT3wPugYLRzWtu8T5LKLmTGSc4OphJEqD3L5kGPiiURAmf+VCLQx6QCaMeGu0kAK+NeYbZWqu9mFYCwjtjHwhy2BpfNBTFoZZwlZWhV8zhTb+7PugYEvkiiXvLxy5+/8tJ8KCHwYTwMnwYIVkxwab5Yw47opKTsIvh/bX1Eg57Re+Kf1VPwjz/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3WgwSyZGbGlGqtGV9euv9surl5pnZK/W38MiDv+sLkk=;
 b=Ukicku+8TYS6M8URWxC7WJF0DY1pdPraANvLTJFKThGJ6Ea8Y0N3qj5zg3Di7oQTSGvvDV/f2nIwitOEXamJNLS68M/tOwpVUKjkm53pJxuOQBRqYXY56UkU14GUKlcsT27Qry8rCf60x6zWV11HtmsYwm/MmX6BZo1N8iRgBZA=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3776.namprd11.prod.outlook.com (2603:10b6:208:ee::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Fri, 30 Jul
 2021 07:16:15 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::c480:e867:a4b6:268e]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::c480:e867:a4b6:268e%7]) with mapi id 15.20.4373.025; Fri, 30 Jul 2021
 07:16:15 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 12/18] drm/i915/xehpsdv: Define MOCS table
 for XeHP SDV
Thread-Index: AQHXhJtuU7I2HRhH8UyAhmxRADk9a6taNdmAgADXf0A=
Date: Fri, 30 Jul 2021 07:16:14 +0000
Message-ID: <BL3PR11MB5746ACB01581D35806A1AA57FCEC9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-13-matthew.d.roper@intel.com>
 <20210729173115.3xplwa2436r243ik@ldmartin-desk2>
In-Reply-To: <20210729173115.3xplwa2436r243ik@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 41281d73-55c5-4d89-40cf-08d95329eb07
x-ms-traffictypediagnostic: MN2PR11MB3776:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37768B963EA4A5921AFA512DFCEC9@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rYfCJd/B11TG13h4N6yZKY6MnsBkCa3wGSIXv71XH2y8m6StX2kaxWqz9GqZbAL5Y1yhdnLy8CHXxG+NycqU53jX7p2Q6bgqTEeAbrK2Xpz7cJyQ6pZhLqdhmJWlL5NjN0dFyKwXIJUjq9NyVRNIcfdE+FPvzsSs+Cod1iCrBi9qphIuoGU4qldt1AzJVYe19wzUQqX83dmfY89LRN5NuwFqchJV2ZmORt9xjSO90ONki2ma9ZBS3RTSm/xkO5ZV6CZKbjCpYky7hwc2/+b43acIs7yysBrXklTZah279NMoM8gr8NnsCjS2VxABxzwOL0zh5OgT4gatcAlIiMf4vH4KJrX2veH1NXTZ0avNIDQoVgvSd3X7qRk0VCCkNCj9+D1p9ToK6RP8H3doxMzG+hrPJ31NMHHUDe65tFKoSYWAmhp+kphTbW8dRx4ZV95Yex9N7FsASTaPrvU2ukE6norfX+ppuNDjZLRRgPcULlOSpzbSpPvne1QHYpLYi9cBcoGIMv/QC+g1ovqKYjXfH4KBOXYBsvAhoHPlW/8iDVKCWbxjIBxF5CAKEnsIYTnAVyC6MO7KxzSL4oDFdGLDipnJsK6D4DY/lAKNMwQ9vUo3OluGieTDfZUN6x3yQSI0o4ecoGSlrcKmKQTYwx6ELDd+FdknHCGrNAc9fvEf67TCxXz8EmsVrydE6D7nkT9Ejhko7GwueXaM9VBXtu6V2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(66446008)(66946007)(38070700005)(55016002)(4326008)(316002)(66476007)(2906002)(64756008)(66556008)(26005)(110136005)(76116006)(6636002)(71200400001)(86362001)(53546011)(6506007)(83380400001)(9686003)(54906003)(33656002)(8676002)(107886003)(5660300002)(7696005)(122000001)(186003)(52536014)(478600001)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r8iFN5O/1tSuqFWyf5aH4HAGfD2BNKAHFDu6a1d8O8fGToweI98LmyskMVCB?=
 =?us-ascii?Q?jTtb5X50kBpwszRe8o9nUfsAOB6wOUA1+inzJzkIjw0GH7MUr9u8FmoAw1aN?=
 =?us-ascii?Q?ZGRXIxC2X2qqukyumZPJcnZi3Ico9LLN8DXz85ZorjxXin7gPtTo0mpbAI7U?=
 =?us-ascii?Q?0t55PI05KlkkMJ6B0AU1YUVO9jlr/UWrnnX/cwAsASdICfAB53qe2fZrhmm5?=
 =?us-ascii?Q?xqP2phTATSh2OUc7/buSLjIXSSBASX6q4pm/maDELwSW3eqzmv0eXn2/1wun?=
 =?us-ascii?Q?kX4tUBZnrxnlxJt20kL/wGMow0YTi0Hj5N4+amGSCKWDM4IoZYpk75pewmiz?=
 =?us-ascii?Q?3KjqlmGxMLl1E9+AD1epkqOM3tRM1riCJy2X9Q0EG7zJyS4w4VRVVrTdvVA6?=
 =?us-ascii?Q?L2xprOrcRpkor1yBWDwfb10ZOGS6OJ656iwSbJQujkVBryaSbjl9UBdAeImL?=
 =?us-ascii?Q?2dIhLLrty3cvphPmrPKVR9A1772VShyBxboX2aMpXrYkspogZ7va7Nra8mCe?=
 =?us-ascii?Q?BuEsaUXsMMvJfysR0URyTyK7ZGWLqy+hpsGhAkGx2HWZFxNko9Xl1/tuuWdB?=
 =?us-ascii?Q?a5c8qMuq4rLkaGHv1z7eMBAQdnFMclL3re5coSiBoBMLdp9Q9frUwIQm9l+t?=
 =?us-ascii?Q?DhJ44jZS2nsUstZuSMvdZmpgvkox3kIbivvYLe5Qs/BkT9vH2vm6bXbs8nZ9?=
 =?us-ascii?Q?XxWNKEqJjMfUQ1sV88RLk/HExPjL60h0o8hXdglxpMmtk8dpOQaHzckHTNFI?=
 =?us-ascii?Q?u8IB0yaV3KwNuO1vZ2LOOirKQKpukkleyIIhNRLjpWNMq5sp02jh5qhzA402?=
 =?us-ascii?Q?DHodaCCWGOEPsVjdd/ayoFO4BBfWp0C4S4FLcNgmqR1/HIMBZ+j46105BHtB?=
 =?us-ascii?Q?qKvLwX2tmN5iPMEmiCTMMecQMwg1aR+DfBxUZ2TWuYi4B8/6gAb7Uwf9dEJZ?=
 =?us-ascii?Q?DT4JxMTA7QXRlBQWTy6jpp6UgFllyv+LAAfXqRGozJvGqEYFbqSMicmHcIti?=
 =?us-ascii?Q?Si1PhZB+AVFQ/6eTNO5fPCBxC41aQtPps0ukUTXLhK0K5yCZLblHMYSy9nkO?=
 =?us-ascii?Q?GGG0rIS4hx1gt8lA5zcl6duODRhNUy3HYlJ3vGvpqPKD7uVMubLdWAQYUKzS?=
 =?us-ascii?Q?nfWH9ZaxtSi0SY4se4YcLZmPQ33vwmEyoDvSZO2GkKtJakm+HIyLEYu1TZgL?=
 =?us-ascii?Q?HZktQFdgnhd7xLTEVh3jT8D/Cs2PKNdbvVV6TYfQPRIIr7BdK/NfuLdkm4f/?=
 =?us-ascii?Q?3HZvdkY4lNTY2rjBgUds86E67bO3yRxmsJf4qkZn/MJNpfhTrrvs2UWXlVXr?=
 =?us-ascii?Q?OoR5jlpkNG0+k5jc+3wkk2zl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41281d73-55c5-4d89-40cf-08d95329eb07
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2021 07:16:15.0336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yu2r8ixaBFMKHPMDgTA9pQFLIdfmKyt5Vex3jzLhBEeYd7oICwqp3MmpyMAHRDK1jXNfhw9EiN5jLEvD9lH0cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 12/18] drm/i915/xehpsdv: Define MOCS
 table for XeHP SDV
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lahtinen,
 Joonas" <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Thursday, July 29, 2021 11:01 PM
> To: Roper, Matthew D <matthew.d.roper@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Siddiqui, Ayaz A
> <ayaz.siddiqui@intel.com>; Daniel Vetter <daniel.vetter@ffwll.ch>
> Subject: Re: [Intel-gfx] [PATCH v4 12/18] drm/i915/xehpsdv: Define MOCS
> table for XeHP SDV
> 
> On Thu, Jul 29, 2021 at 10:00:02AM -0700, Matt Roper wrote:
> >From: Lucas De Marchi <lucas.demarchi@intel.com>
> >
> >Like DG1, XeHP SDV doesn't have LLC/eDRAM control values due to being a
> >dgfx card. XeHP SDV adds 2 more bits: L3_GLBGO to "push the Go point to
> >memory for L3 destined transaction" and L3_LKP to "enable Lookup for
> >uncacheable accesses".
> >
> >Bspec: 45101
> >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> >Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> 
> +Ayaz,  +Daniel
> 
> I think this can't land as is since we risk forgetting additional changes that we
> will have to do. We already made the mistake once of forgetting MOCS
> changes.
> 
> There are some patches to initialize unused MOCS entries and similar that
> should have been sent already to upstream. Ayaz, what's the state of those
> patches?
There are two section of patches .
1. Programming to  CMD_CCTL for with UC this patch should sent for upstream.
I'll share the patches for CMD_CCTL programming.  
2. Programming of unused/unspecified MOCS index to WB, we observed some
regression on media use cases. So we decided to delay  upstreaming of
those patches till  MOCS programming are fixed in UMDs.
Regards
-Ayaz
 
> 
> Lucas De Marchi
> 
> >---
> > drivers/gpu/drm/i915/gt/intel_mocs.c | 33
> +++++++++++++++++++++++++++-
> > 1 file changed, 32 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> >b/drivers/gpu/drm/i915/gt/intel_mocs.c
> >index 17848807f111..0c9d0b936c20 100644
> >--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> >+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> >@@ -40,6 +40,8 @@ struct drm_i915_mocs_table {
> > #define L3_ESC(value)		((value) << 0)
> > #define L3_SCC(value)		((value) << 1)
> > #define _L3_CACHEABILITY(value)	((value) << 4)
> >+#define L3_GLBGO(value)		((value) << 6)
> >+#define L3_LKUP(value)		((value) << 7)
> >
> > /* Helper defines */
> > #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but
> configured. */
> >@@ -314,6 +316,31 @@ static const struct drm_i915_mocs_entry
> dg1_mocs_table[] = {
> > 	MOCS_ENTRY(63, 0, L3_1_UC),
> > };
> >
> >+static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
> >+	/* wa_1608975824 */
> >+	MOCS_ENTRY(0, 0, L3_3_WB | L3_LKUP(1)),
> >+
> >+	/* UC - Coherent; GO:L3 */
> >+	MOCS_ENTRY(1, 0, L3_1_UC | L3_LKUP(1)),
> >+	/* UC - Coherent; GO:Memory */
> >+	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
> >+	/* UC - Non-Coherent; GO:Memory */
> >+	MOCS_ENTRY(3, 0, L3_1_UC | L3_GLBGO(1)),
> >+	/* UC - Non-Coherent; GO:L3 */
> >+	MOCS_ENTRY(4, 0, L3_1_UC),
> >+
> >+	/* WB */
> >+	MOCS_ENTRY(5, 0, L3_3_WB | L3_LKUP(1)),
> >+
> >+	/* HW Reserved - SW program but never use. */
> >+	MOCS_ENTRY(48, 0, L3_3_WB | L3_LKUP(1)),
> >+	MOCS_ENTRY(49, 0, L3_1_UC | L3_LKUP(1)),
> >+	MOCS_ENTRY(60, 0, L3_1_UC),
> >+	MOCS_ENTRY(61, 0, L3_1_UC),
> >+	MOCS_ENTRY(62, 0, L3_1_UC),
> >+	MOCS_ENTRY(63, 0, L3_1_UC),
> >+};
> >+
> > enum {
> > 	HAS_GLOBAL_MOCS = BIT(0),
> > 	HAS_ENGINE_MOCS = BIT(1),
> >@@ -340,7 +367,11 @@ static unsigned int get_mocs_settings(const struct
> >drm_i915_private *i915,  {
> > 	unsigned int flags;
> >
> >-	if (IS_DG1(i915)) {
> >+	if (IS_XEHPSDV(i915)) {
> >+		table->size = ARRAY_SIZE(xehpsdv_mocs_table);
> >+		table->table = xehpsdv_mocs_table;
> >+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> >+	} else if (IS_DG1(i915)) {
> > 		table->size = ARRAY_SIZE(dg1_mocs_table);
> > 		table->table = dg1_mocs_table;
> > 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> >--
> >2.25.4
> >
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
