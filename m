Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD71348BE7
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 09:50:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D09C6EB71;
	Thu, 25 Mar 2021 08:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5D16EB71
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 08:50:53 +0000 (UTC)
IronPort-SDR: pNh+I5I9J5Lm5k2rXu6H8JwmBuBFx1Cl+zojcY3KdUurv3kGbGII1sz8/sEPv7JlA0JyzsHjRd
 CXE0uG3HdKSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="276009653"
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="276009653"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 01:50:53 -0700
IronPort-SDR: dqiCdHD83hTWXMbunsqRLp2dNOHaM7/k3YybHVFwz6PyqiYEIROjNZyrdXXM3gq4OypRSksibM
 WMapMwOVhjcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,277,1610438400"; d="scan'208";a="436385306"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 25 Mar 2021 01:50:52 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 01:50:52 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 25 Mar 2021 01:50:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 25 Mar 2021 01:50:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 25 Mar 2021 01:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cNZpPesAof1TsF+r0mNAo2JyI3xkQN5W1KKdzdEoX2pUP/pgajZCYTXuniKK1ayPESaPWanwanElRzPVxVFMgI+vgg8n8oMhL3Rp4p48goJ4kBp9ZJ3ixUmhGW/sKzXw6/kyi4Bp6HlMttLefnPHNOiOLV/CL00ARNBTwpoh8T/iQxF6wVZ2yRiM1eVlwgO9rzbqqgRQ70ijBmN+V0CIlf37cMGe8/NBaly1/qqEu7e4A+FeU5iGgazJJ80BYAg4lyQZP20VZxIFJDQmGMkXI4Yp06nOQRILLNIu0LatlL94ElvIdgUr4+CqlB7DICNZeSR5R0qo0u/c+3vHcgJ+JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+WbVURpoaZOpGhjC+pKF6rIV2YQIvLLQZJZ/EOMjxxU=;
 b=iqr7vpvm6x4ddJz6xBEFUKiCPUzCU4bH30O0p6PgbYQSWR8PMc2mSxwZf1GCu5Mq5zm6BjnaMdEl76G/ZbbPi+4nK/kbWELsv3p7ZikX3kAYN47ldVXh+jOJzo08NWIluMi7U6wh50Q8xAmX6NeruRkL4C97/mo2Ppr+H24VvLSkMr/0iMI+wT+dcyGOCfHJFnuonFUW4tEZG7oG+9v/zLZq+g684D0upqWmvdUZyRmk3go+3lkQ9YYdvJbW0BUq9q4FnoiYlrLJnW/M5anCyulbcBPc4jgivvVm/WKHUmRkRxSaWADfEPl3OmiJy4jjI4/1hMwz7husq64QhzX6Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+WbVURpoaZOpGhjC+pKF6rIV2YQIvLLQZJZ/EOMjxxU=;
 b=ggTthhS+OcH+cXxdFoDfufjUJoYmhyhtDDaDyDapWs3zxAUSOePMDKiPyzrbjO3FDWSG/E43PizKE+0b/X1eUwzXhM+9VxSV5S8eGWAGySmebAi37Zv16NqnjgSrtMhh0v2tGEjvVTOtKSq3isEXVghQgXRdKBnnKthaQBiqEg8=
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Thu, 25 Mar
 2021 08:50:50 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c75:c69a:694d:c0c]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c75:c69a:694d:c0c%7]) with mapi id 15.20.3977.025; Thu, 25 Mar 2021
 08:50:50 +0000
From: "Gao, Fred" <fred.gao@intel.com>
To: Alex Williamson <alex.williamson@redhat.com>
Thread-Topic: [PATCH v4] vfio/pci: Add support for opregion v2.1+
Thread-Index: AQHXDyIKzzN41oXT70afi5rZWyl2VaqLzUcAgAi8NuA=
Date: Thu, 25 Mar 2021 08:50:50 +0000
Message-ID: <CO1PR11MB50267AC039932682187877AA9D629@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20210208170253.29968-1-fred.gao@intel.com>
 <20210302130220.9349-1-fred.gao@intel.com>
 <20210319132634.5af398b9@omen.home.shazbot.org>
