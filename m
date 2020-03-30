Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8611984B9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866B46E45C;
	Mon, 30 Mar 2020 19:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3F06E45C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 19:40:24 +0000 (UTC)
Date: Mon, 30 Mar 2020 19:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1585596629;
 bh=4iV9oi4I1D7Q9ndBDDDb9h3S04vmMJxL6gYks6NCyxI=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=VAw0LnMy5RGuM1+pN+q3kmk+PXAyWXECoWTHSukek9X+mO9x0lYcZf0oSCqtSHF6f
 5wd+h+xQ5Xy1PEScGa5yVknVP4rwNMqGVeBQChsLEjO5sfLW0Uz8cDBBg3D6MBUuma
 WuCcmdYJHkbiEHutgDhmVfpbtNfjANz/zqWLM2uY=
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <E3R30o5qjRxRLwfN8lAXK7vOlsZquoDyWBCyOM-vMFydzPZRwt7eooF86fBNKECvvLAzSsFWC-jWfu5RXyxIIAAwJmcGS3HULQvvYO8m0X4=@emersion.fr>
In-Reply-To: <20200330183857.13270-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200330183857.13270-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH v3 0/5] Introduce drm scaling filter property
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: "daniels@collabora.com" <daniels@collabora.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Monday, March 30, 2020 8:38 PM, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:

> Userspace patch series link: https://github.com/lrusak/xbmc/pull/24

This pull request is against a fork, not the official Kodi repository.
Are there any plans to upstream the change so that users can benefit
from it? Is there a reason why this pull request hasn't been opened
against the official repo?

Thanks,

Simon


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
