Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 685706F13F9
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A632C10EC8E;
	Fri, 28 Apr 2023 09:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A7D10EC8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682673645; x=1714209645;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Fcn3V+cnSVnrQWtaW9gJbA0uheUx9d9jcJaEYtycGnk=;
 b=QOhGxXjA5AJ0F/Z+2eZvkIAFapftw1xaUnanz+Ohn6isL+TEK9jFM3YA
 ORIRk8FQiXtzvh+530DuvQm9S0O80CpdvVyHFXB1trjaRR7aYJ8rwIhDQ
 upNgZtEdgYij0oXqZUylaIRIjwjMhwYHgmQiAmlvmnzqs4BjCG2bRcJA+
 rTFCki5uGZJxJy25SUI2UaGV5TteSG8MVJnaVcgOiHRWQaE77fe6ZsTcS
 ugjVbXhueUQYqkE+OMF4TPl1E19o6W/ZI6CS4WKka9v8moaZVgKhZxIvc
 0qkIg1NGEdt+TF/4QDzI7vfL5n6BRGgBJFUpA+n96jffqwmFEWYsW1vTE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="413077340"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="413077340"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="672100020"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="672100020"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:20:43 -0700
Date: Fri, 28 Apr 2023 11:20:40 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEuP6G77pd70c9sm@ashyti-mobl2.lan>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-8-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-8-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/mtl: Enabling/disabling
 sequence Thunderbolt pll
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Mika,

On Thu, Apr 20, 2023 at 03:40:44PM +0300, Mika Kahola wrote:
> Enabling and disabling sequence for Thunderbolt PLL.

if you will resend it:

/Enabling/Enable/

Andi