In-Reply-To: <20210319132634.5af398b9@omen.home.shazbot.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fb66634d-9589-415d-2e3d-08d8ef6b175c
x-ms-traffictypediagnostic: CO1PR11MB4868:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB486861043A25FAAEC82F1F989D629@CO1PR11MB4868.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: se0P7Jyszyq2VmdP9AwjUr7+344Cqu7PtoRNW04Y5tJgP3Ogl7EAEElKvhFJuRk9gMsiNGXD4h7cxAVBdCVcyPLF3CDSFa4KKYLzAlSrPq6F7NtyQSFPHXo/Xh9nM1nThXC4g1VUPW8Xas1jaz6VKVVFd/4pzVjM3M3hEJdv5+1ru3LlMXgoIJxFrR/iM0xpQDY4ly+TObhL28TVK2ZRXgXfoB+ryeAP4Ed/u5Th6yt0ol5g5tU40edDABIKEI+Itxjt7rH7Xw0Ra5gUSDosWNlenQ9JnLHTsZDRbKYFCZVqe42NRR7f1wdERDnLr6MVVO4KnQz2fJdCrcm3hqWBnIMej+NKf8HHa2b5C5IDb6+YBtihBD07dYPgB3aTJKCPwjVYAHs7PDgBJgCzO03e3u+hWn3MtCEe88r72WmXkgwgtXM02pu/6tSaqo3RpUffOnQdfcl+ma0M0j7bpbFfakuyJCPchzePMWp5Qq0eb4xVzpY4WN04e++LO+Qq4MlS9AIeJBrN7jaKkLJsyTSKC6o28cfxyFuuijSaAHhHSZ00eMDA/m2ZtoHglPJKGIjdhrXt8JzjWOhy5QdEhnYHHkTsJOTQ19t2T5dUAWeFBmQ3Sa217yKE6aqao5l0oDjcjADVpXh9NFSDPSkxudP1j8X3wmkmzkks6pumQNXYnt4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(346002)(366004)(39860400002)(376002)(186003)(6916009)(26005)(76116006)(38100700001)(33656002)(9686003)(52536014)(64756008)(55016002)(66946007)(54906003)(66556008)(316002)(7696005)(66446008)(6506007)(66476007)(53546011)(4326008)(83380400001)(5660300002)(8676002)(8936002)(478600001)(86362001)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?+9srzuVW7zwyL2DAW5WhDU/6CUoHWr7zYXsgclAX9iRYWVi4Fm8z1UzoCkwU?=
 =?us-ascii?Q?MLTADm0OzlXmKfvvYYv0EKCbB0m4kso3v/bbV4RX9nZ0bPMkvVtGjkHUzM6B?=
 =?us-ascii?Q?Kf0AafGZlE68obMu7OShiHhqvGW74VTXFuQKyx3dcMm6jXQ5OKMyfbuprs4H?=
 =?us-ascii?Q?PAqEHhP/NVRh6bhIKMy6ZJo3XmTN71l+o7acHgCbrDVlMGhFO3jPcjB0vdSQ?=
 =?us-ascii?Q?wzIfZQKx5lAPtJ8uqviaH39Tgk0jS0L/ASx9y01E0XCjwCie2b87UK+Rv0Yk?=
 =?us-ascii?Q?irqMfS6bl8Q7uZ60rjkJqOpJxMTxHK5g1gMCpOxkh+zKheffs5XrcC2Ys0dO?=
 =?us-ascii?Q?yTZW2ZUTzeGzKC7541Ipsiji8iHKksec7py4nUbdSC43uhLyehwSlXLyXtM2?=
 =?us-ascii?Q?6IhHibAcg98h9fdZsrukDi9BzjRAvwyGPeLvFC8lh5GoyNUrb/DIrxERCTbh?=
 =?us-ascii?Q?imQHDTer4l0JLmMuA3jvm4XLeXhH7msQ2kVIOqemB0ONYdgS7xGyjlDrxVbO?=
 =?us-ascii?Q?TmABCGfg/ABxtPH5MpcOJrKstO0JIZ3BV6CCqa0md9SkvGT2vP27346fPmq3?=
 =?us-ascii?Q?zH5PW6zzt0WQcoiqC/GL/FFYWpuVv3BWfiRTduj8qiDfR/feEgW2MNWDSYXn?=
 =?us-ascii?Q?Q7vv3fTdZOcCE/P5azNLB9CsBheyO4vtBlAC1GSl3Jvbrff70DUyKT0KlPDL?=
 =?us-ascii?Q?zhjCHkyBKC2LIS3lfn1RYCSAAP/ru4Ezai4epHUkgCBrtHFbHjq1568zR9Ym?=
 =?us-ascii?Q?duYoOvfoAOMwEEP/6ANGiI6NihJEjhiLdqUi0C2i+4Gbqb5D99WFUi85nlmr?=
 =?us-ascii?Q?X3q5smAnzDT+4/YTVuF1+IlvikjKh2lnL47b90l3itn2ueUJQoPiNIjzv3nB?=
 =?us-ascii?Q?gRgM7BL2kIAV2rEit1B7PlHzDXNkJhQkg8sQrH5Zk9WYV3wXDWcsTqrXdWG0?=
 =?us-ascii?Q?KgQQPcUnbJRwKAZtQi6y7XRyosWm6nOCohOrG+4Nlu2z/0hJe8uYzmdcMNJh?=
 =?us-ascii?Q?r8XfAtZGO/lqGIvPKviUQ4wPiOqSHAc1PlWNtbzYjK43FbxLUzgZFm/dV6q1?=
 =?us-ascii?Q?mO1EHsYjU+YOJLifdq0fV7K8DSTYJaI9fkTHXnF4PRbVsaTGtk3QuZ2xu4Vf?=
 =?us-ascii?Q?pcsk/cSMdb4zAI7GK9K8qGGflpSgIGdNjDN+iOM06K5V6oTmHckcKDvrXe1o?=
 =?us-ascii?Q?jPgobbq3OCRAWnHqSt+rBIch7QE6AcCL5y86wTg46PdU8yyI4Q/zmEaSfYqT?=
 =?us-ascii?Q?d0EIDdfC7wwtCTsiJVFGUB6Jh7HGiVTb1o+PwKAu+C4bjkCRi3J/T7eWh0QD?=
 =?us-ascii?Q?wWq3pmjzMgaIWgqKqxQ78zFR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb66634d-9589-415d-2e3d-08d8ef6b175c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2021 08:50:50.4604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3IMMciuWa3+vnUPjedFEul/VtpKrbhzmF3XlDXQuqEapgWBLCS7yk0CXEssvL1g/j4tDqnEuEyOv03jBPI+2fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] vfio/pci: Add support for opregion v2.1+
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
Cc: "Fonn, Swee Yee" <swee.yee.fonn@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for offering your valuable advice.
Will send the updated version soon.

