Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAD787047D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 15:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264C311221F;
	Mon,  4 Mar 2024 14:47:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n61JJvSq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEDB211221F
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 14:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709563674; x=1741099674;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+8l/crLDeXcM6NumTfEnGA2qr6AlhpEzsAtfr4Z2nZc=;
 b=n61JJvSqr8urHqid9bXDdgQG+GmPwuPXN8JSB96LKcok0yjaZwYDufBH
 nS5aeoUnePv4xWmcaOBZZajtdzqdwMpCcz9c6v2eYCD7qrHIZpxSi6Lpz
 l8nqVkmHqO7wy9XUwAZ9Fl57oytaWvhcC1gMi9KCKjYSPbb6oS+YhdxQR
 lQx25Vs0uWNsEYFcpeR/y1g5v8v5m67diG9mKsWYov6d+ctMON7J5cn8H
 YxNi463z/JG4GSocjdwBZfGhqmph4QD0QCPerE7pl5mAvD1nuhl3tToRz
 lXttfFFF/NbFbXZCCj7PUMCx1NYtMYS419yp3tTq+gY8HbFMxRb5MwRas A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="21594992"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="21594992"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 06:47:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="40023553"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 06:47:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 06:47:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 06:47:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 06:47:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=da7fIofXClWr4nK3SD69kvM1DWQhBIvOV71F4msOMW9QyT9jNAduaWXNCyE5Mn5QaVgiBstOO2pt7dynrwAogLzJcKdFe/wP7cLmxOK+G+wcdZGZ72SjEQGdtV8+Du0BTNWsu49QJrCLJG/zdqltNaqOeZy2bx0qb0/A5rq5XlZAWyKiuHBnnO16nErYrLt6XJ0GXEMwYpa+tNjz0YpizIehBNN89fotti0Ix+yjZ3FdLTVv/cd/qJzZ0GeN4705wF7bWHdhHCEMyAVvYwd71kPSUm9+Zal6RpPbtZ2N/ZB06jaZtRrjsSEZ63hweNEkMgeBwHRBVPn+bfqwsN1NXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hFdeGGVK0YFLz3Z9xjBoqiTHj0cWQqJmyGlF76sCq4=;
 b=JfC3XH0d1sM3Xz2PF8mFIJae8cSNQ9pV64SQ3WBl1WeRQJGatmV2Yp2EyutRySgeI37RBM/nxTXd9XHPfzknrtmKK2SOGjsQZJWT9VQbR5rxNli6GjaWpoe+B+/xeJL3SU81Ctaq4t+gHIzDINb2EI1qQyKEVa0t4nSG6dFyERKtg7N1qxVXMoCfNfHAmBFOmWrWd+DEj9hIqzKkxB7LwabXHuR47mGfWbEQ+pGNUhwDDJbDDrV3VKdy8xj+Q++cHs2EcHhV+RFZTpsnVZv1gXEq1fh6B6+XC+sjW9X6YuZ1z/AgXZJkzehORNOxlp2oAkSHnxG9j59qsVy8zpxGDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7265.namprd11.prod.outlook.com (2603:10b6:930:98::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.21; Mon, 4 Mar
 2024 14:47:49 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%5]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 14:47:49 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Matthew Wilcox <willy@infradead.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: Regression on linux-next (next-20240228)
Thread-Topic: Regression on linux-next (next-20240228)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NAACv5+AAAhXahAABzNYAAAC9KTw
Date: Mon, 4 Mar 2024 14:47:49 +0000
Message-ID: <SJ1PR11MB6129E5A41D3B4FEF81C87CC7B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeVis2823T4YllDg@casper.infradead.org>
 <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeXLAAVtjEz0mB8V@casper.infradead.org>
