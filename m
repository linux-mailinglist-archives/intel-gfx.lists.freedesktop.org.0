Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F8141F00A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 16:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBAA6EDE9;
	Fri,  1 Oct 2021 14:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29FB56E528
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 14:52:59 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 191Ek0Ok016176; 
 Fri, 1 Oct 2021 14:52:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type :
 content-transfer-encoding : in-reply-to : mime-version; s=corp-2021-07-09;
 bh=NW1COMJxk5zZiG8Gli5be8GMnF2uUl0jNuwFY9JqzRQ=;
 b=a5TE4A9L0gc63kKViMRfyjzbYtdjEUreGeFCZyBi5llb/IiU1+4QnV++rryKPq8s/oXR
 md2GErr0nnr0hg7Il9d6lJXXCeF26T1QvT24qamkyAIKoyakq6ojfnmODNS5aeu+OvT+
 Cm8G2OZGQ/wStNn4yAHn+00sA1DB5o40sZwWmKjeKk8aA2co/Pfsoj+s4mke1t0AkFmg
 Kgtt2kiVVDsZgDXQ5vF+nq65AkaEvI5ZCRLaFTLgCUKY2IK0SnIg1RqtGu6z1Oj45055
 9kNyeHT0L+1t9eOWHkduc/R6O5uBr004Xfc6ONfsXMMnITFy5htNy5YQCrrOLueRkuTB hQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bdds87ufn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Oct 2021 14:52:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 191EnuN9192961;
 Fri, 1 Oct 2021 14:52:28 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
 by aserp3020.oracle.com with ESMTP id 3bceu8qy5w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Oct 2021 14:52:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UfeJ4YUxxjfYCxEBJvzqqXpXfjNjV1M7XTNpBTh1R9ClhA1bR1O6V5/3r/qjuEgt0LJ7FcrSKpw+Wc1a1taysf9yiLuFDDFAmuvWsp/KJ+PPdpRA+qyX24vgS9VQlW2p84NhPOiaFgXVWWhrFSqLv7sHF4LYyBrgUIdr3+Dy0ETHWE2W8/o9cFABWFuw4+UOPrwgKin3gJipWhATC6dbuwRQ2AatmFTwrUUQmY5GMeGCZIlFPSnjOYN9VWV/nMqvOEe0VIva3OaUYujbEiv+kM7Ij4sU1cZ3lClpdlMzvtcucm14dM+gdIeJ1QaRsrrq1QHnkZIVwzJp2JNVTzQbmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DxqJkwOl3fzSlvpKvj+8/MqWcrVSaM3oIiQ4zY0ap+M=;
 b=Tacm+dYyuEoA8NUkY5PY+jgYgXbOcgQ1MvXKwyxuVIrazgMxEgLupy+v9RV42EYirjgMnh4xWfocPtbwLjFiuuPaTkyThBAKFyTUaFrhrIaFJIV3Dr0OzSdVCvJH14uiYTVMBC2WvVfZVepd4iiUkODLTfJSCeG8i7cYkLHHR/jmbz5Oj1i7LWOEDgx1CoBaMgPBk0L568gOvBvnDHVDYp3kxrSATlinIO/pTtfywAAm0DAznq3MdBSU70vbPPNyJcEh8C5YKUfqoO3/j4xU9atA4dDSIZ5SDy+Rjh4VgkMDsuv8dXDYDhtMUiO3ONoEr/TJHAFo+RC4fjdvrpr4KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DxqJkwOl3fzSlvpKvj+8/MqWcrVSaM3oIiQ4zY0ap+M=;
 b=JwCKG0TaAm/iQ3KTFiHVSNB/NmB/6jQrPsD/Ud00aWdkdt/jYo1i/CzUovhfV6WU4w3/czR3+UEvmsLOo44uX50jBE9zMb25JP1QjwvfWqFzIauZOxDDaWrD1n+S+Kl3IkbSKMWlKnDFmvg+GkuW5Z1Ev9+9i+qlXPfXYsCi6kM=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none; linux.intel.com; dmarc=none action=none header.from=oracle.com; 
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4626.namprd10.prod.outlook.com
 (2603:10b6:303:9f::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17; Fri, 1 Oct
 2021 14:52:26 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4544.025; Fri, 1 Oct 2021
 14:52:26 +0000
Date: Fri, 1 Oct 2021 17:52:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: imre.deak@intel.com, intel-gfx@lists.freedesktop.org
Message-ID: <20211001145210.GA2083@kadam>
References: <20211001132535.GA7930@kili>
 <YVcZIYZLZaPhXvm6@intel.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YVcZIYZLZaPhXvm6@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0015.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::27)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JN2P275CA0015.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:3::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.16 via Frontend
 Transport; Fri, 1 Oct 2021 14:52:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 342f3ecc-234c-458a-3b58-08d984eb155d
