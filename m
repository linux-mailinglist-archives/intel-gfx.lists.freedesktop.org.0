Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E59F39752F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 16:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3016EA6D;
	Tue,  1 Jun 2021 14:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95106EA6D;
 Tue,  1 Jun 2021 14:12:40 +0000 (UTC)
IronPort-SDR: QuXEdlTOtTU8l3ucd9hJNTk7GzkyzbwklpbDUxvQCMHQGKZTwvMX2ogec7Pe3lERqPcih3tnS6
 Um4lf7hxnK9Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="203549259"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="203549259"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 07:12:39 -0700
IronPort-SDR: tkYncYCjHBtIMX9NYIfvTikqMQPKmcZil+qQ7H6b+hrt810cnlu1HJz9WOwLaK9oEZtW/bM2uc
 LfUP7eHGEelg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="479295507"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 01 Jun 2021 07:12:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 07:12:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 1 Jun 2021 07:12:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 1 Jun 2021 07:12:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NocvocJD9VNUEx+L73V1TMc9Y/PjlxzANsYNYJzJTQHeEEh7S6x1me52SbLQmizTOi17GkhSOFeT46XTCpSzkrxXpNByvpJToCbRRzykO+t7xOqCOAfodde/FRAVKyhdQRjBWQrhxTx3+eVLLUFssHp0ObSapc85y8nSr0Wp1788d2/DMSerxKORYV3tBu1lf70G7PHk5U7fT2qJOROdLj9yXaMjXgjP0P6c2JOkefhgF1vKMmmNHeMVpx+CG/9qSqCmCa6WIjgAjdAKLGUnJcDaxcxLccV79Y7D+qG0A0NYZ04cKCsl+YMxEaYNxB1hyp4x5T2vNMCsGdpKZquy+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzQ9sAA1VKwsCx4AWyCvAQM8Ysc0bQf7/lQzMDDEY58=;
 b=bibgDHRNgW5d5lEuiyMibpyCGjitq/vT1IRLnIY5UnwShJtqDK/cylExmTvBvLp70Q4shb66YGKTzShyePBX9gpOV7ZK134xuw2EUS2HeRuey2rUIFAw7marLLeUPYAMCpUC0u26LeZtf+F1z6KkfpOdVqHWDUEhA/XIQ41/t/vSjKtiBJPFS5mq91vgbDaBemmXt4MV9ePTc4MxaDixLn2mN65ZmE4JzkVKpOBjx1CtBrIeB0PzeMlL1WQTsi9IsbFLLuR0kAhO2Re0talmg+G7deUCPm3yPrJ4wKoCBMeFlU2Wn5lVZ9WdekBXm2MqR/euo0ARlvjvMTOYGUH53A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzQ9sAA1VKwsCx4AWyCvAQM8Ysc0bQf7/lQzMDDEY58=;
 b=whg/bESP0jk1rw01n8h/QnaCHB6hbXu6oxqgPswmq5Q/8X8ZgPW25Mkom8mFIhQFsjs1mDqJ4wARK0IA3URIyDmx7taxwo3UYpJd/kprRQU9vwktnSCkZyuFVtm/CpCahiYtcbmecT0QgpnyTJK5BLdLE956dsc9sHYxPvol2ZI=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4168.namprd11.prod.outlook.com (2603:10b6:a03:181::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.24; Tue, 1 Jun
 2021 14:12:34 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4173.030; Tue, 1 Jun 2021
 14:12:34 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Fix
 coverage-vs-premult-vs-constant tests
Thread-Index: AQHXVtzvXaC1kfeq70afI9qzvwn9Sqr/KesAgAAIbmA=
Date: Tue, 1 Jun 2021 14:12:34 +0000
Message-ID: <BY5PR11MB437204DFEDF1D8226D2D1A84893E9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622547939-8157-1-git-send-email-vidya.srinivas@intel.com>
 <YLY5CH3OxmkI1/Qw@platvala-desk.ger.corp.intel.com>
In-Reply-To: <YLY5CH3OxmkI1/Qw@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.237]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6acf4aa6-ec02-4b82-595d-08d925074db6
x-ms-traffictypediagnostic: BY5PR11MB4168:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4168A09DE8D735A1BC1F3497893E9@BY5PR11MB4168.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:519;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0mQjFuclnvUM6JxI4k7ibXHyE3P00tPJcC0Z5q3ciIBsXlPesdvc7T4iqcQBr2hOPwktjhxZxDCX6kCE9qUhOKafiumcJEZj47OsV8SIr/ZC9pUfiHk9vSURqz9xbeTFTL6NabXnzDSL9jrCTMWD9F2tgSclqQoUDRfvoRWKN6651o8W2fPv/wGOvFXCT8le/qLAkhxoLqLxkAMJUDJ2+cInWgidbdxBFqcn49Po8wMzFuX0MmZBYwf70x3GyEnQzR9uSzxi0sVXx9BeS5F3BZPB692R3v11SuzINqzWsbLnUHciG4YOY5Ru+D5p40TkP2SAYOm3p389FGBbBSPCSwxcu1c8ZByb5rDlFdfk7vzYycfiOKutJIk4Q2Y6wYnbhynBcqnMMvUGDrRynSTieos0LL8IrbyUOooOvNJdKVVtUOul7LmgxF+svsNWPk3KUV7gEGrY8iktEQM2SE3H3jRyYe/f8MA8RtCHnepAzzxSgVo33ifSp7TlleUKDTWRawm6tZntCb+WCGKqZp/LnFl7/iONfDc86eQrY1IzXCsm4z0Xs9g9EqSEp3MCLhCtswRzjEZdkSuF5AKzBCTIIX6xJ3XkNrwZUhhhSZ/BVw3LzHNOPBZtQxzSvXdERn2RYfxAd3hwDnfSldFRxgTO1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(39860400002)(136003)(346002)(376002)(55016002)(26005)(66476007)(66446008)(9686003)(122000001)(8676002)(53546011)(54906003)(86362001)(52536014)(66556008)(64756008)(316002)(38100700002)(2906002)(450100002)(7696005)(71200400001)(33656002)(66946007)(8936002)(478600001)(6636002)(186003)(83380400001)(6862004)(5660300002)(76116006)(6506007)(4326008)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?8EyFRdca+ctjkV6ljgxISHDtfJfPas8TU0toqB0VzqEK6COotRUKB+O4xQTX?=
 =?us-ascii?Q?NmRGGhNPtUdnj4CKgQjDXNBr98EYe5IVhyy9wb2/a8S1UAf+5Veyw4EcwEcd?=
 =?us-ascii?Q?1VXBzJ2KI+YExy7TuTr5h3GjFDvQHX0l/eCf2Ia/nU6085p9BaUP4w+HN42B?=
 =?us-ascii?Q?FXcaPkj8IVfjWScBrEFRBPxSl0Xig7c4toybpfFhpVJrSorOyocQmty4Cr7Z?=
 =?us-ascii?Q?uc9s9NN00BiICAY+czXoZSSTEdnKK862xzkLOqw5HtCRh0SU0lmbC68tKMZy?=
 =?us-ascii?Q?JHUzWblAJbpedE4buzDLVw1Uq0XCFJ5sfSE7x/Jt36JW5Bf0fDROt1tYdjbx?=
 =?us-ascii?Q?4s2eE5rFp0rfSHiSFkioQUm687OjrBzr3XyhL2EBloh4+b4m5fHCpzbjz8Ft?=
 =?us-ascii?Q?I27dLYCoT8tIRX8qtcu+Zex5maKaShBDVXDE1UNswzaDzQWF22tkbJqsDN4u?=
 =?us-ascii?Q?foJjZgyN3wJ5pBY7SMgY8lYmb1Xrrjo5+mw+9GFO5559Z3IxHAVIOMN3b4tq?=
 =?us-ascii?Q?0gWrQiC1jpaRJ10DwkxMYXCnEIKmvb+XiaLhwqxpK5OdblMSugfGCpNF5l/J?=
 =?us-ascii?Q?5ZWFYO2qvnDyNxuywhVBd8SJAHQp6qE1RdIjCTjTujJDhA5SrTAY0s81TR6A?=
 =?us-ascii?Q?JcG6h+2+3DRJNQWz74u5r2F79PR2qXMDidjZAeJrPKTwXXYdBduduXk3/J9u?=
 =?us-ascii?Q?xe76NPSx4nW2ISyAYtb99WjND/F32MXQ1Zm1hmCVjzD+bQOLdDFqlXM4/7xz?=
 =?us-ascii?Q?axp9jv/lrueDIwAiI3uyatUOIB8dOowcj6tqSY7f2vHHGTKfGYSUC6bNsqN0?=
 =?us-ascii?Q?hRUXdpo8HwOhnD/BmBCggW31p2cIE5wRoKO8V23BhBB1cwq0qUFdzZF+hW6h?=
 =?us-ascii?Q?UdeB3CC7TfHUtkBOg30ZuIS3avf5e/o+WTf5kV+LKJTwqNpQyK/TflYRE0V6?=
 =?us-ascii?Q?ykAa4LgGGEop5Jv6YaNMSyJTQe171kbQfFidWAapGieyapZ9YSK9ly/gx1E9?=
 =?us-ascii?Q?AMMt+x0BJE/j3rDl0Hlx4ruwgSlCOijT6hgbFSNbasYVTVsUt7yr6QBA2YZ9?=
 =?us-ascii?Q?96IonbwuGGeFRHWfiXsRspm8L9Rm7yUY7tWydLc8MxRChR/iFSTdcO5orClR?=
 =?us-ascii?Q?qJtJSp/zYincK1ylnD+sTo/pzJ+mMKC5LhO9whWlsCx5Yb1F6SYyMdJXoDNy?=
 =?us-ascii?Q?t0SobJwh2E2JWmRBlF9ow3vfzhllJdJ30mcrxq6x4kJK2xYK6kdpkKi6gfc6?=
 =?us-ascii?Q?1KNqqr08PowiyQXeIwKLuAhgfSUbrLqCdx1gTCDUaKlh35Oo/9q2XEQ6vgTv?=
 =?us-ascii?Q?hVmp7xqyf+/Yhd6zcwHSOQkB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6acf4aa6-ec02-4b82-595d-08d925074db6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2021 14:12:34.7851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J9ZZ05Gqws0QwjrpCqhQFSNegFuQVL6DUwSMEJxY78S/567L0o0/lzJ5qWw0xG92SniLc56ZGDlrXy5m47Mw1Ui6llQV1AkKCKLfooITsrs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4168
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC]
 tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you so much Petri. Apologies for the incorrect commit message.
I will submit the patch with the clear commit message.

Regards
Vidya

-----Original Message-----
From: Latvala, Petri <petri.latvala@intel.com> 
Sent: Tuesday, June 1, 2021 7:11 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Subject: Re: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests

On Tue, Jun 01, 2021 at 05:15:39PM +0530, Vidya Srinivas wrote:
> tests/kms_plane_alpha_blend: Fix coverage-vs-premult-vs-constant tests
>
> Few Gen11 systems show CRC mismatch. Make 
> coverage-vs-premult-vs-constant code similar to constant_alpha_min or 
> basic_alpha
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>


Please make the first line of the commit message a statement that tells what change you're making, and in the full text block state why that's done. "Fix a-b-c tests" is useless later when browsing oneliner git logs. It doesn't even tell which problem is fixed.

Meaning, something like:


==
tests/kms_plane_alpha_blend: Don't set primary fb color in coverage-vs-premult-vs-constant

Similar change has already been done in tests xxx and yyy.
This fixes CRC mismatches seen with some Gen11 systems.

Signed-off-by etc
==


--
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