> -----Original Message-----
> From: Alex Williamson <alex.williamson@redhat.com>
> Sent: Saturday, March 20, 2021 3:27 AM
> To: Gao, Fred <fred.gao@intel.com>
> Cc: kvm@vger.kernel.org; intel-gfx@lists.freedesktop.org; Zhenyu Wang
> <zhenyuw@linux.intel.com>; Fonn, Swee Yee <swee.yee.fonn@intel.com>
> Subject: Re: [PATCH v4] vfio/pci: Add support for opregion v2.1+
> 
> On Tue,  2 Mar 2021 21:02:20 +0800
> Fred Gao <fred.gao@intel.com> wrote:
> 
> > Before opregion version 2.0 VBT data is stored in opregion mailbox #4,
> > However, When VBT data exceeds 6KB size and cannot be within mailbox
> > #4 starting from opregion v2.0+, Extended VBT region, next to
> > opregion, is used to hold the VBT data, so the total size will be
> > opregion size plus extended VBT region size.
> >
> > since opregion v2.0 with physical host VBT address should not be
> > practically available for end user, it is not supported.
> >
> > Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> > Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
> > Signed-off-by: Fred Gao <fred.gao@intel.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_igd.c | 49
> > +++++++++++++++++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >
> > diff --git a/drivers/vfio/pci/vfio_pci_igd.c
> > b/drivers/vfio/pci/vfio_pci_igd.c index 53d97f459252..4edb8afcdbfc
> > 100644
> > --- a/drivers/vfio/pci/vfio_pci_igd.c
> > +++ b/drivers/vfio/pci/vfio_pci_igd.c
> > @@ -21,6 +21,10 @@
> >  #define OPREGION_SIZE		(8 * 1024)
> >  #define OPREGION_PCI_ADDR	0xfc
> >
> > +#define OPREGION_RVDA		0x3ba
> > +#define OPREGION_RVDS		0x3c2
> > +#define OPREGION_VERSION	0x16
> > +
> >  static size_t vfio_pci_igd_rw(struct vfio_pci_device *vdev, char __user
> *buf,
> >  			      size_t count, loff_t *ppos, bool iswrite)  { @@ -
> 58,6 +62,7
> > @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
> >  	u32 addr, size;
> >  	void *base;
> >  	int ret;
> > +	u16 version;
> >
> >  	ret = pci_read_config_dword(vdev->pdev, OPREGION_PCI_ADDR,
> &addr);
> >  	if (ret)
> > @@ -83,6 +88,50 @@ static int vfio_pci_igd_opregion_init(struct
> > vfio_pci_device *vdev)
> >
> >  	size *= 1024; /* In KB */
> >
> > +	/*
> > +	 * Support opregion v2.1+
> > +	 * When VBT data exceeds 6KB size and cannot be within mailbox #4
> 
> s/#4/#4, then the/
> 
> > +	 * Extended VBT region, next to opregion, is used to hold the VBT
> data.
> > +	 * RVDA (Relative Address of VBT Data from Opregion Base) and
> RVDS
> > +	 * (VBT Data Size) from opregion structure member are used to hold
> the
> > +	 * address from region base and size of VBT data while RVDA/RVDS
> > +	 * are not defined before opregion 2.0.
> > +	 *
> > +	 * opregion 2.0: rvda is the physical VBT address.
> 
> Let's expand the comment to include why this is a problem to support
> (virtualization of this register would be required in userspace) and why we're
> choosing not to manipulate this into a 2.1+ table, which I think is both the
> practical lack of v2.0 tables in use and any implicit dependencies software
> may have on the OpRegion version.
> 
> > +	 *
> > +	 * opregion 2.1+: rvda is unsigned, relative offset from
> > +	 * opregion base, and should never point within opregion.
> 
> And for our purposes must exactly follow the base opregion to avoid
> exposing unknown host memory to userspace, ie. provide a more descriptive
> justification for the 2nd error condition below.
> 
> > +	 */
> > +	version = le16_to_cpu(*(__le16 *)(base + OPREGION_VERSION));
> > +	if (version >= 0x0200) {
> > +		u64 rvda;
> > +		u32 rvds;
> > +
> > +		rvda = le64_to_cpu(*(__le64 *)(base + OPREGION_RVDA));
> > +		rvds = le32_to_cpu(*(__le32 *)(base + OPREGION_RVDS));
> > +		if (rvda && rvds) {
> > +			/* no support for opregion v2.0 with physical VBT
> address */
> > +			if (version == 0x0200) {
> > +				memunmap(base);
> > +				pci_err(vdev->pdev,
> > +					"IGD passthrough does not support
> opregion\n"
> > +					"version 0x%x with physical rvda
> 0x%llx\n", version, rvda);
> 
> 
> Why do we need a new line midway through this log message?
> 
> s/passthrough/assignment/
> 
> In testing the version you include the leading zero, do you also want that
> leading zero in the printed version, ie. %04x?
> 
> If we get to this code, we already know that both rvda and rvds are non-zero,
> why is it useful to print the rvda value in this error message?  For example,
> we could print:
> 
>  "IGD assignment does not support opregion version 0x%04x with an
> extended VBT region"
> 
> > +				return -EINVAL;
> > +			}
> > +
> > +			if ((u32)rvda != size) {
> 
> What allows us to assume rvda is a 32bit value given that it's a 64bit register?
> It seems safer not to include this cast.
> 
> > +				memunmap(base);
> > +				pci_err(vdev->pdev,
> > +					"Extended VBT does not follow
> opregion !\n"
> > +					"opregion version 0x%x:rvda
> 0x%llx\n", version, rvda);
> 
> Again I'm not sure about the usefulness of printing the rvda value on its own.
> Without knowing the size value it seems meaningless.  Like above, get rid of
> the mid-error new line and random space if you keep the exclamation point.
> 
> > +				return -EINVAL;
> > +			}
> > +
> > +			/* region size for opregion v2.0+: opregion and VBT
> size */
> > +			size += rvds;
> 
> RVDS is defined as size in bytes, not in kilobytes like the base opregion size,
> right?  Let's include that clarification in the comment since the spec is private.
> Thanks,
> 
> Alex
> 
> 
> > +		}
> > +	}
> > +
> >  	if (size != OPREGION_SIZE) {
> >  		memunmap(base);
> >  		base = memremap(addr, size, MEMREMAP_WB);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