X-MS-TrafficTypeDiagnostic: CO1PR10MB4626:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR10MB4626C38F23454AECCDC86E7E8EAB9@CO1PR10MB4626.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dol/KvKQQxDvHCvYzAxgS9MWYX5K2DdkFEkNoOAAwIT20gQL9ePfXLiwOkcGtil3aAJKRH/nOER9jejk1enHhw913GN9UrSygxKbjBQAC2Q8AdG3URQVakFkhH7Zb0G13kZ6SCbcvV/8ibMioKrhZSyRRIiGQapbzOkT8/Di1hNFdVnW+QZ/aG8kcnD9hqQg9QvNiANYtbduQGnjdc7vTkPJFTvzDbPfO8gnzy+gZpUYjlaqQlJRx/vQOpfrUVeDd8rPDXxYVdcT0v2/eoLBmGPkom7IJtUgBVqwcXzGMfbbGmxx9gbWaP2LKCGbSld1cfmpAcLcmwMJC7Pz5DiAuJXyZCjDo99r4T5KidkuPhP0tKqULkUtJ0U+nxEyZsQO0OEr6oPn/wEA4JalyVyoxQsaVXALukGNRfc7aN+KJIRlw5+bTTa+afiGafSCX240N5nli8hPG2PsN0evXI2XYL8LZ32Ksvt+GTfIxNKsEmvqQANI62orrklgQp4EDMC3wWIkqgpPFQ498LuVFgSKGNGsZwSkMF6PLvRJOoBF7EGpXx4T42luS1l4/IWBeRJTVW+AOYjukbJomH53GvI6Hv1KQc1Q2qjGnizJegDMphTdmm+Yvn6kZvSW3C5gkBt9uNKODSdyXwOAuajgLRB3CF0/ulzEBEfTDw03dR6ewv4Onaia99YYXUl58xkc0YNUoB7lj+I8nvuDT9wNebeQQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(316002)(38100700002)(38350700002)(8936002)(956004)(26005)(55016002)(33656002)(8676002)(33716001)(86362001)(9686003)(44832011)(6666004)(2906002)(9576002)(1076003)(52116002)(66946007)(66556008)(66476007)(6916009)(83380400001)(186003)(66574015)(508600001)(4326008)(6496006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?pn0qlbYsfRzTwABPo+eImGjLV7XUoh0rc0cGWlgY7CzTYwHlzPdjGW5CCC?=
 =?iso-8859-1?Q?Vxuq7w9i8YqaqHpcAq5muy/KIumBGzqMWa5KWruetOm8dRjdy6R01OJOgu?=
 =?iso-8859-1?Q?0Ioy6gCWi03YHNeIynl2iGybTKcHjW9Aqn8F8Ph3wXOKXbq7sb7j6IvFXH?=
 =?iso-8859-1?Q?pJypz7A+jsvTQd4luRA4iFFPMKjgB7gzVLcAnNslXvV8ntSIWFaMG4eM5u?=
 =?iso-8859-1?Q?ADumSz7OQE0BxKJ7FI49Pc+1sVATtHdeqwD3xNuKUrsHRUsOsitLM/6+OI?=
 =?iso-8859-1?Q?LPrjeBlQZ0JvUfAP7wS2WbyV0mhrKM++AIKg/cz65/1XKOBdu99rk1SY+5?=
 =?iso-8859-1?Q?Dm8jCyV18EbX/VL9+YH7y/fEdWluKfI9R5o3uMLYd2Oj0GO1mzT9DCvdE/?=
 =?iso-8859-1?Q?eP359YSOs+YKEyy9L3Zu3PUin50opbgO9rsOX6v3UG0ai/anWxp+rrFttw?=
 =?iso-8859-1?Q?mmkR9c66qKrYthyq7HbLttqPP0kjibdojsDU0A8Iu3e85iLS2ETzvNTXKg?=
 =?iso-8859-1?Q?gV15QAVCOHxy140WG01k4css7ch0fsMwUO0Q7qZ421wARE0dpwiWmP7ANH?=
 =?iso-8859-1?Q?cjklK5saon66p4HmMb1fglMmg2A8GGf5A0f6v7se7xswEsf33VM3dDYjYn?=
 =?iso-8859-1?Q?gT92v7uwuHj6Cr7lNGSBesJX0LPzxU7Ic0U3hTzQzRyznY+bNHwmDvaJdL?=
 =?iso-8859-1?Q?6eGCT9LZkweEL3OPPSZ3JsOS3btX4FQu3BgofsytXMMR9AzeZFStzmP97M?=
 =?iso-8859-1?Q?iSQ/WO3yWFTiGfOdN1TukDaLwFNDvr3VlSUU8iv4JZjav5BFj5d1TJyZeA?=
 =?iso-8859-1?Q?tZisBpSod3+oVY4yr81JbAbb2p47BJx/nGU2s5UO52T44yRr6izifP4ABn?=
 =?iso-8859-1?Q?n5Zra28TRhxzqUbSoR5bD4+mTkwQJwJlfzM/QSOidbrf1slnMSvK68Mr5V?=
 =?iso-8859-1?Q?ZufqznnzQ5N82ISOgy3ynDpm17WM7ByBqAMixmqN3oKiNf3eG4ktBnw7sD?=
 =?iso-8859-1?Q?ZPB5f18LRkZw9kRw6V8rxt1gRNYiwDup9lvQaNqajNvogeF7XV4uAeI4TE?=
 =?iso-8859-1?Q?eNKIfXJXxEEz7r973vwgBNTGGkL4o4xHPc8K3Rei4rM9YnNHxRwLGyH3Cm?=
 =?iso-8859-1?Q?5b59uqIbbDpXjRX4Ol/5Rc/NKsqlsZxiqEs5eY1RKnwsrpdPwaxsiIe3fm?=
 =?iso-8859-1?Q?LmXz31UNTvtTHGZkZzwv3wxAjeMLg0dKvpGCOy8iPSeF45PO0c5f64YvNJ?=
 =?iso-8859-1?Q?iiLAAh7X8rq84y7jtSiLVOKEX/Y0Ef7U1evQldu0KLiJFPmRtIuud7aWpP?=
 =?iso-8859-1?Q?gb5Bbnox/qPkfBI1/4PN24e98erXHUuphUa+f7w+nnIOZQvH8MN1Lnardj?=
 =?iso-8859-1?Q?OW5D9WT9nO?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 342f3ecc-234c-458a-3b58-08d984eb155d
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2021 14:52:26.2007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qyAc/JrYKFwBWyB97PbG1i7viYY5Ima7Fe0EmP2SVcZQ6+4J2Xtqp8Bv31jkqKYd6Gft9qkZsd7H+c6d5R2Yja3RjlYfWnw8BvFigpwi8FA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4626
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10124
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110010102
X-Proofpoint-GUID: t71xMC1wtf_Ccip_q-ZtAmpiV7PJ5Uh6
X-Proofpoint-ORIG-GUID: t71xMC1wtf_Ccip_q-ZtAmpiV7PJ5Uh6
Subject: Re: [Intel-gfx] [bug report] drm/i915/tc: Fix TypeC PHY
 connect/disconnect logic on ADL-P
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

On Fri, Oct 01, 2021 at 05:20:17PM +0300, Ville Syrjälä wrote:
> On Fri, Oct 01, 2021 at 04:25:35PM +0300, Dan Carpenter wrote:
> > Hello Imre Deak,
> > 
> > This is a semi-automatic email about new static checker warnings.
> > 
> > The patch 3e0abc7661c8: "drm/i915/tc: Fix TypeC PHY 
> > connect/disconnect logic on ADL-P" from Sep 29, 2021, leads to the 
> > following Smatch complaint:
> > 
> >     drivers/gpu/drm/i915/display/intel_ddi.c:4028 intel_ddi_encoder_destroy()
> >     warn: variable dereferenced before check 'dig_port' (see line 4020)
> > 
> > drivers/gpu/drm/i915/display/intel_ddi.c
> >   4019		struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> >   4020		enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> >                                                        ^^^^^^^^^^^^^^^^^^^
> > The patch adds a new unchecked dereference.
> > 
> >   4021	
> >   4022		intel_dp_encoder_flush_work(encoder);
> >   4023		if (intel_phy_is_tc(i915, phy))
> >   4024			intel_tc_port_flush_work(dig_port);
> >   4025		intel_display_power_flush_work(i915);
> >   4026	
> >   4027		drm_encoder_cleanup(encoder);
> >   4028		if (dig_port)
> >                     ^^^^^^^^
> > But the existing code checked for NULL.
> 
> That check is nonsense. Feel free to nuke it.

Thanks!  Will do.

regards,
dan carpenter

