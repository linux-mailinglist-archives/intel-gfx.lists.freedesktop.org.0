Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C770218CE77
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 14:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED5189D99;
	Fri, 20 Mar 2020 13:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2742C89D99
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 13:11:27 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02KD93nf101892;
 Fri, 20 Mar 2020 13:11:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=V7y9dX34NyeYTKkomgxyCrvmmIWhjLRON4szfLJ4V44=;
 b=PXC73QPnrPp0No611ubepEutplluWwPqH+3WbmeCyiu5/y0e2nNQqRRp9poDsJmtbnXw
 Se0MQ/n8QQTnR2HJP+8UALBOqHB9hVCe3arwGhgtdGtW0UCMp9UC6jDOa4TJCjBegrjO
 WQpSGsORgqXNRqr5HElBJWWANi35cOxE0EwQrS4MDt09vt0xg3d1MHHRr22dwSq+jlB9
 kFfFxKqnoIcYHP6jaVHWknnns1tAJvrrzmdDskFxZMKgZSMb+vlO7I1VosHTz4KKtVmz
 5BJFH+pIy3ERk+BPocpT9Rrik/j3ifOAsys4zJf9lrMfRV65QdVFkV0f19IcLuPaa1/T tg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2yrpprnn1s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Mar 2020 13:11:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02KCnupJ040970;
 Fri, 20 Mar 2020 13:11:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2ys92qfgf2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 20 Mar 2020 13:11:21 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02KDBJeC016485;
 Fri, 20 Mar 2020 13:11:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 20 Mar 2020 06:11:19 -0700
Date: Fri, 20 Mar 2020 16:11:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org,
 =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200320131112.GG4650@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318235956.118409-5-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003200056
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9565
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1011
 impostorscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003200056
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/tc/icl: Implement the TC cold
 exit sequence
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi "Jos=E9,

Thank you for the patch! Perhaps something to improve:

url:    https://github.com/0day-ci/linux/commits/Jos-Roberto-de-Souza/drm-i=
915-tc-tgl-Implement-TCCOLD-sequences/20200319-080253
base:   git://anongit.freedesktop.org/drm-intel for-linux-next

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/gpu/drm/i915/display/intel_tc.c:554 icl_tc_cold_request() error: un=
initialized symbol 'ret'.

# https://github.com/0day-ci/linux/commit/29f27e6df6ad82b09a3c9ddaf5f51b2fc=
1647178
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 29f27e6df6ad82b09a3c9ddaf5f51b2fc1647178
vim +/ret +554 drivers/gpu/drm/i915/display/intel_tc.c

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  528  static inline int i=
cl_tc_cold_request(struct intel_digital_port *dig_port,
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  529  				      bool bloc=
k)
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  530  {
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  531  	struct drm_i915_pr=
ivate *i915 =3D to_i915(dig_port->base.base.dev);
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  532  	enum intel_display=
_power_domain aux_domain;
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  533  	int ret;
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  534  =

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  535  	aux_domain =3D int=
el_aux_ch_to_power_domain(dig_port->aux_ch);
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  536  =

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  537  	if (block) {
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  538  		dig_port->tc_cold=
_wakeref =3D
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  539  			intel_display_po=
wer_get_without_ack(i915, aux_domain);
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  540  =

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  541  		do {
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  542  			ret =3D sandybri=
dge_pcode_write_timeout(i915,
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  543  							      ICL_PC=
ODE_EXIT_TCCOLD,
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  544  							      0, 250=
, 1);
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  545  =

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  546  		} while (ret =3D=
=3D -EAGAIN);

ret is only initialized on this path

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  547  	} else if (dig_por=
t->tc_mode =3D=3D TC_PORT_LEGACY) {
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  548  		drm_WARN_ON(&i915=
->drm, !dig_port->tc_lock_wakeref);
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  549  		intel_display_pow=
er_put(i915, aux_domain,
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  550  					dig_port->tc_c=
old_wakeref);
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  551  		dig_port->tc_cold=
_wakeref =3D 0;
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  552  	}
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  553  =

29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18 @554  	return ret;
29f27e6df6ad82 Jos=E9 Roberto de Souza 2020-03-18  555  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