In-Reply-To: <ZeXLAAVtjEz0mB8V@casper.infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7265:EE_
x-ms-office365-filtering-correlation-id: 7a6c89f3-36ef-4237-349d-08dc3c5a1038
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nf8DM7q+0RO/KzhTJzW4K7xMp+2ZOT9k93nVGm4igmfNm5THfsSo0eeMIKAer1879IA89KudVSx2kEBRj4SbIx/8tA93SS1mpHGDSkHil4hG+6f2CLsKsfvQtM4ljGxyZzHXhg5zSSIxNC5cJgQ4Vw/K6TWS8s5JNzHFhnZtaHCyZCLXpPwxOhfutnzpUmRsiOa5p9ofI66iub+l6uBcopdauat5GnscRZB6KXdjobeWzVsRmC1RSlfNXJWrGe8JaTBWxAhJIn5ZuvPPXI4F9ZvE70vA/WZc+lgL7z+HACVYDShXCYW8LJVu4e8zUsBoHpFRS1fYirE1uy/XX39OVQtdFI0hm0tpAOZkYbO2vUisf2o2m1z2sx+7Bs4shQach4/7Vxxc+6NMwj36Hhq3WAzqY8tTwI+x+SREX9eux1AteNyL8TkjQNCd+2aVKdo9Rl+nUTA3G2hK/lo+o2bN6iPBf1E0KvMdZmpSGyqEGs75GWT3qN3ch9oEpuqrnbZ6z0E0A4FZZhKJKJ0jjpwUvejIQjmXImXfmzq/aN0HxFReu5bJT5u2CQ1wzLrvIrW8t1RwZH07qTqCrHlhgj61Mj2Zk+t7oPzKYLVuE2barSm76YQAo8WRaE3GyH5+CuzFfp1i5XDTd6SbjyAXth5YAEnLVkxPAoGxN2aOjwY1bKKYpBC+xOoaLgu8w67lLBEd52mUAToEwnOY17pR0pImhYv7BcAi49BAHh8z5bqpDbs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UrB6VM/pDXI1DCKtfgNupcdw3j9RxYnJyf0YDxDdbzu3t+pT1kpd4TR/8oLh?=
 =?us-ascii?Q?KzKYvWjxo+nq2A23sCqipsZARVhWoHixetUzZfjjZ+e2EmJWs6lrcKb2aGde?=
 =?us-ascii?Q?T5C5smmRQvpznrGtwBzWJ3Km69B5YJexQwyw2OPVK1xLQDZtHJvi3GLnuIDg?=
 =?us-ascii?Q?NJLGKsYpoWXMz1wdkNrqycoDfekGqKVVlxHHGU5TPplH0VDK5p1u7YfS+JGw?=
 =?us-ascii?Q?JDJYMIVh8sQOuE8akYpUyNwhj6wiVH6ev/vHzElxu24Wu+YiBP/5L1j2yWJ6?=
 =?us-ascii?Q?dLbhufjOk6SPE7XxtT7VQt/vDX53bObRfk5Dmbd9N44sUaFcYdAKjXtmv6As?=
 =?us-ascii?Q?x8POGcPNVoJoem3+54sLRMqmwdPmUyn6kbLOoLj6wlPFZRy8Dj9NiNa5o56I?=
 =?us-ascii?Q?DdIko0m54iqAxt7Nvs9l7l03qG/JXJTdaR4/IB360saW5AJd6t1ZouYPD3Ph?=
 =?us-ascii?Q?kqpuPu2QgBdgghoOTG0v1uXXIRTA1TLHVRXZ0Kht2EqpEAzIYZVYuqja1h8v?=
 =?us-ascii?Q?35uzpYxKAHYLPwbiU82QZAraoQdU8gz5eBO5J819RH6s5wd/9BhZ09yW21B3?=
 =?us-ascii?Q?PAAT4veQ8+SCsY0zO4EIV7tEvg+AF7bCFiVEw3Gm19hMgi8wgvqc5+6+nvze?=
 =?us-ascii?Q?+mZ6rcEu9XX5rXCeuOMf+sska7DknEXo/Ar2RRfX49HUumqRFhsuYLNdp+rh?=
 =?us-ascii?Q?59hWLSOiSZSwS2IZKRf8PAjRpEPMVeebj26DW14uOeh9ZxSBUNbzDtVcgAAH?=
 =?us-ascii?Q?3f2B9xE/8CCjOo8Hm4SXWuuzJA4VEPf1MABcuP6McMAC8lwcj5MlVEdDtELe?=
 =?us-ascii?Q?2mBGvZdARfYOvHRcjOsn0LnebL6QxctZe7FFXGl9VWPpoCVpVAm6FoelilLd?=
 =?us-ascii?Q?bxVkyh9eYq4NxxhJLuCutOUKuhtd4tpjuMtKMxtqilbF5F7NDcQl7gWkSSbM?=
 =?us-ascii?Q?RSB/dl3LwZHTiGXXxrhVHlOMXWQoeMrHvp96765rfoBwjsQdVfniZJMLwcv5?=
 =?us-ascii?Q?rkaXV98MKrdyC6bzeLw8OaMCED2+MeSPqK+pwcmiG3VmYq7YR9SvtejFpadv?=
 =?us-ascii?Q?IYsvkSWde0s/TkuCIX3ebxEfaBdG06XmHSOVcJ0sVEP8MXHTPoE3iDDtxYKu?=
 =?us-ascii?Q?E3uro1iw0rHIRKQIAxVuU7fwwqAahaCpPwSRFjkruct2TIHIAAJBLX4W6KgW?=
 =?us-ascii?Q?giqVxBOGnIvQhhmMPrGE5yJYPtYR1OgUDS/giiCsc46adUKUzN1yycW//6kr?=
 =?us-ascii?Q?E+7hbwVd8FHz+bmBLL46etFIku7nfSNvWakb+D53NsbPerazuGdd5unsl1b1?=
 =?us-ascii?Q?5EdGltayg9DTGNJKlHq/VtIM7CDSGU8X3y/UF6/c/TfjWkXIoZC88SByrJ2n?=
 =?us-ascii?Q?NI3hO6C4Sal1AXLe+sfpO7VOmhRIUjDX62CxtKO2cOYjOooE80i1rJJcscKc?=
 =?us-ascii?Q?4UeNVll+zH2olAJqYK1X8KN5gaJAQYPjGs3X36o5QlRY5XC+TnJ2k+D+mE44?=
 =?us-ascii?Q?5iVUTI7MgUVid3qlE4Z3RZz594LORkKwJ+SfEMT2WegAkRtwPQ++Ie5rCPb0?=
 =?us-ascii?Q?J8594h0URajSTEHglJ1OAI6EnbM055Ceof8wY5zpFLKb75hbVGhIV7EFiUJz?=
 =?us-ascii?Q?vQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a6c89f3-36ef-4237-349d-08dc3c5a1038
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 14:47:49.5989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bEVBCdVgXnex/qofUryi7lMamVmxf/4Msf/gq213G7aj84unCmH24tV6ExmEBjf1wBkNovH1U+ZGzPSrfba6g7AGSEyjXwOfyBYSyRYL2Ug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7265
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

Hello Mathew,

> -----Original Message-----
> From: Matthew Wilcox <willy@infradead.org>
> Sent: Monday, March 4, 2024 6:52 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: Re: Regression on linux-next (next-20240228)
>=20
> On Mon, Mar 04, 2024 at 10:03:13AM +0000, Borah, Chaitanya Kumar
> wrote:
> > > Could you try putting the two:
> > >
> > > -                       list_del(&folio->lru);
> > >
> > > statements back in and see if that fixes it?
> >
> > That seems to fix it.
> >
> >                 if (!folio_put_testzero(folio))
> > +                       list_del(&folio->lru);
> >                         continue;
>=20
> Ummm ... did you put { and } around this?  Otherwise the indentation is
> misleading and what you're actually done is:
>=20
> 		if (!folio_put_testzero(folio))
> 			list_del(&folio->lru);
> 		continue;
>=20
> which will simply leak memory.
>=20

Oops look like a miss on our side. Let us re-do this and get back to you.

Regards

Chaitanya

> >                 if (folio_test_large(folio)) {
> >                         __folio_put_large(folio);
> > +                       list_del(&folio->lru);
> >                         continue;
> >                 }
> > Regards
> >
> > Chaitanya
